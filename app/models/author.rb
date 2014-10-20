class Author < ActiveRecord::Base
  has_many :picture
  validates :name, presence: true, uniqueness: true
end
