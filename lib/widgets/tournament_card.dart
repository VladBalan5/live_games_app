import 'package:flutter/material.dart';
import 'package:test_app/constants/colors.dart';
import 'package:test_app/models/tournaments_group_model.dart';

Widget tournamentCard(Tournaments tournaments) {
  return Container(
    padding: const EdgeInsets.only(left: 13, right: 13, top: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.cyan),
      color: KTournamentBackground,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              tournaments.meta.ui.corner_image.url,
              width: 60,
            ),
            Column(
              children: [
                Text(
                  "${tournaments.meta.ui.prize_1.textJson.ro}",
                  style: TextStyle(
                    color: Colors.cyanAccent,
                  ),
                ),
                Text(
                  "${tournaments.meta.ui.prize_2.textJson.ro}",
                  style: TextStyle(
                    color: Colors.cyan,
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "${tournaments.name}",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              tournaments.meta.ui.games_image.url,
              width: 100,
            ),
            Container(
              child: Stack(
                children: [
                  Text(
                    "${tournaments.meta.levels.toString()}",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  Image.network(
                    tournaments.meta.ui.current_place_image.url,
                    width: 120,
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.center,
          width: 400,
          height: 20,
          child: tournaments.enrolled == false
              ? Text(
                  "Nu esti inca inscris",
                  style: TextStyle(color: Colors.white),
                )
              : Text(
                  "Esti deja inscris",
                  style: TextStyle(color: Colors.white),
                ),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: Colors.pinkAccent),
        ),
        Container(
          width: 400,
          height: 35,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              color: Colors.purple,
              child: Text(
                "PARTICIPA",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
