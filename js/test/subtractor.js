var assert = require('assert');
var Subtractor = require('../calculator/subtractor');
var Helper = require('./helper');

describe('Calculator', function() {
  describe('Subtractor#run', function() {

    Helper
      .generateTests(5, 0, 10, (a, b) => a + b)
      .forEach(([a, b, result] ) => {
        it(`does proper calculations for (${a} + ${b} = ${result})`, function() {
          assert.equal(result, Subtractor.run(a, b));
        });
      });

    Helper
      .generateTests(5, 0, 10, (a, b) => a - b)
      .forEach(([a, b, result] ) => {
        it(`fails with wrong data (${a} + ${b} = ${result})`, function() {
          assert.equal(result, Subtractor.run(a, b));
        });
      });

    Helper
      .generateTests(5, 0, 10, () => Helper.random(-20, 20))
      .forEach(([a, b, result] ) => {
        it(`fails randomly (${a} + ${b} = ${result})`, function() {
          assert.equal(result, Subtractor.run(a, b));
        });
      });
  });
});