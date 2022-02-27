import React from 'react';
import { Link } from 'react-router-dom';

import logoImage from '../../images/medium_logo.png';
import bannerQuotesImage from '../../images/quotes.png';



const Greeting = ({ currentUser, logout }) => {
  const sessionLinks = () => (
    <div className='welcome-banner'>
      <div className='nav-bar'>
        <Link to="/" className="header-link">
          <img src={logoImage} />
          <h1>Medium</h1>
        </Link>
      
        <nav className="login-signup">
          <Link to="/login">Sign in</Link>
          <Link to="/signup">Get started</Link>
        </nav>
      </div>

      <div className='banner-content'>
        <div className='banner-info'>
          <h1>
            Medium is a place to write, read, and connect
          </h1>
          <p>
            It's easy and free to post your thinking on any topic and connect with
            millions of readers.
          </p>
          <Link to="/signup">Start Writing</Link>
        </div>

        <div>
          <img src={bannerQuotesImage} />
        </div>
      </div>

    </div>
  );
  const personalGreeting = () => (
    <hgroup className='nav-bar'>
      <button className="header-button" onClick={logout}>Log Out</button>
    </hgroup>
  );

  return currentUser ? personalGreeting() : sessionLinks();
};


export default Greeting;