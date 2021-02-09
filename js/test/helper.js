

module.exports = {
  random(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min)) + min;
  },

  randomTest(min, max, valFun) {
    let [a, b] = [this.random(min, max), this.random(min, max)];

    return [a, b, valFun(a, b)];

  },

  generateTests(num, min, max, valFun) {
    let tests = [];
    for(let i = 0; i < num; i++) {
      tests.push(this.randomTest(min, max, valFun));
    }
    return tests;
  }
}