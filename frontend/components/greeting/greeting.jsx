import React from 'react';
import { Link, withRouter } from 'react-router-dom';



const Greeting = ({ currentUser, logout }) => {

  const sessionLinks = () => (
    <div className='welcome-banner'>
      <div className='nav-bar-spacer'></div>
      <div className='nav-bar'>
        <Link to="/" className="header-link">
          <img src={window.mediumLogo} />
          <h1>(Me)dium</h1>
        </Link>
      
        <nav className="login-signup">
          <Link to="/login">Sign in</Link>
          <Link to="/signup">Get started</Link>
        </nav>
      </div>

    </div>
  );

  // return currentUser ? personalGreeting() : sessionLinks();
  return currentUser ? null : sessionLinks();

};


export default withRouter(Greeting)