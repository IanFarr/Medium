import React from "react";
import Moment from "moment";
import { Link, withRouter } from 'react-router-dom';
import YourStoriesIndexItem from "./your_stories_index_item";

class YourStories extends React.Component {

  componentDidMount() {
    this.props.fetchStories();
  }
  
  render() {

    return (
      <div className="your-stories-container">
        <div className="your-stories-header-container">
          <h1>Your Stories</h1>
          <Link to="/stories/create/">
            <p>Write a story</p>
          </Link>
        </div>
          {Object.values(this.props.stories).map(story => (
            <YourStoriesIndexItem
              deleteStory={this.props.deleteStory}
              author={story.author}
              authorId={story.author_id}
              storyId={story.id}
              title={story.title}
              body={story.body}
              tags={story.tags}
              key={story.id}
            />
          ))}
      </div>
    )
  }
}

export default withRouter(YourStories);