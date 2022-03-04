import React from "react";
import StoryIndexItem from "./story_index_item";

class StoryIndex extends React.Component {

  componentDidMount() {
    this.props.fetchStories();
  }

  render() {
    

    return (
      <div>
        <div className="story-index-container">
          {this.props.stories.map(story => (
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

export default StoryIndex;