import { withPageAuthRequired, getSession } from '@auth0/nextjs-auth0';
import { gql } from 'graphql-request';
import { useForm } from 'react-hook-form';
import toast from 'react-hot-toast';

import { graphcmsClient } from '../lib/graphcms';
import Header from '../components/header';

const GetUserProfileById = gql`
  query GetUserProfileById($auth0Id: String!) {
    authUser(where: { auth0Id: $auth0Id }) {
      auth0Id
      name
      email
      bio
    }
  }
`;

export const getServerSideProps = withPageAuthRequired({
  returnTo: '/account',
  async getServerSideProps(ctx) {
    const { user } = await getSession(ctx.req, ctx.res);

    const { authUser } = await graphcmsClient.request(GetUserProfileById, {
      auth0Id: user.sub,
    });

    return {
      props: {
        authUser,
      },
    };
  },
});

export default function AccountPage({ authUser }) {
  const { handleSubmit, register } = useForm({ defaultValues: authUser });

  const onSubmit = async ({ name, bio }) => {
    try {
      const res = await fetch('/api/update-account', {
        method: 'POST',
        body: JSON.stringify({ name, bio }),
      });

      if (!res.ok) {
        throw new Error(res.statusText);
      }

      toast.success('Account updated successfully');
    } catch (err) {
      toast.error(err.message || 'Something went wrong. Try again!');
      console.log(err);
    }
  };

  return (
    <div>
      <Header />

      <h1>My Account</h1>

      <form onSubmit={handleSubmit(onSubmit)}>
        <div>
          <label htmlFor="name">Name</label>
          <br />
          <input
            type="text"
            name="name"
            {...register('name', { required: true })}
            placeholder="name"
            id="name"
          />
        </div>

        <div>
          <label htmlFor="bio">Bio</label>
          <br />
          <textarea
            name="bio"
            {...register('bio')}
            placeholder="Short bio"
            id="bio"
            rows={7}
          />
        </div>
        <div>
          <button type="submit">Save profile</button>
        </div>
      </form>
    </div>
  );
}
