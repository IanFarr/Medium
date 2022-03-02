import { connect } from "react-redux";
import StoryShow from "./story_show";
import { selectStory } from "../../reducers/selectors";
import { fetchStories, fetchStory } from "../../actions/story_actions";

const mapStateToProps = (state, { match }) => {
  const storyId = parseInt(match.params.storyId);
  const story = selectStory(state.entities, storyId);
  return {
    story
  }
}

const mapDispatchToProps = dispatch => ({
  fetchStories: () => dispatch(fetchStories()),
  fetchStory: storyId => dispatch(fetchStory(storyId))
})

export default connect(mapStateToProps, mapDispatchToProps)(StoryShow);