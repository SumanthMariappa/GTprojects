class ApiEntry {
  final String name;
  final String description;
  final String auth;
  final bool https;
  final String cors;
  final String link;
  final String category;

  ApiEntry({
    required this.name,
    required this.description,
    required this.auth,
    required this.https,
    required this.cors,
    required this.link,
    required this.category,
  });

  factory ApiEntry.fromJson(Map<String, dynamic> json) {
    return ApiEntry(
      name: json['API'] ?? '',
      description: json['Description'] ?? '',
      auth: json['Auth'] ?? '',
      https: json['HTTPS'] ?? false,
      cors: json['Cors'] ?? '',
      link: json['Link'] ?? '',
      category: json['Category'] ?? '',
    );
  }
}

class ApiResponse {
  final int count;
  final List<ApiEntry> entries;

  ApiResponse({
    required this.count,
    required this.entries,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    var list = json['entries'] as List;
    List<ApiEntry> entryList = list.map((i) => ApiEntry.fromJson(i)).toList();

    return ApiResponse(
      count: json['count'] ?? 0,
      entries: entryList,
    );
  }
}
