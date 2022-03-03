import React from "react";
import { Link, withRouter } from 'react-router-dom';

class StoryForm extends React.Component {
  constructor(props) {
    super(props);

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.action(this.props.story);
    this.props.history.push('/')
  }

  update(field) {
    return e => this.props.story[field] = e.currentTarget.value;
  }

  render() {

    return (
      <div className="create-story-container">

        <div className="create-story-nav-bar-container">
          <Link to="/" className="header-link">
            <img src={window.mediumLogo} />
          </Link>
            <button
              className="story-publish-buttton"
              onClick={this.handleSubmit}>
              Publish
            </button>
        </div>

        <div>
          <input
            type='text'
            defaultValue={this.props.story.title}
            onChange={this.update('title')}
          />
          <textarea
            defaultValue={this.props.story.body}
            onChange={this.update('body')}
          />
        </div>
      </div>
    );
  }
}

export default withRouter(StoryForm);