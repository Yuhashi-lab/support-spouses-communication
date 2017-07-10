class V1::AlbumsController < ApplicationController
  include CarrierwaveBase64Uploader
  before_action :is_your_family?

  def index
    @albums = Album.where(family_id: params[:family_id])
    render json: @albums
  end

  def show
    @album = Album.find(params[:id])
    render json: @album
  end

  def create
    album = current_user.albums.create(album_params)
    album.image = base64_conversion(album_params[:image])
    if album.save
      render json: { success: ('created') }
    else
      render json: { error: ('failed') }
    end
  end

  def update
    album = Album.find(params[:id])
    album.assign_attributes(album_params)
    album.image = base64_conversion(album_params[:image])
    if album.save
      render json: { success: ('updated') }
    else
      render json: { error: ('failed') }
    end
  end

  def destroy
    album = Album.find_by_id(params[:id])
    if album.try(:destroy)
      render json: { success: ('deleted') }
    else
      render json: { error: ('failed') }
    end
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
