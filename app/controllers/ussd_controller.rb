class UssdController < ApplicationController

    skip_before_action :verify_authenticity_token
    skip_before_action :authenticate_user!

 
    def handle_ussd
      session_id = params[:sessionId]
      service_code = params[:serviceCode]
      phone_number = params[:phoneNumber]
      text = params[:text]
      
      consumers = Consumer.find_by(phone_number: phone_number)
      
      if consumers.nil?
        if text.empty?
          response = "CON Welcome to Haba na Haba Food Surplus Community. Please enter your name:"
        else
          consumers = Consumer.create(phone_number: phone_number, name: text)
          response = "CON Hi #{consumers.name}. welcome to Haba na Haba Food Surplus Community  \n1. Find Surplus Food \n2. Register Food Bank \n3. Be a Food Donor"
        end
      else
        response = case text
                   when ''
                     "CON Welcome back #{consumers.name}! \n1. Find Surplus Food \n2. Register Food Bank \n3. Be a Food Donor"
                   when '1' 
                    #FOOD BANKS BY REGION
                    food_banks = [
                      "Kampala MetroPolitan",
                      "Busoga Region",
                      "Teso Region",
                      "Bugisu Region",
                      "Mid-west Region",
                    ]
                    food_banks_list = food_banks.map.with_index { |bank, index| "#{index + 1}. #{bank}" }.join("\n")
                      "CON Here are the Food Banks near you:\n#{food_banks_list}"
                    when '1*1','1*2','1*3','1*4','1*5'
                      "CON How many people need help. \n1. 1-2 people \n2. 3-6 People \n3. 7-20 People \n4. Many(30 Approx)"
                    when '1*1*1', '1*2*2', '1*3*3', '1*4*4'
                      "CON Choose amount of food supply needed. \n1. Small \n2. Medium \n3. Large \n4. Community"
                    when '1*1*1*1'
                      "END Thank you we are reaching out to you as soon as possible."
                    when '2'
                     "CON Select bank manager \n1.Kampala \n2. Busoga"
                      ## CREATE FOODBANK
                    when '2*1'
                      "CON Enter"
                    when 
                      "CON Enter location"
                    when ''
                     "END Invalid choice"
                   end
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
