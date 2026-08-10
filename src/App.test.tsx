import React from 'react';
import { render, screen } from '@testing-library/react';
import App from './App';

test('renders login form when logged out', () => {
  render(<App />);
  const heading = screen.getByRole('heading', { name: /login/i });
  expect(heading).toBeInTheDocument();
});
