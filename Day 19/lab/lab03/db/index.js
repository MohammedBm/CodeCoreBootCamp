const pgp = require('pg-promise')();
const db = pgp({
  host: 'localhost',
  database: 'exp_lab03'
})

module.exports = db;
