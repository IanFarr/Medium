import * as listApiUtil from '../util/list_api_util';

export const RECEIVE_LIST = 'RECEIVE_LIST';
export const REMOVE_LIST = 'REMOVE_LIST';

const receiveList = (list) => {
  return {
    type: RECEIVE_LIST,
    list
  }
};

const removeList = listId => ({
  type: REMOVE_LIST,
  listId
});

export const createList = list => dispatch => (
  listApiUtil.createList(list)
    .then(list => dispatch(receiveList(list)))
);

export const deleteList = listId => dispatch => (
  listApiUtil.deleteList(listId)
    .then(listId => dispatch(removeList(listId)))
);