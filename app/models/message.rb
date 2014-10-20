class Message < ActiveRecord::Base
  validates_presence_of :name, :email, :content
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: {with: VALID_EMAIL_REGEX}
  validates_numericality_of :phone
end
