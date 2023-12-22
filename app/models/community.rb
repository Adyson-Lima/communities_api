class Community < ApplicationRecord
  validates :name, :project, presence: true
end
