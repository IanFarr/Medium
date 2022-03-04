export const asArray = ({ stories }) => (
  Object.keys(stories).map(key => stories[key])
);

export const selectStory = ({ stories }, storyId) => {
  return stories[storyId] || [];
};

export const selectYourStories = ({ stories }, userId) => {
  let yourStories = {};
  Object.keys(stories).forEach(storyId => {
    if (stories[storyId].author_id === userId) {
      yourStories = Object.assign(yourStories, { [storyId]: stories[storyId] })
    }
  })

  return yourStories;
}