id = @story.id

json.claps do
  @story.claps.each do |clap|
    json.set! clap.id do
      json.extract! clap, :id, :clapper_id, :story_id
    end
  end
end

json.lists do
  @story.lists.each do |list|
    json.set! list.id do
      json.extract! list, :id, :user_id, :story_id
    end
  end
end

json.story do
  json.set! id do
    json.extract! @story, :id, :title, :body, :tags, :author, :author_id, :created_at, :claps, :lists
    json.photoUrl url_for(@story.photo)
  end
end

