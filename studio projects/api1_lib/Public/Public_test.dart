import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'Public.dart';

class ApiService {
  Future<ApiResponse> fetchApis() async {
    final response = await http.get(Uri.parse('https://api.publicapis.org/entries'));

    if (response.statusCode == 200) {
      return ApiResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load APIs');
    }
  }
}

class ApiListScreen extends StatefulWidget {
  @override
  _ApiListScreenState createState() => _ApiListScreenState();
}

class _ApiListScreenState extends State<ApiListScreen> {
  late Future<ApiResponse> futureApis;

  @override
  void initState() {
    super.initState();
    futureApis = ApiService().fetchApis();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Public APIs'),
      ),
      body: FutureBuilder<ApiResponse>(
        future: futureApis,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data?.entries.isEmpty == true) {
            return Center(child: Text('No APIs found.'));
          } else {
            var apiEntries = snapshot.data!.entries;
            return ListView.builder(
              itemCount: apiEntries.length,
              itemBuilder: (context, index) {
                var api = apiEntries[index];
                return ListTile(
                  title: Text(api.name),
                  subtitle: Text(api.description),
                  trailing: Icon(api.https ? Icons.lock : Icons.lock_open),
                  onTap: () {
                    // Navigate to a detailed page or open the link
                    // Launch URL (e.g. `api.link`)
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
