import 'dart:io';
import 'dart:math';

enum gameMove { rock, paper, scissors }

int s47RockGame() {
  final rng = Random();
  while (true) {
    stdout.write('Rock, Paper or Scissors (or Quit)? (r/p/s/q) ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      print('User input: $input');
      var playerMove = gameMove.paper;
      switch (input) {
        case 'r':
          playerMove = gameMove.rock;
          break;
        case 'p':
          playerMove = gameMove.paper;
          break;
        case 's':
          playerMove = gameMove.scissors;
          break;
      }
      final random = rng.nextInt(3);
      final aiMove = gameMove.values[random];
      print('Computer chose ' + aiMove.toString());

      var playerWins = false;
      if (aiMove == playerMove) {
        print('It\'s a draw.');
      } else {
        switch (playerMove) {
          case gameMove.paper:
            if (aiMove == gameMove.rock) {
              playerWins = true;
            }
            break;
          case gameMove.rock:
            if (aiMove == gameMove.scissors) {
              playerWins = true;
            }
            break;
          case gameMove.scissors:
            if (aiMove == gameMove.paper) {
              playerWins = true;
            }
            break;
        }
        print('You ' + (playerWins ? 'win' : 'lose'));
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid input');
    }
  }
  return 0;
}

// pseudocode
// while true
//   show promptexit
//   Read user input from console
//   If input is valid
//     Choose an AI move
//     Compare moves
//     Show the result
//   else if input is q
//     Quit the program
//   else
//     Show Invalid input
