class Quote < ActiveRecord::Base
  validates :quip, presence: true, length: { minimum: 3 }, uniqueness: true

  scope :recent, -> (weeks_past=1) { where("created_at > ?", weeks_past.weeks.ago) }

end
