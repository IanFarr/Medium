import React from "react";
import Moment from "moment";

class StoryShow extends React.Component {

  constructor(props) {
    super(props)
  }

  componentDidMount() {
    this.props.fetchStory(this.props.match.params.storyId);
  }

  render() {
    if (this.props === null) return null;
    
    const { story } = this.props

    return (
      <div className="story-show-box">
        <div className="story-show-container">
          <div className="story-show-author-container">
            <img className="story-show-author-icon" src={window.showUserIcon} />
            <div className="story-show-auth-date-container">
              <p className="story-index-author">{story.author}</p>
              <p className="story-show-date">{Moment(story.created_at).format('MMMM D')}</p>
            </div>
          </div>
          <h1 className="story-show-title">{story.title}</h1>
          <div className="story-body-image-container">
            <img className="story-show-body-image" src={window.showStoryImage} />
          </div>
          <p className="sory-show-body">{story.body}</p>
        </div>
      </div>
    )
  }
}

export default StoryShow;