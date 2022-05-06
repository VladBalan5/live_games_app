import 'package:get/get.dart';
import 'package:test_app/models/tournaments_group_model.dart';
import 'package:test_app/services/tournaments_list.dart';

class HomeScreenController extends GetxController {
  RxList<Tournaments> tournamentsList = <Tournaments>[].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    getListOfTournaments();
    super.onInit;
  }

  Future getListOfTournaments() async {
    isLoading.value = false;
    await getTournamentsList().then((value) {
      tournamentsList.value = value;
    });
    isLoading.value = false;
  }
}
