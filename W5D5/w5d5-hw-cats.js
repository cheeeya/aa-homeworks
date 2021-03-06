function Cat () {
  this.name = "Kiwi";
  this.age = 1;
}

function Dog () {
  this.name = "Hercules";
  this.age = 5;
}

Dog.prototype.chase = function (cat) {
  console.log(`My name is ${this.name} and I'm chasing ${cat.name}!`)
};

Cat.prototype.chase = function(dog) {
  console.log(`I\'m ${this.name} and I'm terrorizing ${dog.name}!`)
}

const Kiwi = new Cat();
const Hercules = new Dog();

Hercules.chase(Kiwi);
Hercules.chase.call(Hercules, Kiwi);
Hercules.chase.call(Kiwi, Hercules);
Hercules.chase.apply(Kiwi, [Hercules]);
Kiwi.chase.call(Hercules, Kiwi);
