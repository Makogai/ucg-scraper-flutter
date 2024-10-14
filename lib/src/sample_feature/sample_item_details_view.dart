import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  const SampleItemDetailsView({super.key});

  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    // Grabbing the argument and casting it to int
    final int itemId = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Item Details'),
        // Set item id in title
        title: Text('Item Details ${itemId}'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text('Item Details $itemId'),
            ),
          ],
        ),

      ),
    );
  }
}
