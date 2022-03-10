import {
  RECEIVE_ALL_STORIES,
  RECEIVE_STORY,
  REMOVE_STORY
} from '../actions/story_actions'
import { RECEIVE_CLAP } from '../actions/clap_actions'

const StoriesReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState = Object.assign({}, state);

  switch (action.type) {
    case RECEIVE_ALL_STORIES:
      nextState = action.stories;
      return nextState;
    case RECEIVE_STORY:
      return nextState[action.payload.story.id] = action.payload.story;
    case REMOVE_STORY:
      delete nextState[action.storyId];
      return nextState;
    case RECEIVE_CLAP:
      const newClaps = { id: Number(Object.keys(action.clap)[0]) }
      nextState[(Object.keys(nextState)[0])].claps.push(newClaps);
      return nextState;
    default:
      return state;
  }
}

export default StoriesReducer;