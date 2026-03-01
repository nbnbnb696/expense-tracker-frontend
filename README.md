# Expense Tracker Frontend

A React-based expense tracking application built with TypeScript that helps users manage their income and expenses efficiently.

## Features

- **Dashboard Overview**: View total income, expenses, and current balance at a glance
- **Transaction Management**: Add, view, and delete income/expense transactions
- **User Authentication**: Login and registration functionality (components ready)
- **Real-time Calculations**: Automatic balance calculation based on transactions
- **Responsive UI**: Clean and intuitive interface with color-coded transaction types

## Tech Stack

- **React** 19.2.4 - UI library
- **TypeScript** 4.9.5 - Type-safe JavaScript
- **React Router DOM** 7.13.0 - Client-side routing
- **Axios** 1.13.4 - HTTP client for API calls
- **React Scripts** 5.0.1 - Build tooling

## Prerequisites

- Node.js (v16 or higher)
- npm or yarn
- Backend API running on `http://localhost:8080`

## Installation

1. Clone the repository
2. Navigate to the project directory:
```bash
cd expense-tracker-frontend
```

3. Install dependencies:
```bash
npm install
```

## Available Scripts

### `npm start`
Runs the app in development mode at [http://localhost:3000](http://localhost:3000)

### `npm test`
Launches the test runner in interactive watch mode

### `npm run build`
Builds the app for production to the `build` folder

### `npm run eject`
Ejects from Create React App (one-way operation)

## Project Structure

```
src/
├── components/
│   ├── Dashboard.tsx      # Main dashboard with transaction management
│   ├── Login.tsx          # User login component
│   └── Register.tsx       # User registration component
├── services/
│   └── api.ts            # API service layer with Axios
├── App.tsx               # Main application component
├── App.css               # Application styles
└── index.tsx             # Application entry point
```

## API Integration

The application connects to a backend API at `http://localhost:8080/api` with the following endpoints:

### Authentication
- `POST /auth/login` - User login
- `POST /auth/register` - User registration

### Transactions
- `GET /transactions` - Fetch all transactions
- `POST /transactions` - Create new transaction
- `PUT /transactions/:id` - Update transaction
- `DELETE /transactions/:id` - Delete transaction

## Usage

1. Start the backend API server (ensure it's running on port 8080)
2. Run `npm start` to launch the frontend
3. Add transactions using the "Add Transaction" button
4. View your financial summary in the dashboard cards
5. Delete transactions as needed

## Transaction Types

- **INCOME**: Positive transactions (displayed in green)
- **EXPENSE**: Negative transactions (displayed in red)

## Development

The application uses:
- React Hooks (useState, useEffect) for state management
- TypeScript interfaces for type safety
- Axios interceptors for API communication
- Inline styling for component presentation

## Testing

Testing libraries included:
- @testing-library/react
- @testing-library/jest-dom
- @testing-library/user-event

Run tests with `npm test`

## Browser Support

Production builds support:
- >0.2% market share
- Not dead browsers
- Not Opera Mini

Development builds support latest versions of:
- Chrome
- Firefox
- Safari

## License

Private project for Deloitte training purposes
