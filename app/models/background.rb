class Background < ActiveRecord::Base
  belongs_to :user

  validates :image_file, presence: true, uniqueness: {scope: :user_id}, length: {in: 2..255}
end
