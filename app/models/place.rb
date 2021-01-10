class Place < ApplicationRecord
    belongs_to :sport
    has_many :schedules, dependent: :destroy
end
