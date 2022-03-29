import React from "react";
import StoryIndexItem from "./story_index_item";

class StoryIndex extends React.Component {

  componentDidMount() {
    this.props.fetchStories();
  }

  render() {
    let storiesArr
    if (this.props.stories.length > 1) {
      if (this.props.stories[0].created_at > this.props.stories[1].created_at) {
        storiesArr = this.props.stories.reverse();
      } else {
        storiesArr = this.props.stories;
      }
    } else {
      storiesArr = this.props.stories;
    }
    if (!storiesArr.length) return null;

    if (this.props.entitiesObject.session.id === null) {
      return (
        <div>
          <div className="story-index-container">
            {storiesArr.map(story => (
              <StoryIndexItem
                story={story}
                fetchStories={this.props.fetchStories}
                key={story.id}
              />
            ))}
          </div>
        </div>
      )
    } else {
      return (
        <div>
          <div className="story-index-container-logged">
            {storiesArr.map(story => (
              <StoryIndexItem
                story={story}
                fetchStories={this.props.fetchStories}
                key={story.id}
              />
            ))}
          </div>
        </div>
      )
    }
  }
}

export default StoryIndex;