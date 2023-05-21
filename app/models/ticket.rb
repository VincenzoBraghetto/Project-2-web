class Ticket < ApplicationRecord
    validates :description, presence: true
    validates :title, presence: true
    has_many :resolutions
    has_many :comments
    has_one :feedback
    belongs_to :requesting_user
    belongs_to :executive
end
