import 'dart:io' as io;
import 'package:http/io_client.dart' show IOClient;

IOClient createBadCertIOHttpClient() {
  final ioHttpClient = io.HttpClient()
    ..badCertificateCallback = (cert, host, port) {
      if (host == 'www.xbiqugeshu.com') {
        return true;
      }
      return false;
    };
  return IOClient(ioHttpClient);
}
