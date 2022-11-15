import 'package:app_find_job/models/recuiter.dart';
import 'package:app_find_job/service/remote_service_recuiter.dart';
import 'package:get/state_manager.dart';

class RecuiterController extends GetxController {
  var RecuiterList = <Recuiter>[].obs;

  @override
  void onInit() {
    fetchRecuiters();
    super.onInit();
  }

  void fetchRecuiters() async {
    var recuiter = await RemotesServiceRecuiter.fetchRecuiter();
    if (recuiter != null) {
      RecuiterList.value = recuiter;
    }
  }
}
