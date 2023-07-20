class Publisher < ApplicationRecord
    has_many :publisher

    validates :first_name, :last_name, :country, :city, :address, :dob, :age, , presence: true
end
