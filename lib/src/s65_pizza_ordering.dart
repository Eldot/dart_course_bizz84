/*
Given the following map of prices, write a program to calculate the 
total cost for a given order
The program should print 'Total: $13
Note if the pizza is not on the menu, the program should print
'pineapple pizza is not on the menu'
*/

const pizzaPrices = {
  'margherita': 5.5,
  'pepperoni': 7.5,
  'vegetarian': 6.5,
};

int s65PizzaOrdering() {
  const order = ['margherita', 'pepperoni', 'pineapple'];
  var total = 0.0;
  for (var item in order) {
    final cost = pizzaPrices[item];
    if (cost == null) {
      print('$item pizza is not on the menu');
    } else {
      total += cost;
    }
  }
  print('Total: \$$total');

  return 0;
}
