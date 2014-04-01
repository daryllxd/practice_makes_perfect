class Task < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :owner, presence: true
  validates :priority, presence: true
  validates :deadline, presence: true

  def self.private
    where(private: true)
  end
end
