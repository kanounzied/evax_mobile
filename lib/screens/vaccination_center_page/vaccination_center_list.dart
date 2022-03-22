import 'package:evax_mobile/screens/pass_sanitaire_screens/pass_sanitaire1.dart';
import 'package:evax_mobile/screens/vaccination_center_page/vaccination_center_lookup.dart';
import 'package:evax_mobile/services/vaccination_center_service.dart';
import 'package:flutter/material.dart';

class VaccinationCenterList extends StatefulWidget {
  VaccinationCenterList(
      {Key? key,
      required this.state,
      required this.delegation,
      required this.zone})
      : super(key: key);

  String state;
  String delegation;
  String zone;

  @override
  _VaccinationCenterListState createState() => _VaccinationCenterListState();
}

class _VaccinationCenterListState extends State<VaccinationCenterList> {
  List centers = [];

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
              SizedBox(
                height: 200,
              ),
              const Text(
                "Vaccination Centers List",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(
                height: 50,
              ),
            FutureBuilder(
              future: VaccinationCenterService.getClosest(
                  widget.state, widget.delegation, widget.zone),
                builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      centers = snapshot.data as List;
                      return Expanded(
                        child: ListView.builder(
                          itemCount: centers.length,
                          itemBuilder: (context, index) {
                            return Card(
                              margin: const EdgeInsets.all(10),
                              child: ListTile(
                                leading: Text(centers[index]["name"]),
                                title: Text(centers[index]["delegation"]),
                                subtitle: Text(centers[index]["zone"]),
                              ),
                            );
                          },
                        ),
                      );
                    }
                    else {
                      return Container();
                    }
            },),
            ],
          ),
        ),
      ),
    );
  }
}
// etat delegation doyenne
