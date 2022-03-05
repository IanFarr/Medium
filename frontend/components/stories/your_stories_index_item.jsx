import React from "react";
import { withRouter, Link } from 'react-router-dom';
import Moment from "moment";

class YourStoriesIndexItem extends React.Component {

  constructor(props) {
    super(props);

    this.state = {
      story: {
        author: this.props.author,
        authorId: this.props.authorId,
        storyId: this.props.storyId,
        title: this.props.title,
        body: this.props.body,
        tags: this.props.tags
      }
    }

    this.handleDelete = this.handleDelete.bind(this);
  }

  handleDelete(storyId) {
    this.props.deleteStory(storyId);
  }

  render() {

    return (
      <div className="your-story-item-container">
        <div className="your-story-info">
          <Link to={`/stories/show/${this.props.storyId}`}>
            <p className="your-story-title">{this.props.title}</p>
          </Link>
          <Link to={`/stories/show/${this.props.storyId}`}>
            <p
              className="your-story-body"
              >{this.props.body.substring(0, 113)}...
            </p>
          </Link>

          <div className="your-story-date-tag">
            <p className="your-story-index-date">{Moment(this.props.createdAt).format('MMMM D')}</p>
            <span className="dot"></span>
            <p className="your-story-index-tags">{this.props.tags[0]}</p>
          </div>

          <div className="your-story-buttons">
            <Link to={`/stories/edit/${this.props.storyId}`}>
              <p className="your-story-edit-button">Edit</p>
            </Link>
            <Link to={{pathname: '/confirm', state: { storyId: this.props.storyId }}}>
              <button className="your-story-delete-button">Delete</button>
            </Link>
          </div>
        </div>

        <div className="your-story-image">
          <Link to={`/stories/show/${this.props.storyId}`}>
            <img className="your-story-index-item-image" src={window.indexStoryImage} />
          </Link>
        </div>
      </div>
    )
  }
}

export default withRouter(YourStoriesIndexItem);