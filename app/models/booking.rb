class Booking < ApplicationRecord
  belongs_to :equipment
  belongs_to :user
  STATUSES = { 'requested' => 'Booking requested to the owner',
               'accepted' => 'Booking has been accepted. Time to plan your getaway',
               'refused' => 'The booking has been rejected by the owner :(',
               'complete' => 'The booking has been archived' }

  def self.valid_statuses
    STATUSES.keys
  end

  validates :status, inclusion: { in: valid_statuses },
                     presence: true

  def extended_status
    STATUSES[status]
  end
end
