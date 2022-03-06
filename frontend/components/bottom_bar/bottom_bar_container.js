import { connect } from "react-redux";
import BottomBar from "./bottom_bar";
import { selectStory } from "../../reducers/selectors";
import { fetchStories, fetchStory } from "../../actions/story_actions";
import { createClap, deleteClap } from "../../actions/clap_actions"

const mapStateToProps = (state, { match }) => {
  const storyId = parseInt(match.params.storyId);
  const story = selectStory(state.entities, storyId);
  const enitities = state.entities
  return {
    story,
    numClaps: story.claps,
    enitities
  }
}

const mapDispatchToProps = dispatch => ({
  fetchStories: () => dispatch(fetchStories()),
  fetchStory: storyId => dispatch(fetchStory(storyId)),
  createClap: clap => dispatch(createClap(clap)),
  deleteClap: clapId => dispatch(deleteClap(clapId))

})

export default connect(mapStateToProps, mapDispatchToProps)(BottomBar);