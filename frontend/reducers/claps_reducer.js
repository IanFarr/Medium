import {
  RECEIVE_CLAP,
  REMOVE_CLAP
} from '../actions/clap_actions'
import {
  RECEIVE_STORY
} from '../actions/story_actions'

const clapsReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState = Object.assign({}, state);

  switch (action.type) {
    case RECEIVE_CLAP:
      return Object.assign({}, nextState, { [Object.keys(action.clap)[0]]: action.clap })
    case REMOVE_CLAP:
      delete nextState[Object.keys(action.clapId)[0]];
      return nextState;
    case RECEIVE_STORY:
      return action.payload.claps
    default:
      return state;
  }
}

export default clapsReducer;