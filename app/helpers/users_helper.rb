module UsersHelper
  
  def gravatar_for(user, options = nil)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}.png"
    if options
      image_tag(gravatar_url, alt: user.name, class: "gravatar", height: options[:size], width: options[:size])
    else
      image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end
  end
  
end
