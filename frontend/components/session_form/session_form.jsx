import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      full_name: '',
      email: '',
      password: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.demoLogin = this.demoLogin.bind(this);
    this.closeModal = this.closeModal.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  demoLogin() {
    this.props.demoLogin();
  }

  closeModal() {
    this.props.history.push('/')
  }

  renderErrors() {
    return (
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {

    const renderSignupField = () => {
      if (this.props.formType === 'signup') {
        return (
            <label>Your full name:
              <br />
              <input type="text"
                value={this.state.full_name}
                onChange={this.update('full_name')}
                className="login-input"
              />
            </label>
        )
      }
    }

    const renderAlternaticeLink = () => {
      if (this.props.formType === 'signup') {
        return (
          <p>Already have an account? {this.props.navLink}</p>
        )
      } else {
        return (
          <p>No account? {this.props.navLink}</p>
        )
      }
    }

    const renderGreeting = () => {
      if (this.props.formType === 'signup') {
        return (
          <h1>Join (Me)dium.</h1>
        )
      } else {
        return (
          <h1>Welcome back.</h1>
        )
      }
    }

    return (
      <div className='modal' onClick={this.closeModal}>
        <div className="login-form-container" onClick={e => e.stopPropagation()}>
          <div className='modal-x-container'>
            <Link to="/" className='modal-x'></Link>
          </div>
          <form onSubmit={this.handleSubmit} className="login-form-box">
            <br />
            <div className="login-form">
              <br />
              {renderGreeting()}
              <br />
              {renderSignupField()}
              <br />
              <label>Your email:
                <br />
                <input type="text"
                  value={this.state.email}
                  onChange={this.update('email')}
                  className="login-input"
                />
              </label>
              <br />
              <label>Your password:
                <br />
                <input type="password"
                  value={this.state.password}
                  onChange={this.update('password')}
                  className="login-input"
                />
              </label>
              <br />
              <input className="session-submit" type="submit" value={this.props.formType}/>
              <br />
              {renderAlternaticeLink()}
            </div>
          </form>
          <button className='demo-button' onClick={() => this.demoLogin()}>demo user</button>
          <div className='errors'>
            {this.renderErrors()}
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(SessionForm);