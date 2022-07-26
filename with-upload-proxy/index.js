require('dotenv').config();

const express = require('express');
const FormData = require('form-data');
const fetch = require('node-fetch');
const multer = require('multer')();

const app = express();

app.post('/upload', multer.single('fileUpload'), (req, res) => {
  const fileUpload = req.file;

  const form = new FormData();

  form.append('fileUpload', fileUpload.buffer, fileUpload.originalname);

  fetch(`${process.env.HYGRAPH_ENDPOINT}/upload`, {
    method: 'POST',
    headers: {
      Authorization: `Bearer ${process.env.HYGRAPH_TOKEN}`,
    },
    body: form,
  })
    .then((response) => response.json())
    .then((data) => res.send(data));
});

app.listen(4000, () => {
  console.log('Running on port 4000');
});
