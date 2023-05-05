import 'package:flutter/material.dart';
import 'package:multi_flutter_widgets/constants.dart';
import 'package:multi_flutter_widgets/parallax/parallax_flow_delegate.dart';

class LocationListItem extends StatelessWidget {
  LocationListItem({super.key, required this.imageFile, required this.name, required this.country});

  final String imageFile;
  final String name;
  final String country;
  final GlobalKey _backgroundImageKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              _buildParallaxBackground(context),
              _buildGradient(),
              _buildTitleAndSubtitle(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegate(scrollable: Scrollable.of(context), listItemContext: context, backgroundImageKey: _backgroundImageKey),
      children: [Image.asset(imageFile, key: _backgroundImageKey, fit: BoxFit.cover)],
    );
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndSubtitle() {
    return Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: const TextStyle(color: white, fontSize: 18, fontWeight: FontWeight.bold)),
          Text(country, style: const TextStyle(color: white, fontSize: 12)),
        ],
      ),
    );
  }
}
