import { connect } from "react-redux";
import { withRouter } from "react-router-dom";
import BottomBar from "./bottom_bar";
import { selectStory } from "../../reducers/selectors";
import { createClap, deleteClap } from "../../actions/clap_actions"
import { createList, deleteList } from "../../actions/list_actions";

const mapStateToProps = (state, { match }) => {
  const storyId = parseInt(match.params.storyId);
  const story = selectStory(state.entities, storyId);
  return {
    story,
    claps: Object.values(state.entities.claps),
    user: state.entities.users
  }
}

const mapDispatchToProps = dispatch => ({
  fetchStories: () => dispatch(fetchStories()),
  fetchStory: storyId => dispatch(fetchStory(storyId)),
  createClap: clap => dispatch(createClap(clap)),
  deleteClap: clapId => dispatch(deleteClap(clapId)),
  createList: list => dispatch(createList(list)),
  deleteList: listId => dispatch(deleteList(listId))

})

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(BottomBar));