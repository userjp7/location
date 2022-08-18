import 'package:url_launcher/url_launcher.dart';

class MapUtils {
  MapUtils._();
  static Future<void> openMap(double latitute, double longitude) async {
    String googleUrl =
        'https://www.google.com/map/search/?api=1&query=$latitute, $longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the Map';
    }
  }
}
