import React from "react";
import { Link, withRouter, useLocation } from 'react-router-dom';

const Confirm = (props) => {
  const location = useLocation()
  const { storyId } = location.state;

  const direct = () => {
    props.deleteStory(storyId)
    setTimeout(() => {
      props.history.push("/stories/myStories");
    }, 1000)
  }

  return (
    <div className="confirm-modal">
      <div className="confirm-container">
        <div className='confirm-modal-x-container'>
          <Link to="/stories/myStories" className='confirm-modal-x'></Link>
        </div>

        <div className="confirm-modal-content">
          <h1>Delete Story</h1>
          <p>Are you sure you want to delete this story?</p>
          <div className="confirm-buttons">
          <Link to="/stories/myStories">
            <button className="confirm-cancel-button">
              Cancel
            </button>
          </Link>
            {/* <Link to="/stories/myStories"> */}
              <button 
                className="confirm-delete-button"
                // onClick={() => props.deleteStory(storyId)}
                onClick={() => direct()}>
                  Delete
              </button>
            {/* </Link> */}
          </div>
        </div>
      </div>
    </div>
  )
}

export default Confirm;