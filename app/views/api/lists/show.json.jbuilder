id = @list.id

json.set! id do
  json.extract! @list, :user_id, :story_id
end