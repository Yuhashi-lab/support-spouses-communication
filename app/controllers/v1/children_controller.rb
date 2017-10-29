class V1::ChildrenController < ApplicationController
  def create
    child = Child.new(name: params[:name],
                 birthday: params[:birthday],
                 family_id: params[:family_id])

    if child.save
      if Time.now < Time.now.change(hour:12)
        SendBotMessage.perform_at(Time.now.change(hour:12), child.id)
      else
        SendBotMessage.perform_at(Time.now.change(hour:12)+1.day, child.id)
      end

      if Time.now < Time.now.change(hour:18)
        SendMessage.perform_at(Time.now.change(hour:18), child.id)
      else
        SendMessage.perform_at(Time.now.change(hour:18)+1.day, child.id)
      end
      render json: { success: 'created' }
    else
      render json: child.errors.messages, status: :unprocessable_entity
    end


  end
end
