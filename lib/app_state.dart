import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _pubgListId =
          await secureStorage.getStringList('ff_pubgListId') ?? _pubgListId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _orderIDCheck = 'B2161Y1753248428';
  String get orderIDCheck => _orderIDCheck;
  set orderIDCheck(String value) {
    _orderIDCheck = value;
  }

  int _lastOrder = 1753248428;
  int get lastOrder => _lastOrder;
  set lastOrder(int value) {
    _lastOrder = value;
  }

  String _sdfsdfs = '';
  String get sdfsdfs => _sdfsdfs;
  set sdfsdfs(String value) {
    _sdfsdfs = value;
  }

  List<String> _pubgListId = [];
  List<String> get pubgListId => _pubgListId;
  set pubgListId(List<String> value) {
    _pubgListId = value;
    secureStorage.setStringList('ff_pubgListId', value);
  }

  void deletePubgListId() {
    secureStorage.delete(key: 'ff_pubgListId');
  }

  void addToPubgListId(String value) {
    pubgListId.add(value);
    secureStorage.setStringList('ff_pubgListId', _pubgListId);
  }

  void removeFromPubgListId(String value) {
    pubgListId.remove(value);
    secureStorage.setStringList('ff_pubgListId', _pubgListId);
  }

  void removeAtIndexFromPubgListId(int index) {
    pubgListId.removeAt(index);
    secureStorage.setStringList('ff_pubgListId', _pubgListId);
  }

  void updatePubgListIdAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    pubgListId[index] = updateFn(_pubgListId[index]);
    secureStorage.setStringList('ff_pubgListId', _pubgListId);
  }

  void insertAtIndexInPubgListId(int index, String value) {
    pubgListId.insert(index, value);
    secureStorage.setStringList('ff_pubgListId', _pubgListId);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
