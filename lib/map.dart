
import 'package:url_launcher/url_launcher.dart';

class MapUtils {
  MapUtils._();
static Future<void> openMap(double latitude, double longitude) async{
  String googleUrl = 'https://www.google.co.in/maps/@22.6870534,75.845849,14z';
  if (await canLaunch(googleUrl))
  await launch(googleUrl);
  else {
  throw 'Could not open the map.';
  }
}
}