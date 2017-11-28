const ErrorMessage = ({ message }) => (
  <aside>
    {message}
    <style jsx>{`
      aside {
        padding: 2em;
        font-size: 20px;
        color: white;
        background-color: red;
      }
    `}</style>
  </aside>
)

export default ErrorMessage
