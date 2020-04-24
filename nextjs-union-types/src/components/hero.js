function Hero({ subtitle, title }) {
  return (
    <>
      <h1>{title}</h1>
      {subtitle && <h2>{subtitle}</h2>}
    </>
  );
}

export default Hero;
