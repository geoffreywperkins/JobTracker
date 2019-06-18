class JobApp < ApplicationRecord
	validates :company, presence: true
	validates :status, presence: true
	validates :position_name, presence: true

  belongs_to :user
end
