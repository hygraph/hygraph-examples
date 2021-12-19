import { useSession } from 'next-auth/react';

import Header from '../components/header';
import Todos from '../components/todos';

export default function IndexPage() {
  const session = useSession();

  return (
    <div>
      <Header />

      <h1>My Todos</h1>

      {session ? <Todos /> : <p>Login to manage your todos</p>}
    </div>
  );
}
