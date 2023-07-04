import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  ProjectCard({Key? key, required this.project,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(project.image!, fit: BoxFit.cover,),
          SizedBox(height: kDefaultPadding,),
          Text(project.title!, maxLines: 2,overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.subtitle2,),
          SizedBox(height: kDefaultPadding,),
          Expanded(child: Text(project.description!,maxLines: 3, overflow: TextOverflow.ellipsis, style: TextStyle(height: 1.5),)),
          SizedBox(height: kDefaultPadding,),
          TextButton(
              onPressed: (){},
              child: Text('More Info', style: TextStyle(color: kPrimaryColor),))
        ],
      ),
    );
  }
}