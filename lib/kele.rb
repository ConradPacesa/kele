require "httparty"
require "json"
require "vcr"
require "./lib/roadmap"
require "./lib/messages"
require "./lib/checkpoint"

class Kele
  include HTTParty
  include Roadmap
  include Messages
  include Checkpoint

  def initialize(email, password)
    @api_url = 'https://www.bloc.io/api/v1'
    response = self.class.post("#{@api_url}/sessions", body: {email: email, password: password})
    @auth_token =  response['auth_token']
    @enrollment_id = self.class.get("#{@api_url}/users/me", headers: { "authorization" => @auth_token })['current_enrollment']['id']
  end

  def get_me
    response = self.class.get("#{@api_url}/users/me", headers: { "authorization" => @auth_token }).to_json
    @user_data = JSON.parse(response)
  end

  def get_mentor_availability(mentor_id)
    response = self.class.get("#{@api_url}/mentors/#{mentor_id}/student_availability", headers: { "authorization" => @auth_token }).to_json
    @mentor_data = JSON.parse(response)
  end
end
