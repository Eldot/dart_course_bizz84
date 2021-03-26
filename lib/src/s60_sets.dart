int s60Sets() {
  const setA = {1, 3};
  const setB = {3, 5};

  print('''
    Given two integer sets A and B, 
    calculate and print the set of elements 
    that are not in both sets. 
    Then calculate and print 
    the sum of all the items in the resulting set
    ''');
  print('');

  print('Set A = $setA');
  print('Set B = $setB');
  print('');

  var valuesInAbutNotinB = <int>{};
  var valuesInBbutNotinA = <int>{};

  valuesInAbutNotinB = setA.difference(setB);
  valuesInBbutNotinA = setB.difference(setA);
  print('Values in A but not in B = $valuesInAbutNotinB');
  print('Values in B but not in A = $valuesInBbutNotinA');
  print('');

  // Andrea's solution
  // final e = a.union(b).difference(a.intersection(b));

  var valuesNotInBoth = valuesInAbutNotinB.union(valuesInBbutNotinA);
  var sum = 0;
  for (var n in valuesNotInBoth) {
    sum += n;
  }
  print('Sum of $valuesNotInBoth is $sum');

  return 0;
}

// Save and in the Terminal type - dart run main.dart
