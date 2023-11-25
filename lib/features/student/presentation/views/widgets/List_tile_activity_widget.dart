import 'package:flutter/material.dart';
import 'package:stud/constants.dart';
import 'package:stud/core/utils/assets_data.dart';
import 'package:stud/features/activity/presentation/view_model/activity_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ListTileActivityWidget extends StatelessWidget {
  const ListTileActivityWidget({super.key, required this.activityModel});
  final ActivityModel activityModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          leading: const Icon(Icons.people),
          title: Row(
            children: [
              Text(
                activityModel.name!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Row(
                children: [
                  IconButton(
                    onPressed: () async {
                      final Uri myUrl = Uri.parse(activityModel.fb!);
                      if (!await launchUrl(myUrl)) {
                        throw Exception('Could not launch $myUrl');
                      }
                    },
                    icon: const Icon(
                      Icons.facebook,
                      color: Colors.blue,
                      size: 26,
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      final Uri myUrl = Uri.parse(activityModel.linkedin!);
                      if (!await launchUrl(myUrl)) {
                        throw Exception('Could not launch $myUrl');
                      }
                    },
                    child: Image.asset(
                      AssetsData.kLinkedin,
                    ),
                  ),
                ],
              )
            ],
          ),
          subtitle: Column(
            children: [
              Text(activityModel.majors!),
              Text(activityModel.skills!),
              Text(activityModel.city!),
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
