id = @clap.id

json.set! id do
  json.extract! @clap, :clapper_id, :story_id
end