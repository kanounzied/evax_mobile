import 'package:evax_mobile/screens/pass_sanitaire_screens/pass_sanitaire2.dart';
import 'package:evax_mobile/screens/pass_sanitaire_screens/pass_sanitaire3.dart';
import 'package:flutter/material.dart';

class PassSanitaire2 extends StatefulWidget {
  PassSanitaire2({Key? key, required this.user_cin}) : super(key: key);

  String user_cin;
  static const verification_code = "1234";
  @override
  _PassSanitaire2State createState() => _PassSanitaire2State();
}

class _PassSanitaire2State extends State<PassSanitaire2> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController code = TextEditingController();

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
                " We have sent you a code on your mobile line. \n Please enter the code here !",
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
                          controller: code,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Code',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your code';
                            }
                            if (value.contains(RegExp(r'[a-z]|[A-Z]'))) {
                              return 'code must be a number';
                            }
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
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_formKey.currentState!.validate() && code.text == PassSanitaire2.verification_code) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Verifying Code ...')),
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PassSanitaire3(user_cin: widget.user_cin)),
                            );
                          }
                        },
                        child: const Text('Verify'),
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
