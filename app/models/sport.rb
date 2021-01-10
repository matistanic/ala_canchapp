class Sport < ApplicationRecord
    has_many :places, dependent: :destroy
end
