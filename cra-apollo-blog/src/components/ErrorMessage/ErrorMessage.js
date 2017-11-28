import React from 'react'

import './ErrorMessage.css'

const ErrorMessage = ({ message }) => (
  <aside className='ErrorMessage-aside'>
    {message}
  </aside>
)

export default ErrorMessage
