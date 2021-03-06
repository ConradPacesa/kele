module Messages
  def get_messages(page = nil)
    @page = (page == nil ? "/" : "?page=#{page}")
    response = self.class.get("#{@api_url}/message_threads#{@page}", headers: { "authorization" => @auth_token }).to_json
    @messages_show = JSON.parse(response)
  end

  def create_message(recipient, subject, body)
    self.class.post("#{@api_url}/messages", headers: { "authorization" => @auth_token}, body: {"recipient_id" => recipient, "subject" => subject, "stripped-text" => body})
  end
end
