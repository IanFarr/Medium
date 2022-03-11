import React from 'react';
import { Link, withRouter } from 'react-router-dom';

const Banner = ({ currentUser, logout }) => {

    const banner = () => (
      <div className = 'banner-content' >
        <div className='banner-info'>
          <h1>
            (Me)dium is a place to write, read, and connect... about Ian
          </h1>
          <p>
            It's easy and free to post your thinking on one topic and connect with
            like two readers.
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