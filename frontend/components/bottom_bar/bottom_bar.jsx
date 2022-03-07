import React from 'react';

class BottomBar extends React.Component {

  constructor(props) {
    super(props)
    
    this.handleClap = this.handleClap.bind(this);
    this.getClapImage = this.getClapImage.bind(this);
  }

  handleClap() {
    let clapperIds = this.getClapperIds(this.props.claps)
    let userId = this.props.user[(Object.keys(this.props.user)[0])].id

    if (clapperIds.includes(userId)) {
      const clapId = this.getClapId(this.props.claps, userId);
      this.props.deleteClap(clapId);
    } else {
      this.props.createClap({ clapper_id: userId, story_id: this.props.story.id });
    }
  }

  getClapperIds(claps) {
    const clapperIds = [];
    if (Object.keys(claps).length === 0) {
      return [];
    } else {
      Object.keys(claps).forEach(clapKey => {
        clapperIds.push(claps[clapKey].clapper_id)
      })
    }

    return clapperIds;
  }

  getClapId(claps, userId) {
    let clapId
    Object.keys(claps).forEach(clapKey => {
      if (claps[clapKey].clapper_id === userId) {
        clapId = claps[clapKey].id
      }
    })

    return clapId
  }

  getClapImage() {
    debugger
    if (Object.keys(this.props.user)[0] === undefined) {
      return (
        <img className="story-show-clap-icon-unclapped" src={window.clapIcon} />
      )
    }
    let clapperIds = this.getClapperIds(this.props.claps)
    let userId = this.props.user[(Object.keys(this.props.user)[0])].id

    if (clapperIds.includes(userId)) {
      return (
        <img onClick={this.handleClap} className="story-show-clap-icon-clapped" src={window.clapIconClapped} />
      )
    } else {
      return (
        <img onClick={this.handleClap} className="story-show-clap-icon-unclapped" src={window.clapIcon} />
      )
    }
  }

  render() {
    if (this.props.claps === undefined) {
      return null
    } else {
      return (
        <div className='bottom-bar-container'>
          <div className='bottom-bar-content'>
            <div className='bottom-bar-left'>
              {this.getClapImage()}
              <h1>{Object.keys(this.props.claps).length}</h1>
            </div>
            <div className='bottom-bar-right'>
              <img className="story-show-save-icon" src={window.navSavedIcon} />
            </div>
          </div>
        </div>
      )
    }
  }
}

export default BottomBar;