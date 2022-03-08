import { connect } from "react-redux";
import Saves from "./saves";
import { fetchStories } from "../../actions/story_actions";
import { asArray } from "../../reducers/selectors";

const mapStateToProps = state => {
  let stories = asArray(state.entities)
  let userId = Object.keys(state.entities.users)[0]
  let saves = state.entities.users[userId].lists

  return {
    stories,
    saves,
    entitiesObject: state
  }
};

const mapDispatchToProps = dispatch => ({
  fetchStories: () => dispatch(fetchStories())
});

export default connect(mapStateToProps, mapDispatchToProps)(Saves);