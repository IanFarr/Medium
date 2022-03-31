import React from "react";
import Moment from "moment";

class StoryShow extends React.Component {

  constructor(props) {
    super(props)

    this.renderStoryPhoto = this.renderStoryPhoto.bind(this);
  }

  componentDidMount() {
    this.props.fetchStory(this.props.match.params.storyId);
  }

  componentWillUnmount() {
    this.props.fetchStories
  }

  renderStoryPhoto() {
    if (this.props.story === undefined) return null;
    if (this.props.story.photoUrl === undefined) {
      return <img className="story-show-body-image" src={window.defaultStoryImage} />
    } else {
      return <img className="story-show-body-image" src={this.props.story.photoUrl} />
    }
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
            {this.renderStoryPhoto()}
            {/* <img className="story-show-body-image" src={story.photoUrl} /> */}
          </div>
          <p className="sory-show-body">{story.body}</p>
        </div>
      </div>
    )
  }
}

export default StoryShow;