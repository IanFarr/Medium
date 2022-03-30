import React from "react";

const AboutLinks = () => {
  return (
    <div className="about-links-wrapper">
      <div className="about_link_buttons">
        <p>DISCOVER EVEN MORE ABOUT IAN</p>
        <a href="https://ianfarr.dev" target="_blank">
          <button className="about-link-button">Portfolio</button>
        </a>
        <a href="https://www.linkedin.com/in/ian-farr/" target="_blank">
          <button className="about-link-button">LinkedIn</button>
        </a>
        <a href="https://github.com/IanFarr" target="_blank">
          <button className="about-link-button">Github</button>
        </a>
      </div>
    </div>
  )
}

export default AboutLinks;