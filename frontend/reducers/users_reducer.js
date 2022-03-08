import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import {
  RECEIVE_LIST,
  REMOVE_LIST
} from '../actions/list_actions';

const usersReducer = (state = {}, action) => {
  Object.freeze(state);
  let nextState = Object.assign({}, state);

  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      return Object.assign({}, state, { [action.currentUser.id]: action.currentUser });
    case RECEIVE_LIST:
      nextState[(Object.keys(nextState)[0])].lists.push(action.list);
      return nextState;
    case REMOVE_LIST:
      const listId = Number(Object.keys(action.listId)[0]);
      const nextStateId = Number(Object.keys(nextState)[0]);
      nextState[nextStateId].lists.forEach(stateListId => {
        if (stateListId === listId) {
          delete nextState[nextStateId].lists[stateListId];
        }
      })
      return nextState;
    default:
      return state;
  }
};

export default usersReducer;
