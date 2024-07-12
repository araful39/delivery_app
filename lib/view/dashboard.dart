import 'package:delivery_app/constans/colors.dart';
import 'package:delivery_app/constans/icon.dart';
import 'package:delivery_app/constans/image.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: RColores.black,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: ListTile(
                          leading: const CircleAvatar(
                            maxRadius: 30,
                            backgroundImage: NetworkImage(
                                "https://scontent.fdac7-1.fna.fbcdn.net/v/t39.30808-6/359379744_1670308010049866_4802363250202591408_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeF2GZ7pNyjfPcsXp88GwyQfd8lpX2KM6rp3yWlfYozqugi7_sglBYPVNk5NAFw3hz6-PurQc3XrU2na0A_pCgnv&_nc_ohc=yj1tYSIjjcQQ7kNvgH3Qq_6&_nc_ht=scontent.fdac7-1.fna&oh=00_AYB5M6QN_IhvjcLDu9g38zBBUdZyOCsFzgNkU32QBuSMjQ&oe=6696CD12"),
                          ),
                          title: const Text(
                            "Raju",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: const Text(
                            "Delivery Man",
                            style: TextStyle(color: RColores.white),
                          ),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications_active,
                                color: Colors.orange,
                              ))),
                    ),
                  ),
                  const Positioned(
                    left: 15,
                    top: 120,
                    child: SizedBox(
                      height: 150,
                      width: 330,
                      child: Card(
                        color: RColores.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Total Earning",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Icon(Icons.message),
                                    Text(
                                      "Earning",
                                    ),
                                    Text(
                                      "\$625.48",
                                      style: TextStyle(
                                          color: Colors.teal,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.message),
                                    Text(
                                      "Earning",
                                    ),
                                    Text(
                                      "\$625.48",
                                      style: TextStyle(color: Colors.teal),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.message),
                                    Text(
                                      "Earning",
                                    ),
                                    Text(
                                      "\$625.48",
                                      style: TextStyle(color: Colors.teal),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 15, right: 15),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Overview",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "Monthly",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width * 0.45,
                          height: 120,
                          child: Card(
                            color: Colors.teal.withOpacity(0.1),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(RIcons.pending),
                                      Image.asset(RIcons.pendingLine),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text("Pending Parcels"),
                                  const Text(
                                    "126",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.45,
                          height: 120,
                          child: Card(
                            color: Colors.teal.withOpacity(0.1),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(RIcons.delivery),
                                      Image.asset(RIcons.deliveryLine),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text("Delivered Parcels"),
                                  const Text(
                                    "506",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width * 0.45,
                          height: 120,
                          child: Card(
                            color: Colors.teal.withOpacity(0.1),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(RIcons.portial),
                                      Image.asset(RIcons.portialLine),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Partial Delivered Parcels",
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const Text(
                                    "20",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.45,
                          height: 120,
                          child: Card(
                            color: Colors.teal.withOpacity(0.1),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(RIcons.returnI),
                                      Image.asset(RIcons.returnILine),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text("Return Parcels"),
                                  const Text(
                                    "46",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pending Parcels",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "View All",
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.9,
                      height: 100,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                RImages.cotton1,
                                height: 60,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Exclusive Cotton Fiber Head Pillow",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Size: 34”, Weight: 2.5K",
                                  ),
                                  Text(
                                    "\$1625.48",
                                    style: TextStyle(
                                        color: Colors.teal,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: width * 0.9,
                      height: 100,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                RImages.cotton2,
                                height: 60,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Exclusive Cotton Fiber Head Pillow",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Size: 34”, Weight: 2.5K",
                                  ),
                                  Text(
                                    "\$1625.48",
                                    style: TextStyle(
                                        color: Colors.teal,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
