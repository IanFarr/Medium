import {
  RECEIEVE_CLAP,
  REMOVE_CLAP
} from '../actions/clap_actions'

const clapsReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState = Object.assign({}, state);

  switch (action.type) {
    case RECEIEVE_CLAP:
      return nextState[action.clap.id] = action.clap;
    case REMOVE_CLAP:
      delete nextState[action.clapId];
      return nextState;
    default:
      return state;
  }
}

export default clapsReducer;