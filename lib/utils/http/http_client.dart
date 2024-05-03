// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class THttpHelper {
//   static const String _baseUrl = 'https: //your-api-base-url.com';

//   // Helper method to make a GET request
//   static Future<Map<String, dynamic>> get(String endpoint) async {
//     final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
//     return _handleResponse(response);
//   }

//   // Helper method to make a POST request
//   static Future<Map<String, dynamic>> post(
//       String endpoint, dynamic data) async {
//     final response = await http.post(
//       Uri.parse('$_baseUrl/$endpoint'),
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode(data),
//     );
//     return _handleResponse(response);
//   }

//   // Helper method to make a PUT request
//   static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
//     final response = await http.put(
//       Uri.parse('$_baseUrl/$endpoint'),
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode(data),
//     );
//     return _handleResponse(response);
//   }

//   // Helper methid to make a DELETE request
//   static Future<Map<String, dynamic>> delete(String endpoint) async {
//     final response = await http.delete(Uri.parse('&_baseUrl/$endpoint'));
//     return _handleResponse(response);
//   }

//   // Handle the HTTP response
//   static Map<String, dynamic> _handleResponse(Map<String, dynamic> response) {
//     if (response.statusCode == 200) {
//       return json.decode(response.body);
//     } else {
//       throw Exception("Failed to load data: ${response.statusCode}");
//     }
//   }
// }
