class V1::FamiliesController < ApplicationController
  def create
    binding.pry
    #curl -XPOST localhost:3000/v1/families -v -H "Authorization: 1:hQwBqTTyJJy471xSGAtk" -H "UserType: wife" --data "hasband_id=1"
  end
end
