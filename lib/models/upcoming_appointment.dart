import 'dart:convert';

class UpcomingAppointment {
  final String? id;
  final String? startTime;
  final String? endTime;
  final String? clientName;
  final String? clientSurName;

  UpcomingAppointment({
    this.id,
    this.startTime,
    this.endTime,
    this.clientName,
    this.clientSurName,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'startTime': startTime,
      'endTime': endTime,
      'clientName': clientName,
      'clientSurName': clientSurName,
    };
  }

  factory UpcomingAppointment.fromMap(Map<String, dynamic> map) {
    return UpcomingAppointment(
      id: map['id'],
      startTime: map['startTime'],
      endTime: map['endTime'],
      clientName: map['clientName'],
      clientSurName: map['clientSurName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UpcomingAppointment.fromJson(String source) =>
      UpcomingAppointment.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UpcomingAppointment(id: $id, startTime: $startTime, endTime: $endTime, clientName: $clientName, clientSurName: $clientSurName)';
  }
}
