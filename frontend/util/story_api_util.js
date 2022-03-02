export const fetchStories = () => (
  $.ajax({
    method: 'GET',
    url: 'api/stories'
  })
);

export const fetchStory = (storyId) => (
  $.ajax({
    method: 'GET',
    url: `api/stories/${storyId}`
  })
)