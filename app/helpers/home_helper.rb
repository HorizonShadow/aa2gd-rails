module HomeHelper
  def login_button
    host = if Rails.env.development?
      "http://localhost:3000"
    else
      request.host
    end
    content_tag('a', "Login", class: "nes-btn", href: "https://discordapp.com/api/oauth2/authorize?client_id=#{ENV['DISCORD_CLIENT_ID']}&redirect_uri=#{host +  "/authenticate"}&response_type=code&scope=email identify guilds connections")
  end
end
