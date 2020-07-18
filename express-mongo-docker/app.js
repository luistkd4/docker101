var express = require('express');
const bodyParser = require('body-parser');
const UserRouter = express.Router();
const { users } = require ('./settings');

// routes
app = express();

app.get('/', function (req, res) {
  res.send('Hello World!\n');
});

// create user
//app.get('/create', function(req,res){
//  var newUser = new users({name:'Bob Esponja'});
//  newUser.save();
//  res.send('Bob Esponja\'s user created');
//})

UserRouter.route('/create').post(function (req, res) {
  const user = new Users(req.body);
  user.save()
    .then(user => {
      res.json('User added successfully');
    })
    .catch(err => {
      res.status(400).send("unable to save to database");
    });
});

//list users
app.get('/users', function(req,res) {
    users.find({}, function (err, users){
        res.send(users);
    });
});

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

//start server
app.listen(8080, function () {
  console.log('Example app listening on port 8080!');
});