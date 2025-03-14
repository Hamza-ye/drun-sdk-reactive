enum DErrorComponent { Server, SDK, Database }

enum DErrorCode {
  // Network-related errors
  networkTimeout, // Timeout error for config requests
  networkConnectionFailed, // Connection failure (e.g., no internet connection)

  // Authentication|Account errors
  authInvalidCredentials, // Invalid credentials provided
  authSessionExpired, // User session has expired
  noAuthenticatedUser,
  noAuthenticatedUserOffline,
  differentOfflineUser,
  accountDisabled,

  // Database-related errors
  databaseConnectionFailed, // Failed to connect to the database
  databaseQueryFailed, // Database query failed
  databaseInternalError, // Internal database error
  // Generic errors
  unknownError, // General unknown error

  // Other potential categories can be added
  validationError, // Form validation error
  syncError, // Form validation error
  apiError, // Error during API interaction
}
