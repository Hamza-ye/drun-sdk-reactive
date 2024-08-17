# Data Run Flutter SDK

[![Flutter SDK CI](https://github.com/Hamza-ye/data-run-sdk/actions/workflows/deploy.yml/badge.svg)](https://github.com/Hamza-ye/data-run-sdk/actions/workflows/deploy.yml)

A New Project forked from the original
project [d2-touch](https://github.com/udsm-dhis2-lab/d2-touch)

## Introduction

DataRun Flutter SDK is a library that abstracts the complexity of interacting with DataRun web api.
It aims to be an starting point to build Flutter apps for DataRun, covering some tasks that any
Flutter app should implement, like metadata and data synchronization.

Main goals:

- **Abstract DataRun web api**. There is no need to perform api queries against the server. The SDK
  includes methods to interact with the web api.
- **Work offline**. It implements a simplified version of DataRun model that is persisted in a local
  database (SQLite). It ensures that all the metadata required to perform data entry tasks is
  available at any time to build the data entry forms. Data is saved locally and upload to the
  server when connectivity is available.
- **Ensure DataRun compatibility**. It encapsulates the changes between DataRun versions so the app
  does not have to care about them. In case the SDK introduces some changes to accommodate a new
  DataRun version, the app can safely detect these changes at compile-time.

## Documentation

Developer-oriented documentation can be found
in [Documentation section](https://interactive-apps.github.io/d2-touch/) in DataRun web. It is
intended to be used by developers.

## Contributing

### Contributing Guidelines

Read through our [contributing guidelines][contributing] to learn about our submission process,
coding rules and more.

### Want to Help?

Want to file a bug, contribute some code, or improve documentation? Excellent! Read up on our
guidelines for [contributing][contributing].

### Code of Conduct

Help us keep DataRun Flutter SDK open and inclusive. Please read and follow
our [Code of Conduct][codeofconduct].

## Community

Join the conversation and help the community.
