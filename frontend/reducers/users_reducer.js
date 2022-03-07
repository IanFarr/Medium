import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import { RECEIEVE_SAVE } from '../actions/save_actions';

const usersReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      return Object.assign({}, state, { [action.currentUser.id]: action.currentUser });
    case RECEIEVE_SAVE:
      return Object.assign({}, state, { [action.save.id]: action.story_id });
    default:
      return state;
  }
};

export default usersReducer;
