import React from "react";
import ReactDOM from "react-dom";
import configureStore from "./store/store";
import Root from "./components/root";

import * as SessionApiUtils from "./util/session_api_util"
import * as sessionActions from "./actions/session_actions"

document.addEventListener("DOMContentLoaded", () => {
  const store = configureStore();

  // TESTING START
  window.getState = store.getState;
  window.dispatch = store.dispatch;
  // TESTING END

  const root = document.getElementById("root");
  ReactDOM.render(<Root store={store} />, root);
});

window.signup = sessionActions.signup;
window.login = SessionApiUtils.login;
window.logout = SessionApiUtils.logout;

window.user1 = { full_name: "Ian Farr", email: "ian3@gmail.com", password: "password" };








// complete

// //React
// import React from 'react';
// import ReactDOM from 'react-dom';
// //Components
// import Root from './components/root';
// import configureStore from './store/store';


// document.addEventListener('DOMContentLoaded', () => {
//   let store;
//   if (window.currentUser) {
//     const preloadedState = {
//       session: { id: window.currentUser.id },
//       entities: {
//         users: { [window.currentUser.id]: window.currentUser }
//       }
//     };
//     store = configureStore(preloadedState);
//     delete window.currentUser;
//   } else {
//     store = configureStore();
//   }
//   const root = document.getElementById('root');
//   ReactDOM.render(<Root store={store} />, root);
// });
