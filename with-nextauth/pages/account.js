import Layout from '../components/Layout';

export default function IndexPage() {
  return (
    <Layout>
      <h1>Account Settings</h1>
      <p>You can only see this page once logged in.</p>
      <p>Try to access this incognito, and you'll be redirected to signin.</p>
      <iframe src="/api/graphcms/me" />
    </Layout>
  );
}
