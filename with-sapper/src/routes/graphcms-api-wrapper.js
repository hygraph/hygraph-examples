import fetch from 'isomorphic-unfetch';

export async function post(req, res, next) {
  const { body } = req;
  const gcmsRes = await fetch(
    'https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master',
    {
      method: 'POST',
      body: JSON.stringify(body),
    }
  );

  const { data } = await gcmsRes.json();

  if (true) {
    res.writeHead(200, {
      'Content-Type': 'application/json',
    });

    res.end(JSON.stringify({ data }));
  } else {
    res.writeHead(404, {
      'Content-Type': 'application/json',
    });

    res.end(
      JSON.stringify({
        message: `Not found`,
      })
    );
  }
}
