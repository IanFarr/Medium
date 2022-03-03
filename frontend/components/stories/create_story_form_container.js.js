import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { createStory } from '../../actions/story_actions'
import StoryForm from './story_form';

const mapStateToProps = state => ({
  story: {
    title: '',
    body: '',
    tags: ['perhaps'],
    author: state.entities.users[Object.keys(state.entities.users)[0]].full_name,
    author_id: state.entities.users[Object.keys(state.entities.users)[0]].id,
    created_at: 'March 3'
  },
  formType: 'Create Story'
});

const mapDispatchToProps = dispatch => ({
  action: story => dispatch(createStory(story))
});

export default connect(mapStateToProps, mapDispatchToProps)(StoryForm);