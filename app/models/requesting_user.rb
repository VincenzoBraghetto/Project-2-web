class RequestingUser < ApplicationRecord
    validates :name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :telephone, presence: true
end
