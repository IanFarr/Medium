import React from "react";
import { Link, withRouter } from 'react-router-dom';
import { createStory } from "../../actions/story_actions";

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
    const story = {
      story: {
        title: 'title',
        body: 'body',
        tags: ['story'],
        author: 'author',
        author_id: 999,
      }
    }
    createStory(story)
  }

  render() {
    return (
      <div>
        <h1>Hi</h1>
        <form onSubmit={(e) => this.handleSubmit(e)}>
          <input
            type="file"
            onChange={(e) => this.preview(e)}
          />
          <input type='submit' />
        </form>
      </div>
    )
  }

}

export default UploadImage;