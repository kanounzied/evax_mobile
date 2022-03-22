import 'package:evax_mobile/screens/pass_sanitaire_screens/pass_sanitaire1.dart';
import 'package:evax_mobile/screens/vaccination_center_page/vaccination_center_lookup.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                "Welcome To Evax!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: 150,),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PassSanitaire1()),
                  );
                },
                child: Text("voir pass sanitaire"),
              ),
              SizedBox(height: 50),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VaccinationCenterLookup()),
                  );
                },
                child: Text("voir centre de vaccination"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// etat delegation doyenne