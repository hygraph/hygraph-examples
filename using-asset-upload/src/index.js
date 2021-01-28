require('dotenv').config();

const fetch = require('node-fetch');
const fs = require('fs');
const Queue = require('bee-queue');

const assetUpload = async (data) => {
  const response = await fetch(`${process.env.GRAPHCMS_URL}/upload`, {
    method: 'POST',
    headers: {
      Authorization: `Bearer ${process.env.GRAPHCMS_MUTATION_TOKEN}`,
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: `url=${encodeURIComponent(data.url)}`,
  });

  if (!response.ok)
    throw new Error(
      `Issue uploading asset (${data.url}): ${response.statusText}`
    );

  return;
};

const run = async () => {
  try {
    const [, , file] = process.argv;

    if (!file) throw new Error('Missing `file` arguement');

    let data;

    try {
      const rawdata = fs.readFileSync(file);

      data = JSON.parse(rawdata);
    } catch (error) {
      throw new Error(error);
    }

    const importQueue = new Queue('GraphCMS Asset Import', {
      activateDelayedJobs: true,
    });

    const importQueueJobs = await Promise.all(
      data.map(async (obj) => {
        const job = await importQueue
          .createJob(obj)
          .retries(3)
          .backoff('fixed', 5000)
          .save();

        return job;
      })
    );

    importQueue
      .on('job succeeded', (jobId) => console.log(`[SUCCESS]: ${jobId}`))
      .on('job retrying', (jobId, error) =>
        console.warn(`[RETRYING]: ${jobId} (${error})`)
      )
      .on('job failed', (jobId, error) =>
        console.error(`[FAILED]: ${jobId} (${error})`)
      );

    importQueue
      .saveAll(importQueueJobs)
      .then((errors) => console.error(errors));

    importQueue.ready().then(async (queue) => {
      const checkHealth = await queue.checkHealth();

      console.log('checkHealth:', JSON.stringify(checkHealth));
    });

    await importQueue.process(async (job) => {
      console.log(`[PROCESSING]: ${job.id}`);

      return await assetUpload(job.data);
    });
  } catch (error) {
    console.log(error);
  }
};

run();
