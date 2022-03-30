import { connect } from "react-redux";
import Alert from "./alert";
import { selectYourStories, asArray } from "../../reducers/selectors";
import { fetchStories, deleteStory } from "../../actions/story_actions";

const mapStateToProps = state => {
  const userId = state.entities.users[Object.keys(state.entities.users)[0]].id;
  const stories = selectYourStories(state.entities, userId);
  return {
    stories
  }
}

const mapDispatchToProps = dispatch => ({
  fetchStories: () => dispatch(fetchStories()),
  deleteStory: (storyId) => dispatch(deleteStory(storyId))
})

export default connect(mapStateToProps, mapDispatchToProps)(Alert);