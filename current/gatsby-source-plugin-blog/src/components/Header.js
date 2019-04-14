import React from 'react';
import { Link } from 'gatsby';

import styles from '../styles/header.module.css';

const Header = () => (
  <header className={styles.header}>
    <h1 className={styles.h1}>GraphCMS Starter blog</h1>
    <nav className={styles.nav}>
      <Link
        to="/"
        exact
        className={styles.link}
        activeClassName={styles.active}
      >
        Home
      </Link>
      <Link to="/about" className={styles.link} activeClassName={styles.active}>
        About
      </Link>
    </nav>
  </header>
);

export default Header;
