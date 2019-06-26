<h1 align="center">The NapolyAPI</h1>
<p>
  <img src="https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000" />
  <a href="https://github.com/Divepit/napolyAPI/wiki">
    <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg" target="_blank" />
  </a>
  <a href="https://opensource.org/licenses/MIT">
    <img alt="License: MIT License" src="https://img.shields.io/badge/License-MIT License-yellow.svg" target="_blank" />
  </a>
</p>

> Ruby on Rails API for the Napoly Project
---
## Install
To install the Ruby on Rails application run

```sh
bundle install
```
and

```sh
rails db:reset
```
---
## Usage
The frontend APP for the NapolyAPI can be found [here](https://github.com/Divepit/napoly)

Start the API:
```sh
rails s
```
###### Make sure the redis token store is running. If it is not, you will not be able to log in to the app. The setup instructions for Redis can be found [here](https://redis.io/topics/quickstart).

The API Seed contains an example user with username `testuser@example.com` and password `password`.

The API Seed also generates three Semesters and two departments so you are ready to add subjects.
If you want to clean the database and return to this state run:
```sh
rails db:reset
```
---
## License

Copyright © 2019 [Marco Trentini](https://github.com/Divepit).<br />
This project is [MIT License](https://opensource.org/licenses/MIT) licensed.
