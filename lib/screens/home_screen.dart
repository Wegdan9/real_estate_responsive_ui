import 'package:flutter/material.dart';
import 'package:real_estate_responsive_ui/constants.dart';
import 'package:real_estate_responsive_ui/responsive.dart';
import 'package:real_estate_responsive_ui/widgets/menu/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  final Widget mainSection;
  const HomeScreen({Key? key, required this.mainSection}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isWeb(context) ? null: AppBar(
        backgroundColor: kBgColor,
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu)),
        ),
      ),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(Responsive.isWeb(context))
                Expanded(
                  flex: 2,
                    child:SideMenuSection()),
                Expanded(
                  flex:7,
                    child: mainSection)
              ],
            ),
          ),
        ),
      )
    );
  }
}
