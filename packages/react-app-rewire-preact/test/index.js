var test = require('tape');

var rewirePreact = require('../index.js');

test('Preact Rewire adds key', function (t) {
    t.plan(1);
    var config = rewirePreact({});
    t.equal(config.hasOwnProperty('resolve'),true);
});