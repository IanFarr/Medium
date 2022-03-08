import React from "react";
import { withRouter, Link } from 'react-router-dom';
import Moment from "moment";

const TrendingStoryItem = (props) => {
  return (
    <div className="trending-story-item">
      <h4>{props.story.trend}</h4>
      <div className="trending-story-info">
        <div className="trending-author-container">
          <Link to={`/stories/show/${props.story.id}`}>
            <img className="story-index-author-icon" src={window.indexUserIcon} />
          </Link>
          <Link to={`/stories/show/${props.story.id}`}>
            <h3>{props.story.author}</h3>
          </Link>
        </div>
        <Link to={`/stories/show/${props.story.id}`}>
          <h2>{props.story.title}</h2>
        </Link>
        <div className="trending-date-container">
          <p>{Moment(props.story.created_at).format('MMMM D')}</p>
        </div>
      </div>
    </div>
  )
}

export default withRouter(TrendingStoryItem);