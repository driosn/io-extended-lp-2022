import 'package:url_launcher/url_launcher.dart';

class LaunchUrlHelper {
  static launch(String url) async {
    try {
      await launchUrl(Uri.parse(url));
    } catch (e) {
      rethrow;
    }
  }
}
