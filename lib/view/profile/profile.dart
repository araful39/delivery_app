import 'package:delivery_app/view/profile/widget/profile_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'account_settings.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const CircleAvatar(
                maxRadius: 30,
                backgroundImage: NetworkImage(
                    "https://scontent.fdac7-1.fna.fbcdn.net/v/t39.30808-6/359379744_1670308010049866_4802363250202591408_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeF2GZ7pNyjfPcsXp88GwyQfd8lpX2KM6rp3yWlfYozqugi7_sglBYPVNk5NAFw3hz6-PurQc3XrU2na0A_pCgnv&_nc_ohc=yj1tYSIjjcQQ7kNvgH3Qq_6&_nc_ht=scontent.fdac7-1.fna&oh=00_AYB5M6QN_IhvjcLDu9g38zBBUdZyOCsFzgNkU32QBuSMjQ&oe=6696CD12"),
              ),
              const Text("Raju",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              const SizedBox(
                height: 30,
              ),
              ProfileListTile(title: 'My Account', leadingIcon: const Icon(Icons.person), onPress: () {  },),
              ProfileListTile(title: 'My Order', leadingIcon: const Icon(Icons.padding_outlined), onPress: () {  },),
              ProfileListTile(title: 'My Address', leadingIcon: const Icon(Icons.home), onPress: () {  },),
              ProfileListTile(title: 'Payment Method', leadingIcon: const Icon(Icons.payments), onPress: () {  },),
              ProfileListTile(title: 'My Wishlist', leadingIcon: const Icon(Icons.favorite_border), onPress: () {  },),

              ProfileListTile(title: 'Account Setting', leadingIcon: const Icon(Icons.settings), onPress: () {
                Get.to(()=> const AccountSettings());
              },),

              ProfileListTile(title: 'Logout', leadingIcon: const Icon(Icons.logout), onPress: () {  },),

            ],
          ),
        ),
      )
    );
  }}

