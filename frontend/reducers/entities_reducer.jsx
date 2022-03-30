import { combineReducers } from 'redux';

import users from './users_reducer';
import stories from './stories_reducer';
import claps from './claps_reducer'
import saves from './saves_reducer';

export default combineReducers({
  users,
  stories,
  claps,
  saves
});