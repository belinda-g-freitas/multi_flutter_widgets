import 'package:flutter/material.dart';
import 'package:multi_flutter_widgets/models/parallax_location.dart';
import 'package:multi_flutter_widgets/widgets/parallax/location_list_item.dart';

class ParallaxExample extends StatelessWidget {
  const ParallaxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          for (final location in parallaxLocations) LocationListItem(imageFile: location.image, name: location.name, country: location.place),
        ],
      ),
    );
  }
}
