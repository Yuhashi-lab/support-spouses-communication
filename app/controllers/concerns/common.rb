
module Common
  extend ActiveSupport::Concern
  
  def current_user
    if request.headers["UserType"] == "hasband"
      user = Hasband.find_by(id: request.headers["Authorization"].split(':').first)
    else
      user = Wife.find_by(id: request.headers["Authorization"].split(':').first)
    end
    return user
  end
end
