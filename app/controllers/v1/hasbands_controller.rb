module V1
  class HasbandsController < ApplicationController
    skip_before_action :authenticate_user_from_token!, only: [:create, :show]

    def show
      hasband = Hasband.find(params[:id]).attributes
      hasband.delete("access_token")
      hasband.delete("encrypted_password")
      hasband.delete("reset_password_token")
      hasband.delete("reset_password_sent_at")
      hasband.delete("remember_created_at")
      hasband.delete("current_sign_in_ip")
      hasband.delete("last_sign_in_ip")
      hasband.delete("sign_in_count")
      hasband.delete("current_sign_in_at")
      hasband.delete("last_sign_in_at")
      render json: hasband
    end

    def create
      @hasband = Hasband.new hasband_params
      if @hasband.save
        render json: @hasband, serializer: V1::SessionSerializer, root: nil
      else
        render json: { error: ('hasband_create_error') }, status: :unprocessable_entity
      end
    end

    def update
      hasband = Hasband.find(params[:hasband_id])
      if hasband.update(hasband_params)
        render json: { success: ('updated') }
      else
        render json: { error: ('failed') }
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
