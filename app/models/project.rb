# frozen_string_literal: true

class Project < ApplicationRecord
  # Associations
  has_many :tickets, dependent: :delete_all
  
  # Validations
  validates :name, presence: true
end
