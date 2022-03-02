id = @story.id

json.set! id do
  json.extract! @story, :id, :title, :body, :tags, :author, :author_id, :created_at
end