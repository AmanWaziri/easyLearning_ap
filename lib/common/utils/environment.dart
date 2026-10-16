// import 'package:flutter/foundation.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
//
// class Environment {
//   static String get fileName {
//     if (kReleaseMode) { // KReleaseMode and KDebugMode comes from flutter/foundation.
//       // KReleaseMode returns Production environment while KDebugMode returns development environment
//       return '.env.production';
//     }
//
//     return '.env.development';
//   }
//
//   static String get apiKey {
//     return dotenv.env['API_KEY'] ?? 'API_KEY not found';
//   }
//
//   static String get appBaseUrl {
//     return dotenv.env['API_BASE_URL'] ?? 'API_BASE_URL not found';
//   }
//
//   static String get googleApiKey {
//     return dotenv.env['MAPS_API_KEY'] ?? 'MAPS_API_KEY not found';
//   }
//
// }
