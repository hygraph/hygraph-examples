import { useSession, signIn, signOut } from 'next-auth/react';
import Link from 'next/link';

const Layout = ({ children }) => {
  const { data: session } = useSession();

  return (
    <>
      <header>
        <Link href="/">
          <a>Home</a>
        </Link>

        <div>
          {session ? (
            <>
              Signed in as {session.user.email} <br />
              <Link href="/account">
                <a>Account settings</a>
              </Link>
              <br />
              <button onClick={() => signOut()}>Sign out</button>
            </>
          ) : (
            <>
              <button onClick={() => signIn()}>Sign in</button>
            </>
          )}
        </div>
      </header>

      <div>{children}</div>
    </>
  );
};

export default Layout;
