class Album < ApplicationRecord

  mount_uploader :image, AlbumImageUploader

  belongs_to :user, :polymorphic => true
  belongs_to :family
end
