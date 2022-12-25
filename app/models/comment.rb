class Comment < ApplicationRecord
  belongs_to :ticket
  belongs_to :author, class_name: "User"

  # Validations
  validates :text, presence: true

  scope :persisted, -> { where.not(id: nil) }
  scope :ordered, -> { order(created_at: :asc) }
end
