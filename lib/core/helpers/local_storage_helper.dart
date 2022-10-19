import 'package:hive_flutter/hive_flutter.dart';

class LocalStorageHelper {
  LocalStorageHelper._internal();
  static final LocalStorageHelper _shared = LocalStorageHelper._internal();

  factory LocalStorageHelper() {
    return _shared;
  }

  Box<dynamic>? hivebox;
  static initLocalStorageHelper() async {
    _shared.hivebox = await Hive.openBox('TiketToFuture');
  }

  static dynamic getValue(String key) {
    return _shared.hivebox?.get(key);
  }

  static setValue(String key, dynamic val) {
    _shared.hivebox?.put(key, val);
  }

  static deleteValue(String key) {
    _shared.hivebox?.delete(key);
  }
}
