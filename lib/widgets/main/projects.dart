import 'package:flutter/material.dart';
import 'package:real_estate_responsive_ui/constants.dart';
import 'package:real_estate_responsive_ui/models/projects.dart';
import 'package:real_estate_responsive_ui/responsive.dart';

import '../../models/project.dart';
import 'project_card.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Our Projects', style: Theme.of(context).textTheme.headline6,),
          Responsive(
              web: BuildGridView(
                  itemCount: demoProjects.length,
                  crossAxisCount: 3,
                  childAspectRatio: 0.75,
                  itemBuilder: (context, index) {
                    return ProjectCard(project: demoProjects[index],);
                  }
              ),
              mobile: BuildGridView(
                  itemCount: demoProjects.length,
                  crossAxisCount: 1,
                  childAspectRatio: 0.75,
                  itemBuilder: (context, index) {
                    return ProjectCard(project: demoProjects[index],);
                  }
              ),
            mobileLarge: BuildGridView(
                itemCount: demoProjects.length,
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                itemBuilder: (context, index) {
                  return ProjectCard(project: demoProjects[index],);
                }
            ),
            tablet: BuildGridView(
                itemCount: demoProjects.length,
                crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
                childAspectRatio: 0.75,
                itemBuilder: (context, index) {
                  return ProjectCard(project: demoProjects[index],);
                }
            ),
          )
        ],
      ),
    );
  }

  GridView BuildGridView({required int itemCount, required int crossAxisCount, required double childAspectRatio, required IndexedWidgetBuilder itemBuilder}) {
    return GridView.builder(
          shrinkWrap: true,
           itemCount: itemCount,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                childAspectRatio: childAspectRatio,
                crossAxisSpacing: kDefaultPadding,
                mainAxisSpacing: kDefaultPadding
          ),
          itemBuilder: itemBuilder,);
  }
}


