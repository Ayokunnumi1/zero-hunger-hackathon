require "AfricasTalking"

username = 'sandbox'
apiKey 	= ENV['AFRICASTALKING_API_KEY']
@AT=AfricasTalking::Initialize.new(username, apiKey)