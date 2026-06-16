import 'package:flutter/material.dart';

class NotesItem extends StatelessWidget {
  NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter Tips",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Text(
              "build your hobba with ",
              style: TextStyle(color: Colors.black.withValues(alpha: .5)),
            ),
            trailing: Icon(Icons.delete, color: Colors.black),
          ),
          Text("1 may 2026", style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
