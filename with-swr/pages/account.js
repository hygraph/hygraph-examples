import { useState } from 'react';
import { gql } from 'graphql-request';

import { getSession } from 'next-auth/react';
import { hygraphClient } from '../lib/hygraph';
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

  const { user } = await hygraphClient.request(GetUserProfileById, {
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

      <div className="max-w-3xl mx-auto px-6 space-y-6">
        <h1 className="text-3xl font-bold">My Account</h1>

        <form
          onSubmit={handleSubmit}
          className="bg-white rounded p-4 border border-gray-200 space-y-3"
        >
          <div className="space-y-3">
            <label htmlFor="bio" className="text-purple-500 font-medium mb-3">
              Bio
            </label>

            <div>
              <textarea
                name="bio"
                value={bio}
                onChange={(e) => setBio(e.target.value)}
                placeholder="Short bio"
                id="bio"
                rows={7}
                className="shadow-sm block w-full border-gray-200 rounded-md"
              />
            </div>
          </div>
          <div>
            <button
              type="submit"
              className="bg-purple-500 text-white px-3 py-1.5 rounded w-full"
            >
              Save profile
            </button>
          </div>
        </form>
      </div>
    </div>
  );
}
