import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNotesListTile extends StatelessWidget {
  const CustomNotesListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'build your career now with me ',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 18),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.trash),
              color: Colors.black,
              iconSize: 24,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Text(
              'May21,2022',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
