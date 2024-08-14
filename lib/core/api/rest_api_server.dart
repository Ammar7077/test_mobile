// import 'dart:async';
// import 'dart:convert';

// import 'dart:developer';
// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:flutter_mvc_skeleton/core/constants.dart';
// import 'package:http/http.dart' as http;
// import 'package:image_picker/image_picker.dart';
// import 'package:retry/retry.dart';

// // class ApiHeadersHelper {
// // Map<String, String> apiHeaders = {
// //   "Access-Control-Allow-Origin": "*",
// //   'Content-Type': 'application/json',
// //   'Accept': '*/*',
// //   'Accept-Language': 'ar',
// // };
// //   Future<Map<String, String>> getApiHeaders() async {
// //     String? token = await SharedPrefServices.getString(ACCESS_TOKEN) ?? "";
// //     if (token.isNotEmpty) {
// //       apiHeaders.addAll({"Authorization": "Bearer $token"});
// //     }
// //     return apiHeaders;
// //   }
// // }

// class RestApiService {
//   // ApiHeadersHelper? apiHeadersHelper;

//   // static String token = "";
//   // init() async {
//   //   token = await SharedPrefServices.getString(ACCESS_TOKEN) ?? "";
//   //   if (token.isNotEmpty) {
//   //     apiHeaders.addAll({"Authorization": "Bearer $token"});
//   //   }
//   // }

//   /// Fires a Get request to an endpoint('path')
//   /// Note that query params MUST BE STRINGS or lists of strings.
//   static Future<http.Response> get(String path,
//       [Map<String, dynamic> queryParams = const {}]) async {
//     log("Reuest Type: GET URL: $path\n");
//     // String? token = await SharedPrefServices.getString(ACCESS_TOKEN) ?? "";

//     ///----Http
//     final url = Uri.https(APIEndPoints.baseUrl, path, queryParams);

//     ///----Https
//     //final url = Uri.https(APIEndPoints.baseUrl, path, queryParams);

//     return retry(
//         () => http.get(
//               url,
//               headers: {
//                 "Access-Control-Allow-Origin": "*",
//                 'Content-Type': 'application/json',
//                 'Accept': '*/*',
//                 'Accept-Language': 'ar',
//                 'ngrok-skip-browser-warning': 'true'
//                 // "Authorization": "Bearer $token"
//               },
//             ).timeout(const Duration(seconds: 4)),
//         retryIf: (e) => e is SocketException || e is TimeoutException,
//         maxAttempts: 4);
//   }

//   static Future<http.Response> post(String path,
//       [Map<String, dynamic> requestBody = const {},
//       Map<String, dynamic> queryParams = const {}]) async {
//     log("Reuest Type: POST URL: $path\n");
//     // String? token = await SharedPrefServices.getString(ACCESS_TOKEN) ?? "";
//     ///----Http
//     final url = Uri.https(APIEndPoints.baseUrl, path, queryParams);

//     ///----Https
//     //final url = Uri.https(APIEndPoints.baseUrl, path, queryParams);

//     // final Map<String, String> outputFields = {};
//     // requestBody.forEach((key, value) {
//     //   outputFields[key] = value.toString();
//     // });

//     // final request = http.MultipartRequest('POST', url)
//     //   ..fields.addAll(outputFields)
//     //   ..headers.addAll({
//     //     "Access-Control-Allow-Origin": "*",
//     //     'Content-Type': 'application/json',
//     //     'Accept': '*/*',
//     //     'Accept-Language': 'ar',
//     //     'ngrok-skip-browser-warning': 'true'
//     //   })
//     //   ..files.add(
//     //     await http.MultipartFile.fromPath(
//     //       'profileImage',
//     //       requestBody['profileImage'] ?? "",
//     //     ),
//     //   )
//     //   ..files.add(
//     //     await http.MultipartFile.fromPath(
//     //       'backgroundImage',
//     //       requestBody['backgroundImage'] ?? "",
//     //     ),
//     //   );

//     // final response = await request.send();

//     // return await http.Response.fromStream(response);

//     return retry(
//         () => http
//             .post(
//               url,
//               headers: {
//                 "Access-Control-Allow-Origin": "*",
//                 'Content-Type': 'application/json',
//                 'Accept': '*/*',
//                 'Accept-Language': 'ar',
//                 'ngrok-skip-browser-warning': 'true'
//                 // "Authorization": "Bearer $token"
//               },
//               body: jsonEncode(requestBody),
//             )
//             .timeout(const Duration(seconds: 4)),
//         retryIf: (e) => e is SocketException || e is TimeoutException,
//         maxAttempts: 4);
//   }

//   static Future<http.Response> put(
//     String path, [
//     Map<String, dynamic> requestBody = const {},
//     Map<String, dynamic> queryParams = const {},
//   ]) async {
//     log("Reuest Type: PUT URL: $path\n");
//     // String? token = await SharedPrefServices.getString(ACCESS_TOKEN) ?? "";
//     ///----Http
//     final url = Uri.https(APIEndPoints.baseUrl, path, queryParams);

//     ///----Https
//     //final url = Uri.https(APIEndPoints.baseUrl, path, queryParams);

//     // final Map<String, String> outputFields = {};
//     // requestBody.forEach((key, value) {
//     //   outputFields[key] = value.toString();
//     // });

//     // final request = http.MultipartRequest('PUT', url)
//     //   ..fields.addAll(outputFields)
//     //   ..headers.addAll({
//     //     "Access-Control-Allow-Origin": "*",
//     //     'Content-Type': 'application/json',
//     //     'Accept': '*/*',
//     //     'Accept-Language': 'ar',
//     //     'ngrok-skip-browser-warning': 'true'
//     //   })
//     //   ..files.add(
//     //     await http.MultipartFile.fromPath(
//     //       'profileImage',
//     //       requestBody['profileImage'] ?? "",
//     //     ),
//     //   )
//     //   ..files.add(
//     //     await http.MultipartFile.fromPath(
//     //       'backgroundImage',
//     //       requestBody['backgroundImage'] ?? "",
//     //     ),
//     //   );

//     // final response = await request.send();

//     // return await http.Response.fromStream(response);

//     return retry(
//         () => http
//             .put(url,
//                 headers: {
//                   "Access-Control-Allow-Origin": "*",
//                   'Content-Type': 'application/json',
//                   'Accept': '*/*',
//                   'Accept-Language': 'ar',
//                   'ngrok-skip-browser-warning': 'true'
//                   // "Authorization": "Bearer $token"
//                 },
//                 body: requestBody)
//             .timeout(const Duration(seconds: 4)),
//         retryIf: (e) => e is SocketException || e is TimeoutException,
//         maxAttempts: 4);
//   }

//   static Future<http.Response> patch(
//     String path, [
//     Map<String, dynamic> requestBody = const {},
//     Map<String, dynamic> queryParams = const {},
//   ]) async {
//     try {
//       log("Reuest Type: PATCH URL: $path\n");
//       // String? token = await SharedPrefServices.getString(ACCESS_TOKEN) ?? "";
//       ///----Http
//       final url = Uri.https(APIEndPoints.baseUrl, path, queryParams);

//       ///----Https
//       //final url = Uri.https(APIEndPoints.baseUrl, path, queryParams);
//       // final request = http.MultipartRequest('PATCH', url);

//       // request.headers.addAll({
//       //   "Access-Control-Allow-Origin": "*",
//       //   'Content-Type': 'application/json',
//       //   'Accept': '*/*',
//       //   'Accept-Language': 'ar',
//       //   // "Authorization": "Bearer $token"
//       // });

//       // if (requestBody['profileImage'] != null) {
//       //   // Convert the File object to a Blob
//       //   final File imgFile = (requestBody['profileImage'] as File);

//       //   // Add the image file to the request
//       //   http.MultipartFile.fromBytes(
//       //     'profileImage',
//       //     await imgFile.readAsBytes().then((value) {
//       //       return value.cast();
//       //     }),
//       //     filename: imgFile.path.toString().split('/').last,
//       //   );
//       // }

//       // if (requestBody['backgroundImage'] != null) {
//       //   // Convert the File object to a Blob
//       //   final imgFile = (requestBody['backgroundImage'] as File);

//       //   // Add the image file to the request
//       //   request.files.add(
//       //     http.MultipartFile.fromBytes(
//       //       'backgroundImage',
//       //       await imgFile.readAsBytes().then((value) {
//       //         return value.cast();
//       //       }),
//       //       filename: imgFile.path.toString().split('/').last,
//       //     ),
//       //   );
//       // }

//       // requestBody['profileImage'] = null;
//       // requestBody['backgroundImage'] = null;

//       // final Map<String, String> outputFields = {};
//       // requestBody.forEach((key, value) {
//       //   outputFields[key] = value.toString();
//       // });
//       // request.fields.addAll(outputFields);

//       // final response = await request.send();
//       // log("Response: ${response}");

//       // return await http.Response.fromStream(response);

//       return retry(
//           () => http
//               .patch(url,
//                   headers: {
//                     "Access-Control-Allow-Origin": "*",
//                     'Content-Type': 'application/json',
//                     'Accept': '*/*',
//                     'Accept-Language': 'ar',
//                     // "Authorization": "Bearer $token"
//                   },
//                   body: jsonEncode(requestBody))
//               .timeout(const Duration(seconds: 4)),
//           retryIf: (e) => e is SocketException || e is TimeoutException,
//           maxAttempts: 4);
//     } catch (e) {
//       // log("Error: ${e}");
//       return http.Response("Error", 500);
//     }
//   }

//   static Future<http.Response> delete(String path,
//       [Map<String, dynamic> requestBody = const {},
//       Map<String, dynamic> queryParams = const {}]) async {
//     log("Reuest Type: DELETE URL: $path\n");
//     // String? token = await SharedPrefServices.getString(ACCESS_TOKEN) ?? "";
//     ///----Http
//     final url = Uri.https(APIEndPoints.baseUrl, path, queryParams);

//     ///----Https
//     // final url = Uri.https(APIEndPoints.baseUrl, path, queryParams);

//     return retry(
//         () => http
//             .delete(url,
//                 headers: {
//                   "Access-Control-Allow-Origin": "*",
//                   'Content-Type': 'application/json',
//                   'Accept': '*/*',
//                   'Accept-Language': 'ar',
//                   // "Authorization": "Bearer $token"
//                 },
//                 body: jsonEncode(requestBody))
//             .timeout(const Duration(seconds: 4)),
//         retryIf: (e) => e is SocketException || e is TimeoutException,
//         maxAttempts: 4);
//   }

//   static Future<bool> multiPart(String url, XFile file, String fieldName,
//       {Map? formField}) async {
//     final dio = Dio();
//     dio.options.contentType = "multipart/form-data";
//     final multiPartFile = MultipartFile.fromBytes(
//       await file.readAsBytes(),
//       filename: file.name,
//     );
//     Map<String, dynamic> map = {};
//     if (formField != null) {
//       map = {fieldName: multiPartFile, ...formField};
//     } else {
//       map = {
//         fieldName: multiPartFile,
//       };
//     }
//     FormData formData = FormData.fromMap(map);
//     try {
//       final response = await dio.patch(
//         url,
//         data: formData,
//       );
//       return response.statusCode == 200;
//     } catch (e) {
//       // print('Error uploading image: $e');
//       return false;
//     }
//   }
// }