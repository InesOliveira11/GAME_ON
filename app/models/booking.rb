class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :game

  def approve!
    @approved = true
  end
end
