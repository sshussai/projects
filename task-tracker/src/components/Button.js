import React from 'react'
import PropTypes from 'prop-types'

const Button = (props) => {
  return (
    <button className='btn'>{props.title}</button>
  )
}

Button.defaultProps = {
  title: 'Button',
}

Button.propTypes = {
  title: PropTypes.string.isRequired,
}




export default Button
