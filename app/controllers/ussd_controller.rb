class UssdController < ApplicationController
  skip_before_action :verify_authenticity_token

  def ussd
    session = JoyUssdEngine::Session.new(params)
    response = handle_ussd(session)
    render plain: response
  end

  private

  def handle_ussd(session)
    steps = session.input.split('*')

    case steps.length
    when 1
      session.prompt("Please enter your name:")
    when 2
      name = steps[1]
      Consumer.create(name: name, phone_number: session.phone_number)
      session.end("Thank you #{name}, you have been registered successfully.")
    else
      session.end("Invalid input. Please try again.")
    end
  end
end
