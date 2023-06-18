import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart' ;
import 'package:cms_final/models/userModel.dart';


class AuthService {
  static const String baseUrl = 'https://college-managment-system-production.up.railway.app';
  // static const String baseUrl = 'http://192.168.1.12:5003';

  Future<void> signUp(User user) async {
    print('gwaa el signUP');

    const url = '$baseUrl/api/v1/users/students/signup';

    final headers = {'Content-Type': 'application/json', 'entity': 'student'};

    final body = jsonEncode(user.toJson());

    final response = await http
        .post(Uri.parse(url), headers: headers, body: body)
        .catchError((error) {
      print("Error: ${error} ");
    });

    
    if (response.statusCode != 200) {
      throw Exception('Failed to sign up: ${response.statusCode}');
    }
  }

  Future<void> login(email, password) async {
    print('inside login');
    const url = '$baseUrl/api/v1/users/students/login';

    final headers = {'Content-Type': 'application/json', 'entity': 'student'};

final body = jsonEncode({'email': email, 'password': password});   


    final response = await http
        .post(Uri.parse(url), headers: headers, body: body)
        .catchError((error) {
      print('Error: $error');
    });

    final responseData = jsonDecode(response.body);

    final token = responseData['token'];
    
    

    final prefs = await SharedPreferences.getInstance();

    prefs.setString('token', token);

    // if (response.statusCode != 200) {
    //   throw Exception('Failed to sign in: ${response.statusCode}');
    // }
  }
}
