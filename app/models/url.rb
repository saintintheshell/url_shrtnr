class Url < ApplicationRecord
  validates :original_url, presence: true
  validate :validates_url

  def validates_url
    errors.add(:original_url, "cannot contain @") if original_url && original_url.include?("@")
  end

  def short_url
    "/#{id}"
  end
end
