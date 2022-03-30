import {
  RECEIVE_LIST,
  REMOVE_LIST
} from '../actions/list_actions'
import {
  RECEIVE_STORY,
  RECEIVE_ALL_STORIES
} from '../actions/story_actions'

const savesReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState = Object.assign({}, state);

  switch (action.type) {
    case RECEIVE_STORY:
      return Object.assign({}, action.payload.lists);
    // case RECEIVE_ALL_STORIES:
    //   debugger
    //   return Object.assign({}, action.payload.lists);
    default:
      return state;
  }
}

export default savesReducer;
