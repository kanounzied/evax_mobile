import 'package:evax_mobile/models/health_status.dart';
import 'package:evax_mobile/models/user.dart';

class AccessSrevice {

  final users = [
    User("zied", "kanoun", "12345678", "12345678", HealthStatus.vaccinated, 'profile_pic.jpg'),
    User("ahmed", "grati", "12345679", "12345678", HealthStatus.notVaccinated, 'profile_pic.jpg'),
    User("omar", "jeridi", "12345670", "12345678", HealthStatus.vaccinated, 'profile_pic.jpg'),
  ];

  bool is_authorised(String cin) {
    for (User user in this.users){
      if (cin == user.cin) return true;
    }
    return false;
  }

  User? checkUser(String cin) {
    for (User user in this.users){
      if (cin == user.cin) return user;
    }
    return null;
  }
}