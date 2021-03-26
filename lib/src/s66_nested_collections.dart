/*
Write a program that calculates the average rating score for
each restaurant and adds it as an 'avgRating': value'
key-value pair for that restaurant
*/

int s66NestedCollections() {
  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [5.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];
  for (var restaurant in restaurants) {
    final ratings = restaurant['ratings'] as List<double>;
    // Calculate average rating
    var total = 0.0;
    for (var rating in ratings) {
      total += rating;
    }
    final avgRating = total / ratings.length;
    restaurant['avgRating'] = avgRating; // Average rating here
    print(restaurant);
  }
  return 0;
}
