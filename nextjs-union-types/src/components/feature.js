function Feature({ content, title }) {
  return (
    <div>
      <h3 className="font-medium mb-2 text-lg">{title}</h3>
      <p>{content}</p>
    </div>
  );
}

export default Feature;
