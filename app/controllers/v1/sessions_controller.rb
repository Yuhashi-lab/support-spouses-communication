module V1
  class SessionsController < ApplicationController
    skip_before_action :authenticate_user_from_token!

    # POST /v1/login
    def create
      if params["type"] == "hasband"
        @hasband = Hasband.find_for_database_authentication(email: params[:email])
        return invalid_email unless @hasband

        if @hasband.valid_password?(params[:password])
          sign_in :hasband, @hasband
          render json: @hasband, serializer: SessionSerializer, root: nil
        else
          invalid_password
        end
      else
        @wife = Wife.find_for_database_authentication(email: params[:email])
        return invalid_email unless @wife

        if @wife.valid_password?(params[:password])
          sign_in :wife, @wife
          render json: @wife, serializer: SessionSerializer, root: nil
        else
          invalid_password
        end
      end

    end


    private

    def invalid_email
      warden.custom_failure!
      render json: { error: ('invalid_email') }
    end

    def invalid_password
      warden.custom_failure!
      render json: { error: ('invalid_password') }
    end
  end

end
