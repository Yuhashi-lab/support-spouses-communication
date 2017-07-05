module V1
  class HasbandsController < ApplicationController
    skip_before_action :authenticate_user_from_token!, only: [:create]

    def create
      @hasband = Hasband.new hasband_params

      if @hasband.save!
        render json: @hasband, serializer: V1::SessionSerializer, root: nil
      else
        render json: { error: t('hasband_create_error') }, status: :unprocessable_entity
      end
    end

    private

    def hasband_params
      params.require(:hasband).permit(:email, :password)
    end
  end
end
