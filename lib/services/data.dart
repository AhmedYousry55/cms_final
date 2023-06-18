import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

const baseUrl = "http://192.168.1.12:5003";
Future<Map<String , dynamic>> getCourses() async {
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString('token');
  print(token);

  final headers = {
    'Content-Type': 'application/json',
    'entity': 'student',
    'Authorization': 'Bearer $token'
  };
  var courses =
      await http.get(Uri.parse('$baseUrl/api/v1/courses'), headers: headers);


  // print(courses.body);
  if (courses.statusCode == 200) {
    print('working');
    var data = jsonDecode(courses.body)['data'];
  
    print(data['documents']) ;

    return data['documents'];
  } else {
    throw Exception("Failed to load data");
  }
}




// Future<void> getUser({String? email, String? password}) async {
//   var user = await http.post(
//       Uri.parse('http://college-managment-system-production.up.railway.app/api/v1'),
//   body: jsonEncode({
//     'email': email ?? "",
//     'password': password ?? "",
//   })
//   ).then((value) {
//     print('mmm ${value.body}');
//   }).catchError((e){
//     print('mmm $e');
//   });
//   if(user.statusCode == 200){
//     print("profile ${user.body}");
//     // var data = jsonDecode(user.body);
//     // print(data);
//     // return data;
//   } else{
//     throw Exception("Failed to load data ${user.statusCode}");
//   }
// }