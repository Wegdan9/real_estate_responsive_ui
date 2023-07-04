import 'package:flutter/material.dart';
import 'package:real_estate_responsive_ui/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(title: 'Address', text: 'Station Street 5'),
        buildContactInfo(title: 'Country', text: 'Austria'),
        buildContactInfo(title: 'Email', text: 'wegdansobhy0@gmail.com'),
        buildContactInfo(title: 'Mobile', text: '+79052064121'),
        buildContactInfo(title: 'Website', text: 'www.realestate.com'),
      ],
    );
  }

  Padding buildContactInfo({String? title, String? text}) {
    return Padding(
        padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$title', style: TextStyle(color: Colors.white),),
            Text(text!)
          ],
        ),
      );
  }
}
