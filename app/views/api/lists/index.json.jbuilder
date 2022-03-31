@lists.each do |list|
  json.set! list.id do
    json.extract! list, :user_id, :story_id
  end
end