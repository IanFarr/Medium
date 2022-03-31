import React from 'react';

import TrendingStoryItem from './trending_story_item';

class Trending extends React.Component {

  componentDidMount() {
    this.props.fetchStories
  }

  render() {
    if (this.props.stories === []) return null;
    if (this.props.stories[0] === undefined) return null;
    if (this.props.stories.length < 6) return null;

    let storyClaps = {}
    this.props.stories.forEach(story => {
      let claps = story.claps.length;
      Object.assign(storyClaps, { [story.id]: claps });
    })

    const clapsArray = Object.values(storyClaps).sort().reverse().slice(0, 6);

    const trendingStories = []

    while (trendingStories.length < 6) {
      for (let i = 0; i < this.props.stories.length; i++) {
        let story = this.props.stories[i];
        if (story.claps.length === clapsArray[0] && !trendingStories.includes(story)) {
          trendingStories.push(Object.assign(story, { trend: `0${(trendingStories.length + 1)}` }));
          clapsArray.shift();
          i = 0;
        }
      }
    }

    if (this.props.entitiesObject.session.id === null) {
      return (
        <div className='trending-outer-container'>
          <div className='trending-container'>
            <div className='trending-title-container'>
              <img className="trending-icon" src={window.trendingIcon} />
              <h1>TRENDING ON (ME)DIUM</h1>
            </div>
            <div className="trending-items-container">
              {trendingStories.map(story => (
                <TrendingStoryItem
                  story={story}
                  fetchStories={this.props.fetchStories}
                  key={story.id}
                />
              ))}
            </div>
          </div>
        </div>
      )
    } else {
      return (
        <div className='trending-outer-container trending-signed-in'>
          <div className='trending-container'>
            <div className='trending-title-container'>
              <img className="trending-icon" src={window.trendingIcon} />
              <h1>TRENDING ON (ME)DIUM</h1>
            </div>
            <div className="trending-items-container">
              {trendingStories.map(story => (
                <TrendingStoryItem
                  story={story}
                  fetchStories={this.props.fetchStories}
                  key={story.id}
                />
              ))}
            </div>
          </div>
        </div>
      )
    }
  }
}

export default Trending;