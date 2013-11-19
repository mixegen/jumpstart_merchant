class Address < ActiveRecord::Base
  belongs_to :user
  has_many :orders

  validates_presence_of :line1, :user_id, :state, :zip, :city
  validates_format_of :zip, with: /\A[0-9]{5}\Z/
  validates_format_of :state, with: /\A[A-Z]{2}\Z/

  def to_s
    [state, city, line1].compact.join(', ')
  end
end
