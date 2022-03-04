import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { updateStory } from '../../actions/story_actions'
import StoryForm from './story_form';

const mapStateToProps = (state, ownProps) => ({
  story: state.entities.stories[ownProps.match.params.storyId],
  formType: 'Edit Story'
});

const mapDispatchToProps = dispatch => ({
  action: story => dispatch(updateStory(story))
});

export default connect(mapStateToProps, mapDispatchToProps)(StoryForm);