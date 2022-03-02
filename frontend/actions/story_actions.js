import * as storyApiUtil from '../util/story_api_util';

export const RECEIVE_ALL_STORIES = 'RECEIVE_ALL_STORIES';
export const RECEIEVE_STORY = 'RECEIEVE_STORY'

const receiveAllStories = (stories) => ({
  type: RECEIVE_ALL_STORIES,
  stories
})

const receiveStory = (story) => {
  return {
  type: RECEIEVE_STORY,
  story}
}


export const fetchStories = () => dispatch => {
  return storyApiUtil.fetchStories()
    .then(stories => dispatch(receiveAllStories(stories)))
}

export const fetchStory = storyId => dispatch => {
  return storyApiUtil.fetchStory(storyId)
    .then(story => dispatch(receiveStory(story)))
}