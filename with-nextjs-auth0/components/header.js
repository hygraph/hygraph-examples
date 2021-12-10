import { useUser } from '@auth0/nextjs-auth0';
import Link from 'next/link';

export default function Header() {
  const { user } = useUser();

  return (
    <header>
      <Link href="/">
        <a>Homepage</a>
      </Link>

      {user ? (
        <p>
          <span>Signed in as {user?.email}</span>
          <Link href="/account">
            <a>My Account</a>
          </Link>
          <Link href="/api/auth/logout">
            <a>Sign out</a>
          </Link>
        </p>
      ) : (
        <Link href="/api/auth/login">
          <a>Sign in</a>
        </Link>
      )}
    </header>
  );
}
