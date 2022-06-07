const statesNames =  require("./states_hash.json");
const uniqueRandomArray = require("unique-random-array");
const getrandom = uniqueRandomArray(statesNames);

module.exports = {
  all: statesNames,
  random: random
}
function random(number) {
  if(number === undefined) {
    return getrandom();
  }
  else {
      var randomitems = [];
      for(var i=0; i<number;i++) {
          randomitems.push(getrandom());
      }
      return randomitems;
  }
}