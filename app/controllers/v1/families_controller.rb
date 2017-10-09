class V1::FamiliesController < ApplicationController
  def create
    if request.headers["UserType"] == "hasband"
      hasband = Hasband.find_by(id: request.headers["Authorization"].split(':').first)
      wife    = Wife.find_by(id: params[:partner_id])
    else
      wife     = Wife.find_by(id: request.headers["Authorization"].split(':').first)
      hasband  = Hasband.find_by(id: params[:partner_id])
    end

    if wife == nil or hasband == nil
      render json: { error: ('user not exists') }, status: :unprocessable_entity
    else
      if wife.try(:family) == nil && hasband.try(:family) == nil
        family = Family.create()
        hasband.family  = family
        wife.family     = family
        hasband.save
        wife.save
        render json: { success: ('created') }
      else
        render json: { error: ('user already has family') }, status: :unprocessable_entity
      end
    end
    #
  end

  def search
    if request.headers["UserType"] == "hasband"
      family = Hasband.find_by(id: request.headers["Authorization"].split(':').first).try(:family)
    else
      family = Wife.find_by(id: request.headers["Authorization"].split(':').first).try(:family)
    end

    if family == nil
      render json: nil
    else
      render json: family
    end
  end

end
