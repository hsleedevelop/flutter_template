import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../utils/logger.dart';

bool get kIsDEV => dotenv.env['FLAVOR'] == 'dev';
bool get kIsSTG => dotenv.env['FLAVOR'] == 'stg';
bool get kIsPRD => dotenv.env['FLAVOR'] == 'prod';

class AppConstants {
  static String get apiBaseUrl {
    final String url = '${dotenv.env['API']}';
    logD(url);
    return url;
  }

  static String get workerWebUrl {
    final String url = '${dotenv.env['WORKER_WEB']}';
    logD(url);
    return url;
  }
}