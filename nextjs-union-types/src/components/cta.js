function CTA({ content, title }) {
  return (
    <section className="text-center mx-6">
      <div className="border-b-2 border-t-2 max-w-4xl mx-auto px-6 py-12 md:py-20">
        <h3 className="font-smibold mb-4 text-2xl">{title}</h3>
        <p>{content}</p>
      </div>
    </section>
  );
}

export default CTA;
