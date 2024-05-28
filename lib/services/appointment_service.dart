import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flexify_consultant_app/network/network_manager.dart';

class AppointmentService {
  final dio = NetworkManager.instance.dio;

  Future getAppointmentAvailability(String consultantId) async {
    try {
      final response =
          await dio.post('/Appointment/GetAppointmentAvailabilityList', data: {
        'consultantId': consultantId,
      });

      return response;
    } on DioException catch (e) {
      log(e.message.toString());
      log(e.response.toString());
      return e.response;
    }
  }

  Future getConsultantUpcomingAppointments() async {
    try {
      final response =
          await dio.get('/Appointment/GetConsultantUpcomingAppointmentsList');

      return response;
    } on DioException catch (e) {
      log(e.message.toString());
      log(e.response.toString());
      return e.response;
    }
  }

  Future getWaitingApprovalAppointments() async {
    try {
      final response =
          await dio.get('/Appointment/GetWaitingApprovalAppointmentList');

      return response;
    } on DioException catch (e) {
      log(e.message.toString());
      log(e.response.toString());
      return e.response;
    }
  }

  Future updateAppointmentStatus(String appointmentId, int status) async {
    try {
      final response =
          await dio.post('/Appointment/UpdateAppointmentStatus', data: {
        'id': appointmentId,
        'status': status,
      });

      return response;
    } on DioException catch (e) {
      log(e.message.toString());
      log(e.response.toString());
      return e.response;
    }
  }

  Future getAppointmentById(String appointmentId) async {
    try {
      final response = await dio.get('/Appointment/GetById/$appointmentId');

      return response;
    } on DioException catch (e) {
      log(e.message.toString());
      log(e.response.toString());
      return e.response;
    }
  }

  Future deleteAppointmentById(String appointmentId) async {
    try {
      final response = await dio.get('/Appointment/DeleteById/$appointmentId');

      return response;
    } on DioException catch (e) {
      log(e.message.toString());
      log(e.response.toString());
      return e.response;
    }
  }
}
