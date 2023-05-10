import 'package:flutter/material.dart';
import 'package:multi_flutter_widgets/widgets/expandable_fab/expandable_fab.dart';

// @immutable
class ExampleExpandableFab extends StatelessWidget {
  static const _actionTitles = ['Create Post', 'Upload Photo', 'Upload Video'];

  const ExampleExpandableFab({super.key});

  void _showAction(BuildContext context, int index) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(_actionTitles[index]),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CLOSE'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expandable FAB')),
      floatingActionButton: ExpandableFab(
        distance: 112.0,
        children: [
          ActionButton(onPressed: () => _showAction(context, 0), icon: const Icon(Icons.format_size)),
          ActionButton(onPressed: () => _showAction(context, 1), icon: const Icon(Icons.insert_photo)),
          ActionButton(onPressed: () => _showAction(context, 2), icon: const Icon(Icons.videocam)),
        ],
      ),
    );
  }
}
