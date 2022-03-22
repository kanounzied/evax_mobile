import 'package:evax_mobile/screens/pass_sanitaire_screens/pass_sanitaire2.dart';
import 'package:evax_mobile/services/access_service.dart';
import 'package:flutter/material.dart';

class PassSanitaire1 extends StatefulWidget {
  const PassSanitaire1({Key? key}) : super(key: key);

  @override
  _PassSanitaire1State createState() => _PassSanitaire1State();
}

class _PassSanitaire1State extends State<PassSanitaire1> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController cin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                " To access enter your CIN:",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color(0xB3C8E8D8),
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: TextFormField(
                          controller: cin,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'CIN',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            String msg = '';
                            if (value == null || value.isEmpty) {
                              return 'Please enter your CIN';
                            }
                            if (value.length != 8) {
                              msg += 'CIN must be 8 characters';
                            }
                            if (value.contains(RegExp(r'[a-z]|[A-Z]'))) {
                              msg += '\nCIN must be a number';
                            }
                            if (msg.isNotEmpty) return msg;
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: OutlinedButton(
                        onPressed: () {
                          var access = AccessSrevice();
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_formKey.currentState!.validate() && access.is_authorised(cin.text)) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            // ScaffoldMessenger.of(context).showSnackBar(
                            //   const SnackBar(content: Text('Processing Data')),
                            // );
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PassSanitaire2(user_cin: cin.text,)),
                            );
                          }
                        },
                        child: const Text('Submit'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
