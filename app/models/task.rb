class Task < ActiveRecord::Base
  PRIORITIES = %w{Low Medium High}
  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates :owner, presence: true
  validates :priority, presence: true, inclusion: PRIORITIES
  validates :deadline, presence: true

  def self.private
    where(private: true)
  end

  def self.priorities
    PRIORITIES
  end
end
