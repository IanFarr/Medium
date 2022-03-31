import React from "react";
import { withRouter, Link } from 'react-router-dom';
import Moment from "moment";

class StoryIndexItem extends React.Component {

  constructor(props) {
    super(props);

    this.renderStoryPhoto = this.renderStoryPhoto.bind(this);
  }

  // componentDidMount() {
  //   this.props.fetchStories();
  // }

  renderStoryPhoto() {
    if (this.props.story === undefined) return null;
    if (this.props.story.photoUrl === undefined) {
      return <img className="story-index-item-image" src={window.defaultStoryImage} />
    } else {
      return <img className="story-index-item-image" src={this.props.story.photoUrl} />
    }
  }

  render() {

    const { id, title, body, tags, author, photoUrl, created_at } = this.props.story;

    return (
      <div className="story-index-item-container">

        <div className="story-index-item-text">

          <div className="story-index-author-content">
            <img className="story-index-author-icon"
            src={window.indexUserIcon} />
            <p className="story-index-author">{ author }</p>
          </div>

          <Link to={`/stories/show/${id}`}>
            <h2 className="story-index-title">{title}</h2>
          </Link>
          <Link to={`/stories/show/${id}`}>
            <p className="story-index-body">
              { body.substring(0, 113) }...
            </p>
          </Link>

          <div className="story-index-info-content">
            <p className="story-index-date">
              {Moment(created_at).format('MMMM D')}
            </p>
            <span className="dot"></span>
            <p className="story-index-tags">{tags[0] || 'story'}</p>
          </div>
          
        </div>

        <Link to={`/stories/show/${id}`}>
          {this.renderStoryPhoto()}
          {/* <img className="story-index-item-image"
            src={photoUrl} 
          /> */}
          {/* src={window.indexStoryImage} /> */}
        </Link>

      </div>
    )
  }
}

export default withRouter(StoryIndexItem);