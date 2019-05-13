class AuthenticateController < ApplicationController
  def index
    host = if Rails.env.development?
      "http://localhost:3000"
    else
      request.host
    end
    data = {
        client_id: ENV['DISCORD_CLIENT_ID'],
        client_secret: ENV['DISCORD_CLIENT_SECRET'],
        redirect_uri: "#{host}/authenticate",
        grant_type: "authorization_code",
        scope: "email identify guilds connections",
        code: params[:code]
    }
    RestClient.post("https://discordapp.com/api/oauth2/token", data, content_type: :json)
  end
end
