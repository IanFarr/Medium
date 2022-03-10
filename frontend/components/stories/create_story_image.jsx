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
    const formData = new FormData();
    formData.append('post[title]', this.state.title);
    if (this.state.photoFile) {

      formData.append('story[photo]', this.state.photoFile);
    }
    $.ajax({
      url: '/api/stories',
      method: 'POST',
      data: formData,
      contentType: false,
      processData: false
    });
  }

  render() {
    return (
      <div>
        <h1>Hi</h1>
        <form>
          <input
            type="file"
            onChange={(e) => this.preview(e)}
          />
        </form>
      </div>
    )
  }

}

export default UploadImage;