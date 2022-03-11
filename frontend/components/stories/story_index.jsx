import React from "react";
import StoryIndexItem from "./story_index_item";

class StoryIndex extends React.Component {

  componentDidMount() {
    this.props.fetchStories();
  }

  render() {
    console.log(this.props)
    if (this.props.entitiesObject.session.id === null) {
      return (
        <div>
          <div className="story-index-container">
            {this.props.stories.reverse().map(story => (
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
            {this.props.stories.reverse().map(story => (
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