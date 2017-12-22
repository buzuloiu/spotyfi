module ArtistsHelper

  def gravatar(artist, size: 80 )
    gravatar_id = Digest::MD5::hexdigest(artist.name)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: artist.name, class: "gravatar")
  end

end
