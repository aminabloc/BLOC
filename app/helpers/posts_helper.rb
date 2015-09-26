module PostsHelper
  include ActsAsTaggableOn::TagsHelper
  def render_with_hashtags(content)
  	content_words = content.split(" ")
    content_with_links = content_words.map do |word| 
      if word.contains?("#")
        link_to hashtag.name, hashtag_path(hashtag.name)
      else
        word
      end
    end

    

    content_with_links.join(" ")
 end
end
