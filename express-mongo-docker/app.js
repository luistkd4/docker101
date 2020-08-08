var express = require('express');
const bodyParser = require('body-parser');
const UserRouter = express.Router();
const { users } = require ('./settings');
const { json } = require('body-parser');


// routes
app = express();
app.use(express.json());
app.use(bodyParser.urlencoded({extended: false}));

app.get('/', function (req, res) {
  res.send('Hello World!\n');
});

// create user
app.post('/create', function(req, res) {
    console.log(req.body.name);
    var newUser = new users({name: req.body.name});
    newUser.save();
    res.send("New User Created");
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