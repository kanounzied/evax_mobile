import 'dart:convert';
import 'dart:core';

import 'package:evax_mobile/models/vaccination_center.dart';
import 'package:flutter/services.dart';

class VaccinationCenterService {

  static Future<List> getClosest(String state, String delegation, String zone) async {
    final response = await rootBundle.loadString('assets/documents/vaccination_centers_db.json');
    final data = await json.decode(response);
    var final_list = [];
    for (var row in data["vaccination_centers"]){
      if (row["delegation"] == delegation || row["zone"] == zone) {
        final_list.add(row);
      }
    }
    return final_list;
  }
}