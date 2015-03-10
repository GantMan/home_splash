class User < ActiveRecord::Base
  include Clearance::User
  has_one :location, dependent: :destroy
  has_many :backgrounds, dependent: :destroy
  has_many :focus_items, dependent: :destroy

  validates :name, presence: true, length: {in: 2..255}

end
