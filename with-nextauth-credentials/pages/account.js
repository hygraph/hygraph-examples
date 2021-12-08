import { gql } from 'graphql-request';
import { useForm } from 'react-hook-form';

import { getSession } from 'next-auth/react';
import { graphcmsClient } from '../lib/graphcms';
import Header from '../components/header';

const GetUserProfileById = gql`
  query GetUserProfileById($id: ID!) {
    user: nextAuthUser(where: { id: $id }) {
      name
      email
      bio
    }
  }
`;

export async function getServerSideProps(context) {
  const session = await getSession(context);

  const { user } = await graphcmsClient.request(GetUserProfileById, {
    id: session.userId,
  });

  return {
    props: {
      user,
    },
  };
}

export default function AccountPage({ user }) {
  const { handleSubmit, register } = useForm({ defaultValues: user });

  const onSubmit = async ({ name, bio }) => {
    try {
      await fetch('/api/update-account', {
        method: 'POST',
        body: JSON.stringify({ name, bio }),
      });
    } catch {
      console.log('Something went wrong');
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
