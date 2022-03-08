import React from "react";
import { Link, withRouter, NavLink } from 'react-router-dom';

const NavBar = ({ currentUser, logout }) => {
  if (currentUser !== undefined) {
    return (
      <div className="nav-bar-container">
        <div className="nav-bar-spacer"></div>
        <div className="nav-bar-content">
          <div className="nav-logo-container">
            <Link to="/">
              <img src={window.mediumLogo} />
            </Link>
          </div>
          <div className="nav-icon-buttons-container">
            <NavLink to="/">
              <img src={window.navHomeIcon} />
            </NavLink>
            <NavLink to="/">
              <img src={window.navAlertIcon} />
            </NavLink>
            <NavLink to="/stories/saves">
              <img src={window.navSavedIcon} />
            </NavLink>
            <NavLink to="/stories/myStories">
              <img src={window.navStoriesIcon} />
            </NavLink>
            <div className="nav-space-border"></div>
            <NavLink to="/stories/create/">
              <img className="nav-create-icon" src={window.navCreateIcon} />
            </NavLink>
          </div>
          <div className="nav-profile-button-container">
            <button className="header-button" onClick={logout}>Log Out</button>
          </div>
        </div>
      </div>
    )
  } else {
    return null;
  }
}

export default NavBar;