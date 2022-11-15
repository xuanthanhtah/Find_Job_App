import 'package:app_find_job/models/jobinfor.dart';
import 'package:app_find_job/service/remote_service_jobinfor.dart';
import 'package:get/state_manager.dart';

class JobInformationController extends GetxController {
  var jobInformationList = <JobInformation>[].obs;

  @override
  void onInit() {
    fetchJobInformations();
    super.onInit();
  }

  void fetchJobInformations() async {
    var jobInformation =
        await RemotesServiceJobInformation.fetchJobInformations();
    if (jobInformation != null) {
      jobInformationList.value = jobInformation;
    }
  }
}
