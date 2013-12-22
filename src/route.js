// Generated by CoffeeScript 1.6.3
(function() {
  var express, route, search;

  express = require('express');

  search = require('./services');

  route = function(app) {
    app.get('/', function(req, res) {
      return console.log(req);
    });
    app.get('/search', function(req, res) {
      return search(req, function(result) {
        return res.send(result);
      });
    });
    app.get('/testCard/:testCardId', function(req, res) {
      return console.log(req);
    });
    app.get('/result/:orderNumber/:sessionKey', function(req, res) {
      return console.log(req);
    });
    app.get('/develop', function(req, res) {
      return console.log(req);
    });
    app.get("/develop/newTestCardId", function(req, res) {
      return console.log(req);
    });
    app.get('/admin', function(req, res) {
      return console.log(req);
    });
    app.get('/admin/release', function(req, res) {
      return console.log(req);
    });
    return app.get('/admin/approve', function(req, res) {
      return console.log(req);
    });
  };

  module.exports = route;

}).call(this);
