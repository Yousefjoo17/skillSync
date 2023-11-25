import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stud/constants.dart';
import 'package:stud/core/methods/Custom_Box_Decoration.dart';
import 'package:stud/features/student/presentation/views/widgets/List_tile_activity_widget.dart';
import 'package:stud/main.dart';

class StudentViewBody extends StatefulWidget {
  const StudentViewBody({super.key});
  @override
  State<StudentViewBody> createState() => _StudentViewBodyState();
}

class _StudentViewBodyState extends State<StudentViewBody> {
  
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
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
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
              itemCount: activities.length,
              itemBuilder: (context, index) {
                return  ListTileActivityWidget(
                  activityModel: activities[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
