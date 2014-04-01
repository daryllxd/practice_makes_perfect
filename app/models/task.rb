class Task < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validates :owner, presence: true
  validates :priority, presence: true
  validates :deadline, presence: true

  def self.private
    where(private: true)
  end
end
