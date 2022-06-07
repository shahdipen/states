const statesNames =  require("./states_hash.json");
const uniqueRandomArray = require("unique-random-array");
module.exports = {
  all: statesNames,
  random: uniqueRandomArray(statesNames)
}