class Video < ActiveRecord::Base
  validates_presence_of :title, :source
end
