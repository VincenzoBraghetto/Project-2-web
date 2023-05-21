class Executive < ApplicationRecord
    validates :name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :telephone, presence: true
    has_many :resolutions
    has_many :comments
    has_many :feedbacks
end
