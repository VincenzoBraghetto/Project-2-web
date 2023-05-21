class Feedback < ApplicationRecord
    belongs_to :ticket
    belongs_to :executive
    belongs_to :requesting_user
end
