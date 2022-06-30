//React
import React from 'react';
import ReactDOM from 'react-dom';
//Components
import Root from './components/root';
import configureStore from './store/store';
// Analytics
import ReactGA from 'react-ga';

function initializeReactGA() {
  ReactGA.initialize('G-RR68ESZ081');
  ReactGA.pageview('/homepage');
}

document.addEventListener('DOMContentLoaded', () => {
  initializeReactGA();
  let store;
  if (window.currentUser) {
    const preloadedState = {
      session: { id: window.currentUser.id },
      entities: {
        users: { [window.currentUser.id]: window.currentUser }
      }
    };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }
  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store} />, root);
});
