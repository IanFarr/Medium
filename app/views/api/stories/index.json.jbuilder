@stories.each do |story|
  json.set! story.id do
    json.extract! story, :id, :title, :body, :tags, :author, :author_id, :created_at, :claps
    json.photoUrl url_for(story.photo)
  end
end