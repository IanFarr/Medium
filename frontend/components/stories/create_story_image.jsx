import React from "react";
import { Link, withRouter } from 'react-router-dom';

class UploadImage extends React.Component {

  constructor(props) {
    super(props)

    this.preview = this.preview.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  preview(e) {
    const reader = new FileReader();
    const file = e.currentTarget.files[0];
    reader.onloadend = () =>
      this.setState({ imageUrl: reader.result, imageFile: file });

    if (file) {
      reader.readAsDataURL(file);
    } else {
      this.setState({ imageUrl: "", imageFile: null });
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    const story = this.props.location.state.story;
    const formData = new FormData();
    formData.append('story[title]', story.title)
    formData.append('story[body]', story.body)
    formData.append('story[author]', story.author)
    formData.append('story[author_id]', story.author_id)
    formData.append('story[created_at]', story.created_at)
    const arr = ['story']
    formData.append('story[tags]', JSON.stringify(arr))

    if (this.state !== null) formData.append('story[photo]', this.state.imageFile)
    const create = this.props.location.state.action;
    
    create(formData);

    this.props.history.push('/');
  }

  render() {
    return (
      <div className="confirm-modal">
        <div className="confirm-container">
          <div className='confirm-modal-x-container'>
            <Link to="/" className='confirm-modal-x'></Link>
          </div>

          <div className="confirm-modal-content">
            <h1>Upload an image with your story</h1>
            <div className="image-modal-content">
              <form onSubmit={(e) => this.handleSubmit(e)}>
              <input
                className="upload-image"
                type="file"
                onChange={(e) => this.preview(e)}
              />
              <input
                className="confirm-cancel-button image-confirm-button"
                type='submit' />
              </form>
            </div>
          </div>
        </div>
      </div>
    )
  }

}

export default UploadImage;