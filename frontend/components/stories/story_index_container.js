import { connect } from "react-redux";
import StoryIndex from "./story_index";
import { fetchStories } from "../../actions/story_actions";
import { asArray } from "../../reducers/selectors";

const mapStateToProps = state => ({
  stories: asArray(state.entities),
  entitiesObject: state
});

const mapDispatchToProps = dispatch => ({
  fetchStories: () => dispatch(fetchStories())
});

export default connect(mapStateToProps, mapDispatchToProps)(StoryIndex);