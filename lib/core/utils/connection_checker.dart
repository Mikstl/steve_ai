import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract interface class ConnectionChecker {
  Future<bool> get isConnected;
}

@Injectable(as: ConnectionChecker)
class ConnectionCheckerImpl implements ConnectionChecker {
  ConnectionCheckerImpl();

  final InternetConnection internetConnection = InternetConnection();

  @override
  Future<bool> get isConnected async =>
      await internetConnection.hasInternetAccess;
}
