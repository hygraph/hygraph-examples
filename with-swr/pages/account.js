import { useState } from 'react';
import { gql } from 'graphql-request';

import { getSession } from 'next-auth/react';
import { graphcmsClient } from '../lib/graphcms';
import Header from '../components/header';

const GetUserProfileById = gql`
  query GetUserProfileById($id: ID!) {
    user: nextAuthUser(where: { id: $id }) {
      email
      bio
    }
  }
`;

export async function getServerSideProps(context) {
  const session = await getSession(context);

  if (!session) {
    return {
      redirect: {
        destination: '/',
        permanent: false,
      },
    };
  }

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
  const [bio, setBio] = useState(user?.bio);

  const handleSubmit = async (e) => {
    e.preventDefault();

    try {
      const res = await fetch('/api/update-account', {
        method: 'POST',
        body: JSON.stringify({ bio }),
      });

      if (!res.ok) {
        throw new Error(res.statusText);
      }
    } catch (err) {
      console.log(err);
    }
  };

  return (
    <div>
      <Header />

      <h1>My Account</h1>

      <form onSubmit={handleSubmit}>
        <div>
          <label htmlFor="bio">Bio</label>
          <br />
          <textarea
            name="bio"
            value={bio}
            onChange={(e) => setBio(e.target.value)}
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
