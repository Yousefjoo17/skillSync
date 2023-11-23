import 'package:flutter/material.dart';
import 'package:stud/constants.dart';
import 'package:stud/core/utils/assets_data.dart';

class ListTileActivityWidget extends StatelessWidget {
  const ListTileActivityWidget({super.key, required this.icon});
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          leading: icon,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "IEEE",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.blue,
                  size: 26,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  AssetsData.kLinkedin,
                ),
              )
            ],
          ),
          subtitle: const Column(
            children: [
              Text("Enginnering"),
              Text("programming, innovation"),
              Text("Giza"),
            ],
          ),
        ),
        Divider(
          indent: 20,
          endIndent: 20,
          color: kColor1,
        )
      ],
    );
  }
}
