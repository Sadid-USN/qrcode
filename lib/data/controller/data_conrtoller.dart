// import 'dart:convert';

// import 'package:firebase_database/firebase_database.dart';
// import 'package:get/get.dart';

// abstract class DataController extends GetxController {}

// class MyDataController extends DataController {
//   List<dynamic>? dataFromFB;

//   DatabaseReference dataRef = FirebaseDatabase.instance.ref('data');

//   @override
//   void onInit() {
//     dataRef.onValue.listen((event) {
//       // convert object to JSON String
//       String data = jsonEncode(event.snapshot.value);
//       // convert JSON into Map<String, dynamic>
//       dataFromFB = jsonDecode(data);

//       update();
//     });
//     super.onInit();
//   }
// }
