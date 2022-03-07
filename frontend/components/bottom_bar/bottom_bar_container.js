import { connect } from "react-redux";
import { withRouter } from "react-router-dom";
import BottomBar from "./bottom_bar";
import { selectStory } from "../../reducers/selectors";
import { createClap, deleteClap } from "../../actions/clap_actions"

const mapStateToProps = (state, { match }) => {
  const storyId = parseInt(match.params.storyId);
  const story = selectStory(state.entities, storyId);
  return {
    story,
    claps: story.claps,
    user: state.entities.users
  }
}

const mapDispatchToProps = dispatch => ({
  fetchStories: () => dispatch(fetchStories()),
  fetchStory: storyId => dispatch(fetchStory(storyId)),
  createClap: clap => dispatch(createClap(clap)),
  deleteClap: clapId => dispatch(deleteClap(clapId))

})

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(BottomBar));