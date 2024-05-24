class Consumer < ApplicationRecord
    geocoded_by :address
    after_validation :geocode
  
    validates :phone_number, presence: true, uniqueness: true
    validates :name, presence: true
  
    def address
      # Construct the address using phone_number as an example
      # You may need to modify this based on your requirements
      "#{phone_number}, Your City, Your Country"
    end
  end