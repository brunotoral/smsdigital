module SMSDigital
  class SMS
    include ::HTTParty

    format :json

    base_uri "https://ws.smsdigital.com.br/sms/"
    debug_output $stdout

    attr_accessor :phone, :message, :response

    def initialize(phone = nil, message = nil)
      @phone = phone
      @message = message
    end

    def send
      self.class.basic_auth SMSDigital.username, SMSDigital.password

      params = {
        headers: { "Content-Type" => "application/json" },
        body: {
          Destinatarios: [phone],
          Mensagem: message,
        }.to_json,
      }

      self.response = self.class.post("/envio", params)
    end

    def sent?
      response.parsed_response['Status'] === 1 ? true : false
    end
  end
end
