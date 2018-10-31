class Peep < ActiveRecord::Base
  # ha ha a one up on twitter
  validates :content, presence: true, length: {maximum: 281}
  # validates_presence_of :user_id
  # belongs_to :user, foreign_key: :user_id
  # has_many :comments
end