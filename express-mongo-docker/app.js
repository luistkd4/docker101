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
app.post('/create', function(req, res) {
  var name = req.body.name;
  var newUser = new users({name: name});
  newUser.save();
  res.send('Bob Esponja\'s user created');
});

//list users
app.get('/users', function(req,res) {
    users.find({}, function (err, users){
        res.send(users);
    });
});

//app.use(bodyParser.json());
//app.use(bodyParser.urlencoded({ extended: true }));

//start server
app.listen(8080, function () {
  console.log('Example app listening on port 8080!');
});