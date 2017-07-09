class V1::ChildrenController < ApplicationController
  def create
    Child.create(name: params[:name], birthday: params[:birthday], family_id: params[:family_id])
    render json: { success: ('created') }
  end
end
