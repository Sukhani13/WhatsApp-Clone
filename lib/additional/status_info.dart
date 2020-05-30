import 'package:flutter/material.dart';
import 'mystatus.dart';
import 'recent_updates.dart';
import 'viewed_updates.dart';

class StatusInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) => (index < 2)
              ? (index == 0) ? MyStatus() : RecentUpdates()
              : ViewedUpdates()),
    );
  }
}
