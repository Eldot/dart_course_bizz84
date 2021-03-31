import 'dart:io';

import 'package:dart_course_bizz84/src/s47_rock_game.dart';
import 'package:dart_course_bizz84/src/s60_sets.dart';
import 'package:dart_course_bizz84/src/s65_pizza_ordering.dart';
import 'package:dart_course_bizz84/src/s66_nested_collections.dart';
import 'package:dart_course_bizz84/src/s71_shopping_list.dart';
import 'package:dart_course_bizz84/src/s73_cmdline_processing.dart';
import 'package:dart_course_bizz84/src/s94_pizza_ordering.dart';

void main(List<String> arguments) {
  var fnToRun = 0;
  var argsOk = true;
  if (arguments.isEmpty) {
    argsOk = false;
  } else {
    fnToRun = int.tryParse(arguments.first) ?? 0;
    if (fnToRun == null) {
      argsOk = false;
    }
  }
  if (!argsOk) {
    print('''Usage: To run this app, cd to the app folder and enter: 
    'dart run <command>'
    where
      <command> is one of:
        47 (for Rock Game)
        60 (for Sets)
        65 (for Pizza ordering)
        66 (for Nested Collections)
        71 (for Shopping list)
        73 (for CSV file analysis), with
          <argument 2> = 'f' for file, and
          <argument 3> = filename.csv, located in the app folder.
        94 (for Pizza ordering v2)
          ''');
    exit(1); // Note! if no error, exit code is 0, else non-zero
  }

  var msg = '';
  // final inputFile = arguments.first;
  var fnResult = 0;

  switch (fnToRun) {
    case 47:
      fnResult = s47RockGame();
      break;
    case 60:
      fnResult = s60Sets();
      break;
    case 65:
      fnResult = s65PizzaOrdering();
      break;
    case 66:
      fnResult = s66NestedCollections();
      break;
    case 71:
      fnResult = s71ShoppingList();
      break;
    case 73:
      if (arguments.length < 3) {
        msg = 's73 Command Line parameters missing.';
        fnResult = -1;
      } else {
        fnResult = s73CmdLineProcessing(arguments[1], arguments[2]);
      }
      break;
    case 94:
      fnResult = s94PizzaOrdering();
      break;
    default:
      msg = 'No function selected. Arguments are $arguments';
      break;
  }
  if (fnResult != 0) {
    print(msg + '. [Result: $fnResult]');
  }
}
