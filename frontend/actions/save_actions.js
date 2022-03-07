import * as saveApiUtil from '../util/save_api_util';

export const RECEIEVE_SAVE = 'RECEIEVE_SAVE';
export const REMOVE_SAVE = 'REMOVE_SAVE';

const receiveSave = (save) => {
  return {
    type: RECEIEVE_SAVE,
    save
  }
};

const removeSave = saveId => ({
  type: REMOVE_SAVE,
  saveId
});

export const fetchSave = saveId => dispatch => {
  return saveApiUtil.fetchSave(saveId)
    .then(save => dispatch(receiveSave(save)))
};

export const createSave = save => dispatch => (
  saveApiUtil.createSave(save)
    .then(save => dispatch(receiveClap(save)))
);

export const deleteSave = saveId => dispatch => (
  saveApiUtil.deleteSave(saveId)
    .then(saveId => dispatch(removeSave(saveId)))
);