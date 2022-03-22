import 'package:evax_mobile/models/health_status.dart';

class User {
  final String firstname;
  final String lastname;
  final String cin;
  final String tel;
  final HealthStatus health_status;
  final String profile_pic;

  User(this.firstname, this.lastname, this.cin, this.tel, this.health_status, this.profile_pic);
}