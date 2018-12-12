class Event < ApplicationRecord
  belongs_to :registered_application
  validates :name, length: { minimum: 1, maximum: 100 }, presence: true
end
