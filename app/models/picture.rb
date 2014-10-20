class Picture < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :category
  belongs_to :author
  validates_presence_of :name, :category_id, :author, :photo
end
