import 'package:flexify_consultant_app/models/upcoming_appointment.dart';
import 'package:flexify_consultant_app/services/appointment_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<UpcomingAppointment> upcomingAppointments = <UpcomingAppointment>[].obs;
  var isLoadingUpcomingAppointments = true.obs;

  List<UpcomingAppointment> waitingApprovalAppointments =
      <UpcomingAppointment>[].obs;
  var isLoadingWaitingApprovalAppointments = true.obs;

  void initUpcomingAppointments() async {
    isLoadingUpcomingAppointments(true);
    var response =
        await AppointmentService().getConsultantUpcomingAppointments();

    if (response != null && response.statusCode == 200) {
      var data = response.data as Map<String, dynamic>;
      var items = data["items"] as List;
      var newData = (items).map((e) => UpcomingAppointment.fromMap(e)).toList();
      upcomingAppointments.clear();
      upcomingAppointments.addAll(newData);
    }
    isLoadingUpcomingAppointments(false);
  }

  void initWaitingApprovalAppointments() async {
    isLoadingUpcomingAppointments(true);
    var response = await AppointmentService().getWaitingApprovalAppointments();

    if (response != null && response.statusCode == 200) {
      var data = response.data as Map<String, dynamic>;
      var items = data["items"] as List;
      var newData = (items).map((e) => UpcomingAppointment.fromMap(e)).toList();
      waitingApprovalAppointments.clear();
      waitingApprovalAppointments.addAll(newData);
    }
    isLoadingWaitingApprovalAppointments(false);
  }

  void acceptAppointment(String appointmentId) async {
    var response = await AppointmentService().updateAppointmentStatus(
      appointmentId,
      2,
    );

    if (response != null && response.statusCode == 200) {
      initWaitingApprovalAppointments();
    }
  }

  void rejectAppointment(String appointmentId) async {
    var response = await AppointmentService().updateAppointmentStatus(
      appointmentId,
      0,
    );

    if (response != null && response.statusCode == 200) {
      initWaitingApprovalAppointments();
    }
  }

  // void removeWaitingAppointment(int index) {
  //   waitingApprovalAppointments.removeAt(index);
  // }
}

class WaitingAppo {
  String name;
  String date;

  WaitingAppo({required this.name, required this.date});
}
