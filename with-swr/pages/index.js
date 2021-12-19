import { useSession } from 'next-auth/react';

import Header from '../components/header';
import Todos from '../components/todos';

export default function IndexPage() {
  const session = useSession();

  return (
    <div>
      <Header />

      <div className="max-w-3xl mx-auto px-6 space-y-6">
        <h1 className="text-3xl font-bold">My Todos</h1>

        {session ? <Todos /> : <p>Login to manage your todos</p>}
      </div>
    </div>
  );
}
