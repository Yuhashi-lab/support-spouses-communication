module V1
  class WivesController < ApplicationController
    skip_before_action :authenticate_user_from_token!, only: [:create, :show]

    def show
      wife = Wife.find(params[:id]).to_json
      wife = JSON.parse(wife).compact!
      wife.delete("access_token")
      render json: wife
    end

    def create
      @wife = Wife.new wife_params

      if @wife.save!
        render json: @wife, serializer: V1::SessionSerializer, root: nil
      else
        render json: { error: t('wife_create_error') }, status: :unprocessable_entity
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
