class V1::AlbumsController < ApplicationController
  include CarrierwaveBase64Uploader
  before_action :is_your_family?

  def index
  end

  def show
  end

  def create
    album = current_user.albums.create(album_params)
    album.image = base64_conversion(album_params[:image])
    album.save

    binding.pry
  end

  def update
  end

  def destroy
  end

  private
    def is_your_family?
      unless current_user.family_id == params[:family_id].to_i
        render json: { error: ('family_id is not your family') }, status: :unprocessable_entity
      end
    end

    def album_params
      params.permit(:image, :family_id,)
    end

end
