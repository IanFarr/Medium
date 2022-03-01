import React from "react";
import Moment from "moment";

class StoryIndexItem extends React.Component {



  render() {

    const { id, title, body, tags, author, created_at } = this.props.story;
    // const created = created_at.hour

    return (
      <div className="story-index-item-container">

        <div className="story-index-item-text">

          <div className="story-index-author-content">
            <img className="story-index-author-icon" src={window.indexUserIcon} />
            <p className="story-index-author">{ author }</p>
          </div>

          <h2 className="story-index-title">{ title }</h2>
          <p className="story-index-body">{ body.substring(0, 128) }...</p>

          <div className="story-index-info-content">
            <p className="story-index-date">{Moment(created_at).format('MMMM D')}</p>
            <p className="story-index-tags">{tags[0]}</p>
          </div>
          
        </div>
        
        <img className="story-index-item-image" src={window.indexStoryImage} />

      </div>
    )
  }
}

export default StoryIndexItem;