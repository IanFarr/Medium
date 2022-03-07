import * as clapApiUtil from '../util/clap_api_util';

export const RECEIVE_CLAP = 'RECEIVE_CLAP';
export const REMOVE_CLAP = 'REMOVE_CLAP';

const receiveClap = (clap) => {
  return {
    type: RECEIVE_CLAP,
    clap
  }
};

const removeClap = clapId => ({
  type: REMOVE_CLAP,
  clapId
});

export const fetchClap = clapId => dispatch => {
  return clapApiUtil.fetchClap(clapId)
    .then(clap => dispatch(receiveClap(clap)))
};

export const createClap = clap => dispatch => (
  clapApiUtil.createClap(clap)
    .then(clap => dispatch(receiveClap(clap)))
);

export const deleteClap = clapId => dispatch => (
  clapApiUtil.deleteClap(clapId)
    .then(clapId => dispatch(removeClap(clapId)))
);