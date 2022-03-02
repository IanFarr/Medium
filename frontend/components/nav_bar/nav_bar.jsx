import React from "react";
import { Link, withRouter } from 'react-router-dom';

const NavBar = ({ currentUser, logout }) => {
  if (currentUser !== undefined) {
    return (
      <div className="nav-bar-container">
        <div className="nav-bar-content">
          <div className="nav-logo-container">
            <Link to="/">
              <img src={window.mediumLogo} />
            </Link>
          </div>
          <div className="nav-icon-buttons-container">
            <Link to="/">
              <img src={window.navHomeIcon} />
            </Link>
            <Link to="/">
              <img src={window.navAlertIcon} />
            </Link>
            <Link to="/">
              <img src={window.navSavedIcon} />
            </Link>
            <Link to="/">
              <img src={window.navStoriesIcon} />
            </Link>
            <div className="nav-space-border"></div>
            <Link to="/">
              <img className="nav-create-icon" src={window.navCreateIcon} />
            </Link>
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