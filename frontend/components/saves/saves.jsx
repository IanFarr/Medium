import React from "react";
import StoryIndexItem from "../stories/story_index_item";

class Saves extends React.Component {

  componentDidMount() {
    this.props.fetchLists();
    this.props.receiveCurrentUser(this.props.user);
    this.props.fetchStories();
  }

  render() {
    if (this.props.entitiesObject.session.id === null) {
      return (
        <div>
          <div className="saved-story-index-container">
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
    } else {
      if (!Object.keys(this.props.allSaves).length) return null;
      let savesArray = [];
      Object.keys(this.props.allSaves).forEach(key => {
        if (this.props.allSaves[key].user_id === this.props.user.id) {
          savesArray.push(this.props.allSaves[key])
        }
      })
      const saveIds = []
      savesArray.forEach(save => {
        saveIds.push(save.story_id)
      })
      const savedStories = []
      const storyIds = Object.keys(this.props.stories);
      storyIds.forEach(i => {
        if (saveIds.includes(this.props.stories[i].id)) {
          savedStories.push(this.props.stories[i])
        }
      })
      return (
        <div>
          <div className="saved-story-index-container-logged">
            <h1 className="saved-stories-title">Saved Stories</h1>
            {savedStories.map(story => (
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

export default Saves;

