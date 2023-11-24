import React from "react";
import { Provider } from "react-redux";

import { HashRouter } from "react-router-dom";
import App from "./App";

// Analytics
import ReactGA from 'react-ga';
function initializeReactGA() {
  ReactGA.initialize('G-RR68ESZ081');
  ReactGA.pageview('/homepage');
}

const Root = ({ store }) => (
  <Provider store={store}>
    <HashRouter>
      <App>
        {initializeReactGA()}
      </App>
    </HashRouter>
  </Provider>
);

export default Root;