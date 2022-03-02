import {
  RECEIVE_ALL_STORIES,
  RECEIEVE_STORY
} from '../actions/story_actions'

const StoriesReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState = Object.assign({}, state);

  switch (action.type) {
    case RECEIVE_ALL_STORIES:
      nextState = action.stories;
      return nextState;
    case RECEIEVE_STORY:
      return nextState[action.story.id] = action.story;
    default:
      return state;
  }
}

export default StoriesReducer;