import 'package:delivery_app/constans/texts.dart';
import 'package:delivery_app/view/dashboard.dart';
import 'package:delivery_app/view/parcel.dart';
import 'package:delivery_app/view/payment.dart';
import 'package:delivery_app/view/profile/profile.dart';
import 'package:flutter/material.dart';

import 'constans/colors.dart';
import 'constans/icon.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key,});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int currentIndex = 0;
  int colorIndex = 0;
  List<Widget> screen=[
    const Dashboard(),
    const Payment(),
    const Parcel(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: const IconThemeData(size: 30,color: RColores.red),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: RColores.red,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {

              currentIndex = index;


            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(RIcons.dashboard,height: 25,color:currentIndex==0?RColores.red: RColores.black), label: RTexts.dashboard),
            BottomNavigationBarItem(
                icon: Image.asset(RIcons.payment,height: 21,color: currentIndex==1?RColores.red: RColores.black), label: RTexts.payment),
            BottomNavigationBarItem(
                icon: Image.asset(RIcons.parcel,height: 25,color: currentIndex==2?RColores.red: RColores.black), label: RTexts.parcel),
            BottomNavigationBarItem(
                icon: Image.asset(RIcons.profile,height: 25,color: currentIndex==3?RColores.red: RColores.black), label: RTexts.profile),

          ],
        )


    );
  }
}
