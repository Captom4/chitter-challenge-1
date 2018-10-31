class Peep < ActiveRecord::Base
  validates :title, presence: true, length: {maximum: 140}
  validates :content, presence: true
  # validates_presence_of :user_id
  # belongs_to :user, foreign_key: :user_id
  # has_many :comments
end