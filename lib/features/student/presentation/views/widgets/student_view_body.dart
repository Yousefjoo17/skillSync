import 'package:flutter/material.dart';
import 'package:stud/constants.dart';
import 'package:stud/core/methods/Custom_Box_Decoration.dart';
import 'package:stud/core/widgets/List_tile_item.dart';

class StudentViewBody extends StatelessWidget {
  const StudentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 95,
            decoration: customBoxDecoration(
              [kColor1, kColor2, kColor3],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 36,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.white,
                    size: 34,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const ListTileItem(
                  icon: Icon(Icons.people),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
