// Generated by CoffeeScript 1.6.3
var express, route, search;

express = require('express');

search = require('./services');

route = function(app) {
  return app.get('/search', function(req, res) {
    return search(req, function(result) {
      return res.send(result);
    });
  });
};

module.exports = route;
