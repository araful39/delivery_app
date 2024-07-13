import 'package:delivery_app/view/profile/device_information.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  bool isClick=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Account Setting",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Notifications",style: TextStyle(fontSize: 18),),
                  Switch(
                      activeColor: Colors.teal,
                      value: isClick, onChanged: (value){
                    setState(() {
                      isClick=value;
                    });
                  })

                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Language settings",style: TextStyle(fontSize: 18),),
                  Text("En",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.teal),),

                ],
              ),
              const SizedBox(
                height: 15,
              ),

              const Text("Contact Us",style: TextStyle(fontSize: 18),),
              const SizedBox(
                height: 15,
              ),

              const Text("Help",style: TextStyle(fontSize: 18),),
              const SizedBox(
                height: 15,
              ),

              const Text("Terms and Conditions",style: TextStyle(fontSize: 18),),
              const SizedBox(
                height: 15,
              ),

              const Text("Privacy & Policy",style: TextStyle(fontSize: 18),),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: ()async{
                        DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
                      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
     Get.to(()=> DeviceInformation(information: androidInfo));
                      },
                      child: const Text("Version"))
                ],
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
