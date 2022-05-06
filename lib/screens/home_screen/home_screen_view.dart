import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/constants/colors.dart';
import 'package:test_app/widgets/tournament_card.dart';

import 'home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  final homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: kBackground,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Non VIP",
                // textAlign: TextAlign.start,
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      child: Image.asset(
                        "images/wallpaper.jpeg",
                        width: 370,
                      ),
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.orangeAccent,
                    ),
                    margin: const EdgeInsets.only(left: 30, bottom: 10),
                    child: Text(
                      'ACTIV ACUM',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 30, bottom: 10),
                    child: Text(
                      "2 Mai - 31 Mai",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 350,
                    padding: const EdgeInsets.only(left: 10),
                    child: Obx(() => ListView.builder(
                        itemCount: homeScreenController.tournamentsList.length,
                        itemBuilder: (context, index) {
                          return tournamentCard(
                              homeScreenController.tournamentsList[index]);
                        })),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "DETALII TURNEU",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
