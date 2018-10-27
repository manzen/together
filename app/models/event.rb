class Event < ApplicationRecord
  has_many :event_users, dependent: :destroy
  has_many :users, through: :event_users
  has_many :images, as: :imageable
  accepts_nested_attributes_for :event_users
end
