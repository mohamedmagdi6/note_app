import 'package:flutter/material.dart';

import 'custom_notes_container.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 9,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 12),
            child: CustomNotesListTile(),
          );
        });
  }
}
