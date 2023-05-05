import 'package:multi_flutter_widgets/constants.dart';

class Location {
  const Location({required this.name, required this.place, required this.image});

  final String name;
  final String place;
  final String image;
}

const parallaxLocations = [
  Location(name: 'Mount Rushmore', place: 'USA', image: '$imagePath/mount-rushmore.jpg'),
  Location(name: 'Gardens By The Bay', place: 'Singapore', image: '$imagePath/singapore.jpg'),
  Location(name: 'Machu Picchu', place: 'Peru', image: '$imagePath/machu-picchu.jpg'),
  Location(name: 'Vitznau', place: 'Switzerland', image: '$imagePath/vitznau.jpg'),
  Location(name: 'Bali', place: 'Indonesia', image: '$imagePath/bali.jpg'),
  Location(name: 'Mexico City', place: 'Mexico', image: '$imagePath/mexico-city.jpg'),
  Location(name: 'Cairo', place: 'Egypt', image: '$imagePath/cairo.jpg'),
];
