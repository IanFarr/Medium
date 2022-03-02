export const asArray = ({ stories }) => (
  Object.keys(stories).map(key => stories[key])
);

export const selectStory = ({ stories }, storyId) => {
  return stories[storyId] || [];
};