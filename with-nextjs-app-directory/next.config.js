module.exports = nextConfig;
/** @type {import('next').NextConfig} */
module.exports = {
  reactStrictMode: true,
  images: {
    domains: ['media.graphassets.com'],
  },
  experimental: {
    workerThreads: false,
    cpus: 1
  },
}
