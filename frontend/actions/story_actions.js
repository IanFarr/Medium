import * as storyApiUtil from '../util/story_api_util';

export const RECEIVE_ALL_STORIES = 'RECEIVE_ALL_STORIES';

const receiveAllStories = (stories) => ({
  type: RECEIVE_ALL_STORIES,
  stories
})


export const fetchStories = () => dispatch => {
  return storyApiUtil.fetchStories()
    .then(stories => dispatch(receiveAllStories(stories)))
}