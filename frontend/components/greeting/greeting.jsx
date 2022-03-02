import React from 'react';
import { Link, withRouter } from 'react-router-dom';



const Greeting = ({ currentUser, logout }) => {

  const sessionLinks = () => (
    <div className='welcome-banner'>
      <div className='nav-bar-spacer'></div>
      <div className='nav-bar'>
        <Link to="/" className="header-link">
          <img src={window.mediumLogo} />
          <h1>Medium</h1>
        </Link>
      
        <nav className="login-signup">
          <Link to="/login">Sign in</Link>
          <Link to="/signup">Get started</Link>
        </nav>
      </div>

    </div>
  );
  const personalGreeting = () => (
    <div>
      <div className='logged-in-nav-bar-spacer'></div>
      <hgroup className='nav-bar'>
        <button className="header-button" onClick={logout}>Log Out</button>
      </hgroup>
    </div>
  );

  // return currentUser ? personalGreeting() : sessionLinks();
  return currentUser ? null : sessionLinks();

};


export default withRouter(Greeting)