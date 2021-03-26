# course_dart_bizz84.dart

A simple command-line app to run the selected code solution for learning the Dart Language.

## Disclaimer

Although I have experience in writing Windows programs and embedded firmware professionaly, I am reasonably new to GitHub, so this app and files including this Readme are my first attempts. They are written more for me to learn from and improve than for others to reuse.

## Prerequisites

To run this app, you will need the Dart SDK and an editor like VSCode. 

This app allows the user to choose which code solution I have written for the course Sections set in Andrea Bizzotto's Udemy course - The Complete Dart Language Guide for Beginners and Beyond. For more information, please refer to that course.

## Design

Normally, I would create a separate GitHub repo for each code solution in the course, but instead I have put each code solution (each identified with the ID of the related course Section) into the same program in the same repo, all mangaged and accessed through a top-level command-line app main. 

By supplying the correct command-line argument(s), the user can select and run the required code solution, making use of the remaining command-line arguments, as required. So for example entering the command:
```
dart run dart_course_bizz84.dart 47
```
will run the sub-program '47' which is the Rock-Paper-Scissors game.

## Useage

The first command-line argument selects the required code solution to run. The currently-supported values of this first parameter are listed below, each section including a description of that option's functionality and any further command-line arguments required.

### 47

This is a game for playing Rock-Paper-Scissors against the computer. On starting, the user is prompted to enter 'r', 'p', 's' (or 'q' to quit). After entering one of the three valid game choices, the computer makes its own random choice and then the two are compared to see who has won. The computer prints out the result in the terminal window and asks the user to select another choice.

### 60

This is a calculation game. Given two integer sets a and b, the program calculates and prints a new set of elements that belong to either set but not both. Then it calculates and prints the sum of all the items of this new set.

### 65

Given the dollar price for these pizzas:
```
'margherita': 5.5, 
'pepperoni': 7.5, 
'vegetarian': 6.5
 ```
 the program calculates and prints the total cost for a given order. If the pizza in the list, the program prints something like 'pineapple pizza is not on the menu'.

### 66

Given the following information on three restaurants 

```
#1: 'name': 'Pizza Mario', 'cuisine': 'Italian', 'ratings': [5.0, 3.5, 4.5],
#2: 'name': 'Chez Anne', 'cuisine': 'French', 'ratings': [5.0, 4.5, 4.0],
#3: 'name': 'Navaratna', 'cuisine': 'Indian', 'ratings': [4.0, 4.5, 4.0],
```  
the program calculates the average rating score for
each restaurant and adds it as an 'avgRating': value'
key-value pair for that restaurant.

### 71

This program prints a shopping list that has been constructed incrementally. It then prints the same Shopping list that has been constructued by using 
collection-if, collection-for or spread functions, showing that the lists are the same

### 73

This program requires two more command-line arguments:
```
Argument 2: 'f' 
```
This argument ('f') tells the program that the next parameter will be a filename.
```
Argument 3: <filename.csv>
```
Example: The following command can be entered to demonstrate the 73 program using the built-in sample file "s73TestFile":

```
dart run dart_course_bizz84.dart 73 f ../lib/assets/s73TestFile.csv
```

The first row in the file must be text column headers (listed below with sample data for each column):

```
"Job","Code Course"
"Clocked In","03/01/2019 23:00"
"Clocked Out","04/01/2019 00:30"
"Duration","1.5"
"Comment",""
"Tags","Blogging"
```
The program computes and lists the total time spent by Activity Type (column 'Tags') as shown below:
```
1.6h    Admin
1.7h    Client Leads
2.0h    BizDev / Sponsors
14.7h   Analytics / Growth
25.2h   Promotion
52.4h   Unallocated
54.5h   Community engagement
62.9h   Blogging
66.2h   Website / Setup
83.1h   Development
166.0h  YouTube Production
393.9h  Flutter Firebase Course

Total for all tags: 924.2h

```
## Tests

There are no automated tests for this system, yet :)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* For the original of this Readme template: https://gist.github.com/PurpleBooth/b24679402957c63ec426

* For the course this code is written for: Andrea Bizzotto


