import { connect } from "react-redux";
import Saves from "./saves";
import { fetchStories } from "../../actions/story_actions";
import { asArray } from "../../reducers/selectors";
import { receiveCurrentUser } from "../../actions/session_actions";
import { fetchLists } from "../../actions/list_actions";

const mapStateToProps = state => {
  let stories = asArray(state.entities)
  let userId = Object.keys(state.entities.users)[0]
  let saves = state.entities.users[userId].lists
  let user = state.entities.users[Object.keys(state.entities.users)]
  let allSaves = state.entities.saves

  return {
    stories,
    saves,
    entitiesObject: state,
    user,
    allSaves
  }
};

const mapDispatchToProps = dispatch => ({
  fetchStories: () => dispatch(fetchStories()),
  receiveCurrentUser: currentUser => dispatch(receiveCurrentUser(currentUser)),
  fetchLists: () => dispatch(fetchLists())
});

export default connect(mapStateToProps, mapDispatchToProps)(Saves);