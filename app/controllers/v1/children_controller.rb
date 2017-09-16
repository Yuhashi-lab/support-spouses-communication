class V1::ChildrenController < ApplicationController
  def create
    c = Child.create(name: params[:name],
                 birthday: params[:birthday],
                 family_id: params[:family_id])

    if Time.now < Time.now.change(hour:12)
      SendBotMessage.perform_at(Time.now.change(hour:12), c.id)
    else
      SendBotMessage.perform_at(Time.now.change(hour:12)+1.day, c.id)
    end

    render json: { success: 'created' }
  end
end
