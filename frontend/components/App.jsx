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
import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';
import StoryIndexContainer from './stories/story_index_container';
import StoryShowContainer from './stories/story_show_container';
import Banner from './greeting/banner';
import NavBarContainer from './nav_bar/nav_bar_container';
import CreateStoryFormContainer from './stories/create_story_form_container.js';

import { AuthRoute, ProtectedRoute } from '../util/route_util';


const App = () => (
  <div>
    <header>
      <GreetingContainer />
      <AuthRoute exact path="/" component={Banner} />
    </header>
    <div className='body-content-container'>
      <NavBarContainer />
      <Switch>
        <ProtectedRoute exact path="/api/stories/create/" component={CreateStoryFormContainer} />
        <Route path="/api/stories/:storyId" component={StoryShowContainer} />
        <Route path="/api/" component={StoryIndexContainer} />
        <Route path="/" component={StoryIndexContainer} />
      </Switch>
      <Switch>
        <AuthRoute exact path="/login" component={LogInFormContainer} />
        <AuthRoute exact path="/signup" component={SignUpFormContainer} />
      </Switch>
    </div>
  </div>
);

export default App;
