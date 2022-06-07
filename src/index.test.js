const stats = require("./index");
const expect = require("chai").expect;

describe("state-names", () => {
  it('should work!', () => {
    expect(stats.all).to.satisfy(isArrayOfObjects);

    function isArrayOfObjects(arr) {
        return arr.every( (item) => {
          return typeof item === "object";
        })
    }
  })
})

describe("random", () => {
  it("should return a random item", () => {
    const randomItem = stats.random();
    expect(stats.all).to.include(randomItem);
  })

  it("check array items", () => {
    const randomItem = stats.random(3);
    expect(randomItem).to.have.length(3);
  })
})