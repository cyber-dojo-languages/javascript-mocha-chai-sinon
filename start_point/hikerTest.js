'use strict';

const hiker = require('./hiker.js');

describe('Should Style: Answer', () => {
  it('to life the universe and everything', () => {
    hiker.answer().should.equal(42);
  });
});
