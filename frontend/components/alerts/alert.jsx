import React from "react";

class Alert extends React.Component {
  constructor(props) {
    super(props)
    this.closeModal = this.closeModal.bind(this);
  }

  closeModal() {
    this.props.history.goBack()
    return false;
  }

  render() {
    return (
      <div className="confirm-modal">
        <div className="confirm-container">
          <div className='confirm-modal-x-container'>
            <p onClick={() => this.closeModal()} className='confirm-modal-x'></p>
          </div>

          <div className="confirm-modal-content">
            <h1>Alert Feature Coming Soon!</h1>
            <p>In the mean time, why not check out some other interesting links?</p>
            <div className="confirm-buttons">
              <a href="https://ianfarr.dev" target="_blank">
                <button className="confirm-cancel-button">My Portfolio</button>
              </a>
              <a href="https://www.linkedin.com/in/ian-farr/" target="_blank">
                <button className="confirm-cancel-button">My LinkedIn</button>
              </a>
              <a href="https://github.com/IanFarr" target="_blank">
                <button className="confirm-cancel-button">My Github</button>
              </a>
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default Alert;