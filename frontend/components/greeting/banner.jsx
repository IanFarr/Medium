import React from 'react';
import { Link, withRouter } from 'react-router-dom';

const Banner = ({ currentUser, logout }) => {

    const banner = () => (
      <div className = 'banner-content' >
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
          <img src={window.quotes} />
        </div>
      </div >
    )

  return currentUser ? null : banner();
}

export default withRouter(Banner)