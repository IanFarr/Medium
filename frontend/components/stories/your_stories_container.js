import { connect } from "react-redux";
import { withRouter } from "react-router-dom";
import YourStories from "./your_stories";
import { selectYourStories } from "../../reducers/selectors";
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

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(YourStories));