import 'dart:convert';

import 'package:flutter/material.dart';
import '../modulse/matchs.dart';

class DataApi{

 static Future<List<Match>>? getAllMatches(context) async{

    var matches = <Match>[];

   var assetBundle = DefaultAssetBundle.of(context);
   var data = await assetBundle.loadString('assets/data/bbl.json');
   var jsonData = json.decode( data );
   var jsonSchedule = jsonData['schedule'];

   for( var jsonMatch in jsonSchedule){
     Match match = Match.fromJSON(jsonMatch);
     matches.add(match);
   }

   return matches;

 }

 }




//
//   var matches = <Match>[];
//
//   var assetBundle = DefaultAssetBundle.of(context);
//   var data = await assetBundle.loadString('assets/data/bbl.json');
//   var jsonData = json.decode( data );
//   var jsonSchedule = jsonData['schedule'];
//
//   for( var jsonMatch in jsonSchedule){
//   Match match = Match.fromJSON(jsonMatch);
//   matches.add(match);
//   }
//
//   return matches;
// }