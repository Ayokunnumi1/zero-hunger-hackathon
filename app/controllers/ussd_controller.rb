class UssdController < ApplicationController
  skip_before_action :verify_authenticity_token

  def handle_ussd
    params[:sessionId]
    params[:serviceCode]
    phone_number = params[:phoneNumber]
    text = params[:text]

    consumers = Consumer.find_by(phone_number:)

    if consumers.nil?
      if text.empty?
        response = 'CON Welcome to Haba na Haba Food Surplus Community. Please enter your name:'
      else
        consumers = Consumer.create(phone_number:, name: text)
        response = "CON Hi #{consumers.name}, located at #{consumer.latitude}, #{consumer.longitude}. welcome to Haba na Haba Food Surplus Community  \n1. Register Food Bank \n2. Find Food Surplus \n3. Be a Food Donor"
      end
    else
      response = case text
                 when ''
                   "CON Welcome back #{consumers.name}! \n1. Find Surplus Food \n2. Register Food Bank \n3. Be a Food Donor"
                 when '1'
                   # Geolocation logic to find nearby food banks
                   "CON Here are the Food Banks near you: \n1. Kampala \n2. Teso"
                 when '2'
                   "END Your phone number is #{phone_number}"
                 else
                   'END Invalid choice'
                 end
    end

    render plain: response
  end
end
