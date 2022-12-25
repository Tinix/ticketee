# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  scope :active, -> { where(archived_at: nil) }

  def to_s
    "#{email} (#{admin? ? 'Admin' : 'User'})"
  end

  def archive!
    update(archived_at: Time.now)
  end

  def active_for_authentication?
    super && archived_at.nil?
  end
end
