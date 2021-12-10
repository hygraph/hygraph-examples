import { UserProvider } from '@auth0/nextjs-auth0';
import { Toaster } from 'react-hot-toast';

export default function MyApp({
  Component,
  pageProps: { user, ...pageProps },
}) {
  return (
    <UserProvider user={user}>
      <Component {...pageProps} />
      <Toaster />
    </UserProvider>
  );
}
