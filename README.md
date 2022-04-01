# (Me)dium

(Me)dium is a clone of the poular online publishing platform Medium.

## About The Project

(Me)dium was developed as an excercize to advance and display my full stack development abilities. The entire project from the back-end to
the front-end was developed with the goal of emulating the functionality and appearance of the real Medium. Since this is a portfolio project,
I've decided to emphasize the 'Me' in Medium and display humorous articles about myself and why employers may want to hire me.

### [Check it out!](https://medium-ian-farr.herokuapp.com/#/)

## Overview

(Me)dium is an app that allows users to write and publish stories to be displayed for other users to read. The top trending articles are
displayed first and foremost on the landing page so readers can check out what stories are popular on the site. Users also have the
ability to 'clap' (Medium's version of Likes) for stories and bookmark stories for reading later.

Users can create secure accounts on (Me)dium to access all of the features of the web app. Once logged in, users have the ability to read
all articles that have been published to the site. If users, like a story, they can 'clap' for it to show their appreciation. Stories can
also be saved which adds them to a user's 'saved stories' page so they can be read at a future time. Users also have the power to write and edit
their own stories for other users to read, clap for, and save!

## Technologies

- ### Rails

  (Me)dium uses a rails backend to manage database calls and accurately present the JSON information we want to the front-end.

- ### PostgreSQL

  (Me)dium's database is built using PostgreSQL. Information regarding Users, Stories, Claps, and Saves is handled independently and
  relationships exist between tables where required.
  
- ### Redux

  (Me)dium's application state is managed using the Redux library.

- ### React

  (Me)dium's front-end user interface is developed using React. (Me)dium is a single-page app with components that re-render individually
  when necessary to display up-to-date information to the user.

- ### AWS S3

  (Me)dium's users are able to upload images along with the stories that they publish. AWS S3 is employed to make the uploading and handling of
  images tied to stories possible.

 
## Feature Highlights

### Trending

The trending section presents the most popular stories on the site. As stories are viewed and liked, the trending section dynamically updates
to provide interesting and relevant stories for readers.

![Trending Image](https://github.com/IanFarr/Medium/blob/main/app/assets/images/highlight-trending.png)

The trending component compares the stats of each story to always present users with the best articles on the site!

```
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
```

### Saves

(Me)dium lets users save articles for reading later. Simply pressing the save button, located on the bottom of a stories page, will add the
article to your saves. Pressing the save button again will remove it from your saves.

Once stories have been saved, users can click on the saves icon in the nav bar to view and read their saved stories.

![Saves Image](https://github.com/IanFarr/Medium/blob/main/app/assets/images/highlight-saves-page.png)

```
const savesArray = [];
Object.keys(this.props.allSaves).forEach(key => {
if (this.props.allSaves[key].user_id === this.props.user.id) {
  savesArray.push(this.props.allSaves[key])
}

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
```
