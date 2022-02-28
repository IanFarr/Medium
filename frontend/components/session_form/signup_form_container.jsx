import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { signup, login } from '../../actions/session_actions';
import SessionForm from './session_form';

const mapStateToProps = ({ errors }) => {
  return {
    errors: errors.session,
    formType: 'signup',
    navLink: <Link to="/login">Sign in</Link>,
    homeLink: <Link to="/"></Link>
  };
};

const mapDispatchToProps = dispatch => {
  return {
    processForm: (user) => dispatch(signup(user)),
    demoLogin: () => dispatch(login({ full_name: '', email: 'demo@demo.com', password: 'demopassword' }))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);
