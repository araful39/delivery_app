import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

class DeviceInformation extends StatelessWidget {
  final AndroidDeviceInfo information;
  const DeviceInformation({super.key, required this.information});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("App Verson: 0.0.1"),
                const SizedBox(
                  height: 15,
                ),
                const Text("Phone Version"),
                const SizedBox(
                  height: 10,
                ),
                Text(information.toString()),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
