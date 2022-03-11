# (Me)dium

(Me)dium is a clone of the poular online publishing platform Medium.

## About The Project

(Me)dium was developed as an excercize to advance and display my full stack development abilities. The entire project from the back-end to
the front-end was developed with the goal of emulating the functionality and appearance of the real Medium. Since this is a portfolio project,
I've decided to emphasize the 'Me' in Medium and display humorous articles about myself and why employers may want to hire me.

### [Check it out!](https://medium-ian-farr.herokuapp.com/#/)

## Overview

(Me)dium is an app that allows users to write and publish stories to be displayed for other users to read. The top trending articles are
displayed first and foremost on the landing page so readers can check out what stories are popular on the site. Users also have the
ability to 'clap' (Medium's version of Likes) for stories and bookmark stories for reading later. 

## Technologies

- ### Rails

  (Me)dium uses a rails backend to manage database calls and accurately present the JSON information we want to the front-end.

- ### PostgreSQL

  (Me)dium's database is built using PostgreSQL. Information regarding Users, Stories, Claps, and Saves is handled independently and
  relationships exist between tables where required.
  
- ### Redux

  (Me)dium's application state is managed using the Redux library.

- ### React

  (Me)dium's front-end user interface is developed using React. (Me)dium is a single-page app with components that re-render individually
  when necessary to display up-to-date information to the user.
