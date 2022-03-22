import 'package:evax_mobile/models/user.dart';
import 'package:evax_mobile/screens/pass_sanitaire_screens/pass_sanitaire2.dart';
import 'package:evax_mobile/services/access_service.dart';
import 'package:flutter/material.dart';

class PassSanitaire3 extends StatefulWidget {
  PassSanitaire3({Key? key, required this.user_cin}) : super(key: key);

  String user_cin;

  @override
  _PassSanitaire3State createState() => _PassSanitaire3State();
}

class _PassSanitaire3State extends State<PassSanitaire3> {
  final _formKey = GlobalKey<FormState>();

  AccessSrevice access = AccessSrevice();
  @override
  Widget build(BuildContext context) {
    User? user = access.checkUser(widget.user_cin);
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 70,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/' + user!.profile_pic,
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 1,
                      right: 1,
                      child: Container(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.add_a_photo,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color.fromRGBO(245, 167, 148, 1.0), Color.fromRGBO(
                          239, 129, 101, 1.0)],
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                        child: Container(
                          height: 60,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Name',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  width: 1.0, color: Colors.white70)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                        child: Container(
                          height: 60,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                (user != null) ? user.firstname + ' ' + user.lastname : '',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  width: 1.0, color: Colors.white70)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                        child: Container(
                          height: 60,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                (user != null) ? user.tel : '',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  width: 1.0, color: Colors.white70)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                        child: Container(
                          height: 60,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                (user != null) ? user.health_status.toString() : '',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  width: 1.0, color: Colors.white70)),
                        ),
                      ),
                      // Expanded(
                      //   child: Align(
                      //     alignment: Alignment.bottomRight,
                      //     child: Container(
                      //       height: 70,
                      //       width: 200,
                      //       child: const Align(
                      //         child: Text(
                      //           'Save',
                      //           style: TextStyle(
                      //               color: Colors.white70, fontSize: 20),
                      //         ),
                      //       ),
                      //       decoration: const BoxDecoration(
                      //         color: Colors.teal,
                      //         borderRadius: BorderRadius.only(
                      //           topLeft: Radius.circular(30),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
