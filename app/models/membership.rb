class Membership < ApplicationRecord
  belongs_to :client
  belongs_to :gym
  validates :gym_id, presence: true
  validates :client_id, presence: true
  validates :charge, presence: true, numericality: {greater_than: 0, less_than: 9999}
end
