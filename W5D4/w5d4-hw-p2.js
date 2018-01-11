const printCallBack = (array) => {
  array.forEach(function(el) {
    console.log(el);
  });
}

const titleize = (names_array, cbf) => {
  let titlized_array = names_array.map(name => "Mx. " + name + " Jingleheimer Schmidt");
  cbf(titlized_array);
}

console.log();
console.log("titleize([\"Mary\", \"Brian\", \"Leo\"], printCallBack)");
titleize(["Mary", "Brian", "Leo"], printCallBack);
console.log();

function Elephant (name, height, tricks_array) {
  this.name = name;
  this.height = height;
  this.tricks_array = tricks_array;
}

Elephant.prototype.trumpet = function() {
  console.log(this.name + " the elephant goes 'phrRRRRRRRRRRR!!!!!'");
}
Elephant.prototype.grow = function() {
  this.height += 12;
}
Elephant.prototype.addTrick = function(trick) {
  this.tricks_array.push(trick);
}
Elephant.prototype.play = function() {
  let num_tricks = this.tricks_array.length;
  let random_trick = Math.floor(Math.random() * num_tricks);
  console.log(this.name + " is " + this.tricks_array[random_trick] + "!");
}

let julius = new Elephant('Julius', 144, ['dancing']);
julius.trumpet();
console.log("Julius is " + julius.height + " inches");
julius.grow();
console.log(julius.name + " grows!");
console.log("Julius is " + julius.height + " inches");
julius.play();
console.log(julius.name + " learns how to fly!")
julius.addTrick('flying');
julius.play();
julius.play();
console.log(julius.tricks_array);
console.log();

Elephant.paradeHelper = function(elephant) {
  console.log(elephant.name + " is trotting by!");
}

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah, julius];
herd.forEach(Elephant.paradeHelper);


const dinerBreakfast = (food) => {
  let order = "I'd like cheesy scrambled eggs please.";
  function addFood() {
    order = order.slice(0, order.length - 8) + " and " + food + " please.";
  }
  if (food) {
    addFood();
  }
  return order;
}

let bfastOrder = dinerBreakfast();
console.log(bfastOrder);
