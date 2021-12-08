import { useSession, signIn, signOut } from 'next-auth/react';
import Link from 'next/link';

export default function Header() {
  const { data: session, status } = useSession();

  const loading = status === 'loading';

  if (loading) return null;

  return (
    <header>
      <Link href="/">
        <a>Homepage</a>
      </Link>

      {session ? (
        <p>
          <span>Signed in as {session?.user?.email}</span>
          <Link href="/account">
            <a>My Account</a>
          </Link>
          <button onClick={signOut}>Sign out</button>
        </p>
      ) : (
        <>
          <button onClick={signIn}>Sign in</button>
        </>
      )}
    </header>
  );
}
