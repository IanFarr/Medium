import React from "react";
import { Link, withRouter } from 'react-router-dom';

class StoryForm extends React.Component {
  constructor(props) {
    super(props);

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    if (this.props.story.title === '' || this.props.story.body === '') {
      alert('You must include both a title and a body.')
    } else if (this.props.formType === 'Edit Story') {
      this.props.action(this.props.story);
      this.props.history.push('/');
    } else {
      this.props.history.push({
        pathname: '/image',
        state: {
          story: this.props.story,
          action: this.props.action
        }
      });
    }
  }

  update(field) {
    return e => this.props.story[field] = e.currentTarget.value;
  }

  render() {

    return (
      <div className="create-story-container">

        <div className="create-story-nav-spacer"></div>

        <div className="create-story-nav-bar-container">
          <Link to="/">
            <img src={window.mediumLogo} />
          </Link>
            <button
              className="story-publish-buttton"
              onClick={this.handleSubmit}>
              Publish
            </button>
        </div>

        <div className="create-story-input-container">
          <input
            className="create-story-title-input"
            type='text'
            placeholder="Title"
            defaultValue={this.props.story.title}
            onChange={this.update('title')}
          />
          <textarea
            className="create-story-body-input"
            placeholder="Tell your story..."
            defaultValue={this.props.story.body}
            onChange={this.update('body')}
          />
        </div>
      </div>
    );
  }
}

export default StoryForm;