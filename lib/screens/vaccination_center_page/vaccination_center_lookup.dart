import 'package:evax_mobile/screens/pass_sanitaire_screens/pass_sanitaire2.dart';
import 'package:evax_mobile/screens/vaccination_center_page/vaccination_center_list.dart';
import 'package:flutter/material.dart';

class VaccinationCenterLookup extends StatefulWidget {
  const VaccinationCenterLookup({Key? key}) : super(key: key);

  @override
  _VaccinationCenterLookupState createState() =>
      _VaccinationCenterLookupState();
}

class _VaccinationCenterLookupState extends State<VaccinationCenterLookup> {
  final _formKey = GlobalKey<FormState>();

  final state = TextEditingController();
  final delegation = TextEditingController();
  final zone = TextEditingController();

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
                " Search for the closest vaccination center :",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
                textAlign: TextAlign.center,
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
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xB3C8E8D8),
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: TextFormField(
                          controller: state,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'State',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            String msg = '';
                            if (value == null || value.isEmpty) {
                              return 'Please enter state';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xB3C8E8D8),
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: TextFormField(
                          controller: delegation,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Delegation',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            String msg = '';
                            if (value == null || value.isEmpty) {
                              return 'Please enter your delegation';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xB3C8E8D8),
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: TextFormField(
                          controller: zone,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Zone',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            String msg = '';
                            if (value == null || value.isEmpty) {
                              return 'Please enter your deanery';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: OutlinedButton(
                        onPressed: () {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VaccinationCenterList(
                                  state: state.text,
                                  delegation: delegation.text,
                                  zone: zone.text,
                                ),
                              ),
                            );
                          }
                        },
                        child: const Text('search'),
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
