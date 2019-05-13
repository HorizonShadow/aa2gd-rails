module DrawerHelper
  def drawer_items
    host = if Rails.env.development?
      "http://localhost:3000"
    else
      request.host
    end
    p request
    items = [
        { text: "Login", link: "https://discordapp.com/api/oauth2/authorize?client_id=#{ENV['DISCORD_CLIENT_ID']}&redirect_uri=#{host +  "/authenticate"}&response_type=code&scope=email identify guilds connections"}
    ]
    items.map do |i|
      content_tag("a", class: "mdc-list-item") do
        content_tag("span", i[:text], class: "mdc-list-item__text")
      end
    end
  end
end

