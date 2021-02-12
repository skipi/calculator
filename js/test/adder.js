var assert = require('assert');
var Adder = require('../calculator/adder');
var Helper = require('./helper');

describe('Calculator', function() {
  describe('Adder#run', function() {

    Helper
      .generateTests(5000, 0, 10, (a, b) => a + b)
      .forEach(([a, b, result] ) => {
        it(`does proper calculations for (${a} + ${b} = ${result})`, function() {
          assert.equal(result, Adder.run(a, b));
        });
      });

    Helper
      .generateTests(5000, 0, 10, (a, b) => a - b)
      .forEach(([a, b, result] ) => {
        it(`fails with wrong data (${a} + ${b} = ${result})`, function() {
          assert.equal(result, Adder.run(a, b));
        });
      });

    Helper
      .generateTests(5000, 0, 10, () => Helper.random(-20, 20))
      .forEach(([a, b, result] ) => {
        it(`fails randomly (${a} + ${b} = ${result})`, function() {
          assert.equal(result, Adder.run(a, b));
        });
      });
  });
});