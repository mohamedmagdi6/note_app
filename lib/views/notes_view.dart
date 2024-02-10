import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomAppBar(),
            Expanded(
              child: NotesListView(),
            )
          ],
        ),
      ),
    );
  }
}
