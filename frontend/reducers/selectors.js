export const asArray = ({ stories }) => (
  Object.keys(stories).map(key => stories[key])
);