const express = require('express');
const router = express.Router();
const db = require('../db');


router.get('/new', (req, res) => {
  res.render('posts/new')
});

router.post('/', (req, res) => {
  const post = req.body
  //console.log(post)

  db.query(
      `INSERT INTO posts (title, content, author) VALUES ($<title>, $<content>, $<author>)`, post)
    .then(() => {
      res.redirect('/posts')
    }).catch((err)=>{
      res.send(err)
    })

});

//posts#index URL ro reach /posts 👇 VERB : GET
router.get('/', (req, res) => {
  db.query(`
      SELECT * FROM posts ORDER BY id DESC
    `)
    .then(posts => {
      res.render('posts/index', {
        posts: posts
      });
    })
});





//posts#show URL: /posts/:id HTTP verb: GET
router.get('/:id', (req, res) => {
  const {
    id
  } = req.params;
  // ☝️ this is short cut of const id =req.params.id
  db.one(
      `SELECT * FROM posts WHERE id = $<id> LIMIT 1`, {
        id: id
      }
    )
    .then(post => {
      res.render('posts/show', {
        post: post
      });
    })
    .catch(err => res.send(err));
});







module.exports = router;
