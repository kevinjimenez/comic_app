import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static initEnvironment() async {
    await dotenv.load(fileName: '.env');
  }
  static String apiUrl = dotenv.env['API_URL'] ?? 'No definida';
  static String comicKey = dotenv.env['COMIC_KEY'] ?? 'No definida';
}