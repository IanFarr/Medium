import { connect } from "react-redux";
import { withRouter } from "react-router-dom";
import StoryShow from "./story_show";
import { selectStory } from "../../reducers/selectors";
import { fetchStories, fetchStory } from "../../actions/story_actions";
import { createClap, deleteClap } from "../../actions/clap_actions"

const mapStateToProps = (state, { match }) => {
  const storyId = parseInt(match.params.storyId);
  const story = selectStory(state.entities, storyId);
  return {
    story,
    claps: Object.values(state.entities.claps),
    users: state.entities.users
  }
}

const mapDispatchToProps = dispatch => ({
  fetchStories: () => dispatch(fetchStories()),
  fetchStory: storyId => dispatch(fetchStory(storyId)),
  createClap: clap => dispatch(createClap(clap)),
  deleteClap: clapId => dispatch(deleteClap(clapId))

})

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(StoryShow));