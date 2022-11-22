# frozen_string_literal: true

class Ticket < ApplicationRecord
  # Associations
  belongs_to :project

  # Validations
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
end
