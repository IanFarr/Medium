import * as listApiUtil from '../util/list_api_util';

export const RECEIVE_ALL_LISTS = 'RECEIVE_ALL_LISTS';
export const RECEIVE_LIST = 'RECEIVE_LIST';
export const REMOVE_LIST = 'REMOVE_LIST';

const receiveAllLists = (lists) => {
  return {
    type: RECEIVE_ALL_LISTS,
    lists
  }
};

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

export const fetchLists = () => dispatch => {
  return listApiUtil.fetchLists()
    .then(lists => dispatch(receiveAllLists(lists)))
};

export const fetchList = listId => dispatch => {
  return listApiUtil.fetchList(listId)
    .then(list => dispatch(receiveList(list)))
};

export const createList = list => dispatch => (
  listApiUtil.createList(list)
    .then(list => dispatch(receiveList(list)))
);

export const deleteList = listId => dispatch => (
  listApiUtil.deleteList(listId)
    .then(listId => dispatch(removeList(listId)))
);