import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/recommendation.dart';

class RecommendationCard extends StatelessWidget {
  final Recommendation recommendation;
  const RecommendationCard({Key? key, required this.recommendation,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        padding: EdgeInsets.all(kDefaultPadding),
        color: kSecondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(recommendation.image!),
              ),
              title: Text(recommendation.name!, style: Theme.of(context).textTheme.subtitle2,),
              subtitle: Text(recommendation.source!, style: Theme.of(context).textTheme.bodyText1,),
            ),
            Text(recommendation.text!,maxLines: 3,overflow: TextOverflow.ellipsis, style: TextStyle(height: 1.5),)
          ],
        )
    );
  }
}