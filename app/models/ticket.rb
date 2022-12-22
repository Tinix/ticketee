# frozen_string_literal: true

class Ticket < ApplicationRecord
  has_one_attached :attachment

  # Associations
  belongs_to :project
  belongs_to :author, class_name: 'User'

  # Validations
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
end
