import React from 'react';

class BottomBar extends React.Component {

  constructor(props) {
    super(props)
    
    this.handleClap = this.handleClap.bind(this);
    this.handleSave = this.handleSave.bind(this);
    this.getClapImage = this.getClapImage.bind(this);
    this.getSaveImage = this.getSaveImage.bind(this);
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
    if (claps.length === 0) {
      return [];
    } else {
      claps.forEach(clap => {
        if (clap.clapper_id === undefined) {
          clapperIds.push(clap[Object.keys(clap)].clapper_id)
        } else {
          clapperIds.push(clap.clapper_id)
        }
      })
    }

    return clapperIds;
  }

  handleSave(action) {
    let userId = this.props.user[(Object.keys(this.props.user)[0])].id;
    const lists = this.props.user[userId].lists;

    if (action === 'remove') {
      const listId = this.getListId(lists, userId);
      this.props.deleteList(listId);
    } else {
      this.props.createList({ user_id: userId, story_id: this.props.story.id });
    }
    setTimeout(() => {
      this.props.fetchStory(this.props.story.id)
    }, 200)
  }

  getListId(lists, userId) {
    let listId
    Object.keys(this.props.saves).forEach(key => {
      if (this.props.saves[key].user_id === userId) {
        listId = this.props.saves[key].id
      }
    })

    return listId
  }

  getClapId(claps, userId) {
    let clapId
    claps.forEach(clap => {
      if (clap.clapper_id === undefined) {
        if (clap[Object.keys(clap)].clapper_id === userId) {
          clapId = Number(Object.keys(clap)[0]);
        }
      } else {
        if (clap.clapper_id === userId) {
          clapId = clap.id;
        }
      }
    })

    return clapId
  }

  getClapImage() {
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

  getSaveImage() {
    if (Object.keys(this.props.user)[0] === undefined) {
      return (
        <img className="story-show-save-icon" src={window.navSavedIcon} />
      )
    }
    const userId = Number(Object.keys(this.props.user)[0]);
    const saves = this.props.saves;
    let saverIds = [];
    Object.keys(saves).forEach(save => {
      saverIds.push(saves[save].user_id)
    })
    if (saverIds.includes(userId)) {
      return (
        <img onClick={() => this.handleSave('remove')} className="story-show-save-icon-saved" src={window.saveIconSaved} />
      )
    } else {
      return (
        <img onClick={() => this.handleSave('add')} className="story-show-save-icon" src={window.navSavedIcon} />
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
              <h1>{this.props.claps.length}</h1>
            </div>
            <div className='bottom-bar-right'>
              {this.getSaveImage()}
            </div>
          </div>
        </div>
      )
    }
  }
}

export default BottomBar;