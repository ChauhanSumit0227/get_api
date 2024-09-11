import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Model.dart';

List<SamplePosts> samplePosts = [];

 getPostApi() async {
   final String postapi = "https://jsonplaceholder.typicode.com/posts";
   try {
    final response = await http.get(Uri.parse(postapi));

    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      samplePosts = jsonData.map((post) => SamplePosts.fromJson(post)).toList();
    } else {
      throw Exception("Failed to load posts with status code: ${response.statusCode}");
    }
  } catch (error) {
    print("Error occurred: $error");
    throw Exception("Failed to load posts due to an error: $error");
  }
}


