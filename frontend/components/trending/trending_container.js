import { connect } from "react-redux";
import { withRouter } from "react-router-dom";
import { asArray } from "../../reducers/selectors";
import Trending from "./trending";

const mapStateToProps = state => ({
  stories: asArray(state.entities)
});

const mapDispatchToProps = dispatch => ({
  fetchStories: () => dispatch(fetchStories())
});

export default connect(mapStateToProps, mapDispatchToProps)(Trending);