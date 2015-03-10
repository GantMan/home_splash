class Location < ActiveRecord::Base
  belongs_to :user

  validates :zip, presence: true, length: { minimum: 5 },
end
