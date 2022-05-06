import 'dart:async';
import 'dart:core';

import 'package:test_app/models/tournaments_group_model.dart';
import 'package:test_app/services/api.dart';

Future<List<Tournaments>> getTournamentsList() async {
  final response = await getTournaments();

  List<Tournaments> tournamentsList = List<Tournaments>.from(
      response.map((jsonData) => Tournaments.fromJson(jsonData)).toList());

  return tournamentsList;
}
