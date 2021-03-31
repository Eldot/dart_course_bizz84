class OrderPrice {
  var totalCost = 0.0;
  var error = false;
  var msg = '';
}

const pizzaPrices = {
  'margherita': 5.5,
  'pepperoni': 7.5,
  'vegetarian': 6.5,
};

int s94PizzaOrdering() {
  const order = ['margherita', 'pepperoni'];
  final result = calculateOrderPrice(order);
  if (result.error) {
    print(result.msg);
    return -1;
  } else {
    print('Total price: \$${result.totalCost}');
    return 0;
  }
}

OrderPrice calculateOrderPrice(List<String> order) {
  var price = OrderPrice();
  for (var item in order) {
    final cost = pizzaPrices[item];
    if (cost == null) {
      price.msg += '$item pizza is not on the menu';
      price.error = true;
      price.totalCost = 0.0;
      return price;
    } else {
      price.totalCost += cost;
    }
  }
  return price;
}
