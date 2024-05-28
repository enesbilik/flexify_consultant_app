import 'package:dio/dio.dart';

class NetworkManager {
  static NetworkManager? _instance;
  static NetworkManager get instance {
    if (_instance != null) return _instance!;
    _instance = NetworkManager._init();
    return _instance!;
  }

  final String _baseUrl2 = 'http://0.0.0.0:5118/api/';

  late final Dio dio;

  NetworkManager._init() {
    dio = Dio(
      BaseOptions(
          baseUrl: _baseUrl2, headers: {'Content-Type': 'application/json'}),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final apiKey =
              "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJqdGkiOiJhMjBiMWRiNi0yMGY0LTRkNjEtOWVmZS1mMzcyMDM2YWY0M2MiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjU4N2M5ZjhkLTg2MGYtNGUyMS02ZWU1LTA4ZGM1ZmQ0ZWU4YiIsImVtYWlsIjoic3RyaW5nZ2ZkQGdtYWlsLmNvbSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IlVzZXIiLCJleHAiOjE3MTY4Mjk0MDIsImlzcyI6ImZsZXhpZnlAZmxleGlmeS5jb20iLCJhdWQiOiJmbGV4aWZ5QGZsZXhpZnkuY29tIn0.cCO_97Pq1iKAxp8ldfEN-oP0vlByywhRj3zwmosB8Kk";
          if (apiKey != "") {
            options.headers['Authorization'] = 'Bearer $apiKey';
          }
          return handler.next(options);
        },
      ),
    );
  }
}
