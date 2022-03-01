import {
  RECEIVE_ALL_STORIES
} from '../actions/story_actions'

const StoriesReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState = Object.assign({}, state);

  switch (action.type) {
    case RECEIVE_ALL_STORIES:
      nextState = action.stories;
      return nextState;
    default:
      return state;
  }
}

export default StoriesReducer;