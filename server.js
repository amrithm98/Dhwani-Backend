var express = require('express');
var bodyParser = require('body-parser');
var Sequelize = require('sequelize');
var sequelize = new Sequelize('dhwani', 'juggleclouds', 'youcanthackthis');
// var sequelize = new Sequelize('dhwani', 'root', 'linux4amrc');

var app = express();
var port = 11000;
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(function(req, res, next) {

    // Website you wish to allow to connect
    res.setHeader('Access-Control-Allow-Origin', '*');

    // Request methods you wish to allow
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');

    // Request headers you wish to allow
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');

    // Set to true if you need the website to include cookies in the requests sent
    // to the API (e.g. in case you use sessions)
    res.setHeader('Access-Control-Allow-Credentials', true);

    // Pass to next layer of middleware
    next();
});
var user = sequelize.define('user', {
    id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    name: { type: Sequelize.STRING },
    email: { type: Sequelize.STRING },
    college: Sequelize.STRING,
    accomodation: Sequelize.ENUM('YES', 'NO'),
    sex: Sequelize.ENUM('MALE', 'FEMALE', 'OTHER'),
    phone: { type: Sequelize.STRING(20), unique: true },
    events: Sequelize.STRING
});
var eventsTable = sequelize.define('eventsTable', {
    eventId: Sequelize.INTEGER(11),
    name: Sequelize.STRING,
    day: Sequelize.STRING,
    time: Sequelize.STRING,
    venue: Sequelize.STRING,
    prize: Sequelize.BIGINT(10)
});
var registeredEvent = sequelize.define('registeredEvent', {
    studentId: Sequelize.INTEGER(5),
    eventId: Sequelize.INTEGER(3)
});
app.post('/register', function(req, res) {
    sequelize.sync().then(function() {
        return user.create({
            name: req.body.name,
            email: req.body.email,
            college: req.body.college,
            accomodation: req.body.accomodation,
            sex: req.body.sex,
            phone: req.body.phone,
            events: req.body.events
        });
    }).then(function(data) {
        var jsonData = data.get({
            plain: true
        });
        res.json({ "Success": true, "message": "User Added" });
    }).catch(function(err) {
        res.json({ "Success": false, "message": err });

    });
});
app.get('/eventsList', function(req, res) {
    eventsTable.findAll({
        attributes: ['eventId', 'name', 'day', 'time', 'venue', 'prize']
    }).then(function(data) {
        var obj = JSON.parse(JSON.stringify(data));
        console.log(obj);
        res.json(obj);
    });
});
app.post('/userDetails', function(req, res) {
    var id = req.body.id;
    var phone = req.body.phone;
    if (id != null) {
        user.findOne({
            where: {
                'id': id
            }
        }).then(function(data) {
            var response = data.get({ plain: true });
            console.log(response);
            res.json(response);
        }).catch(function(err) {
            res.json({ "Success": false, "error": err });
        });
    } else if (phone != null) {
        user.findOne({
            where: {
                'phone': phone
            }
        }).then(function(data) {
            if (data != null) {
                var response = data.get({ plain: true });
                console.log(response);
                res.json(response);
            } else
                res.json({ "Success": false });
        }).catch(function(err) {
            res.json({ "Success": false, "error": err });
        });;
    }
});
app.post('/getRegisteredEvents', function(req, res) {
    var phone = req.body.phone;
    var listEvents = [];
    if (phone != null) {
        user.findOne({
            where: {
                'phone': phone
            }
        }).then(function(data) {
            if (data != null) {
                var response = data.get({ plain: true });
                console.log(response);
                var obj = [];
                var array = JSON.parse("[" + response.events + "]");
                for (var i = 0; i < array.length; i++) {
                    obj.push({ eventId: array[i] })
                }
                eventsTable.findAll({
                    attributes: ['eventId', 'name', 'day', 'time', 'venue', 'prize'],
                    where: { $or: obj }
                }).then(function(data) {
                    res.json(data);
                });
            } else
                res.json({ "Success": false });
        }).catch(function(err) {
            res.json({ "Success": false, "error": err });
        });;
    } else {
        res.json({ "Success": false });

    }
});
app.listen(port);
console.log('Server up @ port ' + port)