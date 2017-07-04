const express = require('express');

const cookieParser = require('cookie-parser');
const app = express();
const path = require('path');
const logger = require('morgan');
const  bodyParser = require('body-parser');


app.set('view engine', 'ejs');


app.use(logger('dev'))
app.use(express.static(path.join(__dirname,`public`)))
app.use(bodyParser.urlencoded({extended: false}));
app.use(cookieParser());



app.get('/',function(req,res){
  res.render('index')
})


app.get('/task',(req,res)=>{
  res.render('task',{task:{}})
})


app.post('/', (req, res) => {
  const post = req.body
  //console.log(post)
  db.query(
      `INSERT INTO posts (task) VALUES ($<task>)`, task)
    .then(() => {
      res.redirect('/task')
    }).catch((err)=>{
      res.send(err)
    })

});

router.get('/', (req, res) => {
  db.query(`
      SELECT * FROM tasks ORDER BY id DESC
    `)
    .then(posts => {
      res.render('posts/index', {
        posts: posts
      });
    })
});

app.post('/',(res,req)=>{
  res.render('index',{task:req.body})
})




const PORT = 4545;
app.listen(PORT, ()=>{
  console.log(`Server is listening to port ${PORT}`);
})
