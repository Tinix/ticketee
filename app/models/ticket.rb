# frozen_string_literal: true

class Ticket < ApplicationRecord
  has_many_attached :attachments

  # Associations
  has_many :comments, dependent: :destroy
  belongs_to :project
  belongs_to :author, class_name: 'User'
  belongs_to :state, optional: true
  

  # Validations
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
  
  before_create :assign_default_state

  def assign_default_state
    self.state ||= State.default
  end
end
