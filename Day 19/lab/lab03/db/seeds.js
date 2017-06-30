const faker = require('faker');
const db = require('./index');

db.query(`
  INSERT INTO posts (task)
  VALUES ($<task>)
  `)
