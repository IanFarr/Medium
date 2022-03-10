import React from "react";
import { withRouter, Link } from 'react-router-dom';
import Moment from "moment";

class StoryIndexItem extends React.Component {

  // componentDidMount() {
  //   this.props.fetchStories();
  // }

  render() {

    const { id, title, body, tags, author, photoUrl, created_at } = this.props.story;
    debugger

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
            <p className="story-index-tags">{tags[0]}</p>
          </div>
          
        </div>

        <Link to={`/stories/show/${id}`}>
          <img className="story-index-item-image"
            src={photoUrl} 
          />
          {/* src={window.indexStoryImage} /> */}
        </Link>

      </div>
    )
  }
}

export default withRouter(StoryIndexItem);