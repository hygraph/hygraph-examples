import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import AutofillRelationUIX from './AutofillRelationUIX';

const root = ReactDOM.createRoot(
  document.getElementById('root') as HTMLElement
);
root.render(
  <React.StrictMode>
    <AutofillRelationUIX />
  </React.StrictMode>
);
