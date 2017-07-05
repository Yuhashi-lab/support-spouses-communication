module V1
  class WivesController < ApplicationController
    skip_before_action :authenticate_user_from_token!, only: [:create]

    def create
      @wife = Wife.new wife_params

      if @wife.save!
        render json: @wife, serializer: V1::SessionSerializer, root: nil
      else
        render json: { error: t('wife_create_error') }, status: :unprocessable_entity
      end
    end

    private

    def wife_params
      params.require(:wife).permit(:email, :password)
    end
  end
end
