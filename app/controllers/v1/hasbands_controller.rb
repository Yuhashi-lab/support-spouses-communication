module V1
  class HasbandsController < ApplicationController
    skip_before_action :authenticate_user_from_token!, only: [:create]

    def create
      @hasband = Hasband.new hasband_params
      if @hasband.save
        render json: @hasband, serializer: V1::SessionSerializer, root: nil
      else
        render json: { error: ('hasband_create_error') }, status: :unprocessable_entity
      end
    end

    def search_partner
      @wives = Wife.where("email like '%"+ params[:partner_email] + "%'")
      render 'search_partner', formats: 'json', handlers: 'jbuilder'
    end

    private

    def hasband_params
      params.require(:hasband).permit(:email, :password, :name, :birthday)
    end
  end
end
