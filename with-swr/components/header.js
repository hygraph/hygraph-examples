import { useSession, signIn, signOut } from 'next-auth/react';
import Link from 'next/link';

export default function Header() {
  const { data: session, status } = useSession();

  const loading = status === 'loading';

  if (loading) return null;

  return (
    <header className="bg-white border-b border-gray-200 shadow-sm py-4 mb-6">
      <div className="max-w-5xl mx-auto flex items-center justify-between px-3 md:px-6">
        <Link href="/">
          <a>Home</a>
        </Link>

        {session ? (
          <div className="space-x-3">
            <Link href="/account">
              <a>My Account</a>
            </Link>
            <button onClick={signOut}>Sign out</button>
          </div>
        ) : (
          <>
            <button onClick={signIn}>Sign in</button>
          </>
        )}
      </div>
    </header>
  );
}
