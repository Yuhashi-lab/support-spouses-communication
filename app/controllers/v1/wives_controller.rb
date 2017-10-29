module V1
  class WivesController < ApplicationController
    skip_before_action :authenticate_user_from_token!, only: [:create, :show]

    def show
      wife = Wife.find(params[:id]).attributes
      wife.delete("access_token")
      wife.delete("encrypted_password")
      wife.delete("reset_password_token")
      wife.delete("reset_password_sent_at")
      wife.delete("remember_created_at")
      wife.delete("current_sign_in_ip")
      wife.delete("last_sign_in_ip")
      wife.delete("sign_in_count")
      wife.delete("current_sign_in_at")
      wife.delete("last_sign_in_at")
      render json: wife
    end

    def create
      @wife = Wife.new wife_params
      if @wife.save
        render json: @wife, serializer: V1::SessionSerializer, root: nil
      else
        render json: @wife.errors.messages, status: :unprocessable_entity
      end
    end

    def update
      wife = Wife.find(params[:id])
      if wife.update(wife_params)
        render json: { success: ('updated') }
      else
        render json: { error: ('failed') }
      end
    end

    def search_partner
      @hasbands = Hasband.where("email like '%"+ params[:partner_email] + "%'")
      render 'search_partner', formats: 'json', handlers: 'jbuilder'
    end

    private

    def wife_params
      params.require(:wife).permit(:email, :password, :name, :birthday)
    end
  end
end
