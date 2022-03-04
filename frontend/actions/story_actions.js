import * as storyApiUtil from '../util/story_api_util';

export const RECEIVE_ALL_STORIES = 'RECEIVE_ALL_STORIES';
export const RECEIEVE_STORY = 'RECEIEVE_STORY';
export const REMOVE_STORY = 'REMOVE_STORY';

const receiveAllStories = (stories) => ({
  type: RECEIVE_ALL_STORIES,
  stories
});

const receiveStory = (story) => {
  return {
    type: RECEIEVE_STORY,
    story
  }
};

const removeStory = storyId => ({
  type: REMOVE_STORY,
  storyId
});


export const fetchStories = () => dispatch => {
  return storyApiUtil.fetchStories()
    .then(stories => dispatch(receiveAllStories(stories)))
};

export const fetchStory = storyId => dispatch => {
  return storyApiUtil.fetchStory(storyId)
    .then(story => dispatch(receiveStory(story)))
};

export const createStory = story => dispatch => (
  storyApiUtil.createStory(story)
    .then(story => dispatch(receiveStory(story)))
);

export const updateStory = story => dispatch => (
  storyApiUtil.updateStory(story)
    .then(story => dispatch(receiveStory(story)))
);

export const deleteStory = storyId => dispatch => (
  storyApiUtil.deleteStory(storyId)
    .then(storyId => dispatch(removeStory(storyId)))
);