int s71ShoppingList() {
  runOldShoppingList();
  print('');
  runNewShoppingList();
  return 0;
}

void runOldShoppingList() {
  const bananas = 5;
  const apples = 6;
  const grains = {
    'pasta': '500g',
    'rice': '1kg',
  };
  const addGrains = true;
  var shoppingList = {};
  if (bananas > 0) {
    shoppingList['bananas'] = bananas;
  }
  if (apples > 0) {
    shoppingList['apples'] = apples;
  }
  if (addGrains) {
    shoppingList.addAll(grains);
  }
  print('Old Shopping List: ');
  print(shoppingList);
  // prints {bananas: 5, apples: 6, pasta: 500g, rice: 1kg}
}

/*
Rewrite this code so that the 'shoppingList' variable is initialized using 
collection-if, collection-for or spread, and the program output is unchanged
*/

void runNewShoppingList() {
  const bananas = 5;
  const apples = 6;
  const grains = {
    'pasta': '500g',
    'rice': '1kg',
  };
  const addGrains = true;

  final shoppingList = {
    if (bananas > 0) 'bananas': bananas,
    if (apples > 0) 'apples': apples,
    if (addGrains) ...grains,
  };
  print('New Shopping List: ');
  print(shoppingList);
  // prints {bananas: 5, apples: 6, pasta: 500g, rice: 1kg}
}

/*
  This program prints: 
  Old Shopping List:
  {bananas: 5, apples: 6, pasta: 500g, rice: 1kg}
  New Shopping List:
  {bananas: 5, apples: 6, pasta: 500g, rice: 1kg}
*/
