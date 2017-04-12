var HelloWorld = function() {};

HelloWorld.prototype.hello = function(input) {
  var name = "World";
  if (input != "") { name = input }
  return "Hello, " + name + "!";
};

module.exports = HelloWorld;
