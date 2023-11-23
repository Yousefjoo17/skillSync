import 'package:flutter/material.dart';
import 'package:stud/constants.dart';

class ListTileItem extends StatelessWidget {
  const ListTileItem({super.key, required this.icon});
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          ListTile(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            leading: icon,
            title: const Text(
              "IEEE",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Column(
              children: [
                Text("Enginnering"),
                Text(
                  "programming, innovation",
                )
              ],
            ),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            color: kColor1,
          )
        ],
      ),
    );
  }
}
