export const fetchStories = () => (
  $.ajax({
    method: 'GET',
    url: 'api/stories'
  })
);

export const fetchStory = storyId => (
  $.ajax({
    method: 'GET',
    url: `api/stories/${storyId}`
  })
)

export const createStory = story => (
  $.ajax({
    method: 'POST',
    url: 'api/stories',
    data: story,
    contentType: false,
    processData: false
  })
)

export const updateStory = story => {
  return $.ajax({
    method: 'PATCH',
    url: `api/stories/${story.id}`,
    data: { story }
  })
}

export const deleteStory = storyId => (
  $.ajax({
    url: `/api/stories/${storyId}/`,
    method: 'DELETE'
  })
)