class JobApp < ApplicationRecord
	validates :company, presence: true
	validates :status, presence: true

  belongs_to :user
end
