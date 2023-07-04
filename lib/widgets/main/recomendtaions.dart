import 'package:flutter/material.dart';
import 'package:real_estate_responsive_ui/constants.dart';
import 'package:real_estate_responsive_ui/models/recommendation.dart';

import '../../models/recommendations.dart';
import 'recommendations_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Client Recommendations', style: Theme.of(context).textTheme.headline6,),
          SizedBox(height: kDefaultPadding,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(demoRecommendations.length, (index) =>
                  Padding(
                    padding: const EdgeInsets.only(right: kDefaultPadding),
                    child: RecommendationCard(recommendation: demoRecommendations[index]),
              )),
            ),
          )
        ],
      ),
    );
  }
}


