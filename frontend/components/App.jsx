import React from 'react';
import { Provider } from 'react-redux';
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';

// Components
import GreetingContainer from './greeting/greeting_container';
import BannerContainer from "./greeting/banner_container.js";
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';

import NavBarContainer from './nav_bar/nav_bar_container';

import TrendingContainer from './trending/trending_container';
import StoryIndexContainer from './stories/story_index_container';
import StoryShowContainer from './stories/story_show_container';
import CreateStoryFormContainer from './stories/create_story_form_container.js';
import EditStoryFormContainer from './stories/edit_story_form_container';
import YourStoriesContainer from './stories/your_stories_container';
import BottomBarContainer from './bottom_bar/bottom_bar_container';
import SavesContainer from './saves/saves_container';

import AboutLinks from './about_links/about_links';

import ConfirmContainer from './stories/confirm_container';

import AlertContainer from './alerts/alert_container';

import UploadImage from './stories/create_story_image'

import { AuthRoute, ProtectedRoute } from '../util/route_util';


const App = () => (
  <div>
    <Route exact path="/image" component={UploadImage} />

    <Route exact path="/confirm" component={ConfirmContainer} />

    <Route exact path="/alerts" component={AlertContainer} />

    <div className='your-stories-outer-container'>
      <ProtectedRoute exact path="/stories/myStories" component={NavBarContainer} />
      <ProtectedRoute exact path="/stories/myStories" component={YourStoriesContainer} />
    </div>

    <ProtectedRoute exact path="/stories/edit/:storyId" component={EditStoryFormContainer} />

    <ProtectedRoute exact path="/stories/create/" component={CreateStoryFormContainer} />

    <div className='show-container'>
      <Route exact path="/stories/saves" component={NavBarContainer} />
      <Route exact path="/stories/saves" component={SavesContainer} />
    </div>

    <div className='show-container'>
      <Route exact path="/stories/show/:storyId" component={GreetingContainer} />
      <Route exact path="/stories/show/:storyId" component={NavBarContainer} />
      <Route exact path="/stories/show/:storyId" component={StoryShowContainer} />
      <Route exact path="/stories/show/:storyId" component={BottomBarContainer} />
    </div>

    <AuthRoute exact path="/login" component={LogInFormContainer} />
    <AuthRoute exact path="/signup" component={SignUpFormContainer} />

    <Route exact path="/" component={BannerContainer} />
    <Route exact path="/" component={GreetingContainer} />
    <div className='index-content-container'>
      <Route exact path="/" component={NavBarContainer} />
      <Route exact path="/" component={TrendingContainer} />
      <div className='index-and-about-links-container'>
        <Route exact path="/" component={StoryIndexContainer} />
        <Route exact path="/" component={AboutLinks} />
      </div>
    </div>
  </div>
);

export default App;
