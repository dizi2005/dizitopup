import 'dart:convert';
import 'dart:typed_data';
import '../cloud_functions/cloud_functions.dart';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'SkybundDiziAPI';

/// Start MonCash SandBox Group Code

class MonCashSandBoxGroup {
  static AuthenticationCall authenticationCall = AuthenticationCall();
  static CreatePaymentCall createPaymentCall = CreatePaymentCall();
  static PaymentDetailsOrderIDCall paymentDetailsOrderIDCall =
      PaymentDetailsOrderIDCall();
  static PaymentDetailsTxnIDCall paymentDetailsTxnIDCall =
      PaymentDetailsTxnIDCall();
  static CcCopyCopyCopyCopyCopyCopyCopyCall ccCopyCopyCopyCopyCopyCopyCopyCall =
      CcCopyCopyCopyCopyCopyCopyCopyCall();
  static CcCopyCopyCopyCopyCopyCopyCall ccCopyCopyCopyCopyCopyCopyCall =
      CcCopyCopyCopyCopyCopyCopyCall();
  static CcCopyCopyCopyCopyCopyCall ccCopyCopyCopyCopyCopyCall =
      CcCopyCopyCopyCopyCopyCall();
  static CcCopyCopyCopyCopyCall ccCopyCopyCopyCopyCall =
      CcCopyCopyCopyCopyCall();
  static CcCopyCopyCopyCall ccCopyCopyCopyCall = CcCopyCopyCopyCall();
  static CcCopyCopyCall ccCopyCopyCall = CcCopyCopyCall();
  static CcCopyCall ccCopyCall = CcCopyCall();
}

class AuthenticationCall {
  Future<ApiCallResponse> call({
    String? apiKey = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'AuthenticationCall',
        'variables': {
          'apiKey': apiKey,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
}

class CreatePaymentCall {
  Future<ApiCallResponse> call({
    double? amout,
    String? tokenID = '',
    String? orderId = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreatePaymentCall',
        'variables': {
          'amout': amout,
          'tokenID': tokenID,
          'orderId': orderId,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? paymentToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.payment_token.token''',
      ));
  String? expPaymnt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.payment_token.expired''',
      ));
}

class PaymentDetailsOrderIDCall {
  Future<ApiCallResponse> call({
    String? tokenID = '',
    String? orderId = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'PaymentDetailsOrderIDCall',
        'variables': {
          'tokenID': tokenID,
          'orderId': orderId,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? isConfirmed(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.payment.message''',
      ));
}

class PaymentDetailsTxnIDCall {
  Future<ApiCallResponse> call({
    String? txnID = '',
    String? tokenID = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'PaymentDetailsTxnIDCall',
        'variables': {
          'txnID': txnID,
          'tokenID': tokenID,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CcCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CcCopyCopyCopyCopyCopyCopyCopyCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CcCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CcCopyCopyCopyCopyCopyCopyCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CcCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CcCopyCopyCopyCopyCopyCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CcCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CcCopyCopyCopyCopyCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CcCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CcCopyCopyCopyCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CcCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CcCopyCopyCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CcCopyCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CcCopyCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

/// End MonCash SandBox Group Code

/// Start TopupEpin Group Code

class TopupEpinGroup {
  static ProfileCall profileCall = ProfileCall();
  static ServicesCall servicesCall = ServicesCall();
  static NewOrderCall newOrderCall = NewOrderCall();
  static ServerListCall serverListCall = ServerListCall();
  static StatusCall statusCall = StatusCall();
  static VenCopyCopyCall venCopyCopyCall = VenCopyCopyCall();
  static ChCopyCopyCall chCopyCopyCall = ChCopyCopyCall();
  static ErtyCopyCopyCall ertyCopyCopyCall = ErtyCopyCopyCall();
  static TgyCopyCopyCall tgyCopyCopyCall = TgyCopyCopyCall();
  static YutrCopyCopyCall yutrCopyCopyCall = YutrCopyCopyCall();
}

class ProfileCall {
  Future<ApiCallResponse> call({
    String? apikey,
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ProfileCall',
        'variables': {
          'apikey': apikey,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  double? currentBalance(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.balance''',
      ));
}

class ServicesCall {
  Future<ApiCallResponse> call({
    String? apikey,
    int? id,
    String? category = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ServicesCall',
        'variables': {
          'apikey': apikey,
          'id': id,
          'category': category,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? statuGame(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].status''',
      ));
  double? priceTry(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data[:].price''',
      ));
}

class NewOrderCall {
  Future<ApiCallResponse> call({
    String? apiKey,
    String? referenceOrderNumber = '',
    String? productId = '',
    String? playerid = '',
    String? serverId = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'NewOrderCall',
        'variables': {
          'apiKey': apiKey,
          'referenceOrderNumber': referenceOrderNumber,
          'productId': productId,
          'playerid': playerid,
          'serverId': serverId,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? gameName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.category''',
      ));
  String? productName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.service''',
      ));
  String? referenceNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.referenceOrderNumber''',
      ));
  String? orderIdBackend(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.orderId''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.status''',
      ));
  String? creatAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.created_at''',
      ));
}

class ServerListCall {
  Future<ApiCallResponse> call({
    String? apikey,
    String? category = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ServerListCall',
        'variables': {
          'apikey': apikey,
          'category': category,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class StatusCall {
  Future<ApiCallResponse> call({
    String? referenceOrderNumber,
    String? apikey = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'StatusCall',
        'variables': {
          'referenceOrderNumber': referenceOrderNumber,
          'apikey': apikey,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class VenCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'VenCopyCopyCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class ChCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ChCopyCopyCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class ErtyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ErtyCopyCopyCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class TgyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'TgyCopyCopyCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class YutrCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'YutrCopyCopyCall',
        'variables': {},
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

/// End TopupEpin Group Code

/// Start Api Copy Copy Copy Copy Copy Group Code

class ApiCopyCopyCopyCopyCopyGroup {
  static String getBaseUrl() => 'https://www.google.com';
  static Map<String, String> headers = {};
  static AnnnCopyCopyCopyCopyCopyCall annnCopyCopyCopyCopyCopyCall =
      AnnnCopyCopyCopyCopyCopyCall();
  static AsCopyCopyCopyCopyCopyCall asCopyCopyCopyCopyCopyCall =
      AsCopyCopyCopyCopyCopyCall();
  static RttCopyCopyCopyCopyCall rttCopyCopyCopyCopyCall =
      RttCopyCopyCopyCopyCall();
  static VjiuCopyCopyCopyCopyCall vjiuCopyCopyCopyCopyCall =
      VjiuCopyCopyCopyCopyCall();
  static RthCopyCopyCopyCopyCall rthCopyCopyCopyCopyCall =
      RthCopyCopyCopyCopyCall();
  static VenCopyCopyCopyCopyCall venCopyCopyCopyCopyCall =
      VenCopyCopyCopyCopyCall();
  static ChCopyCopyCopyCopyCall chCopyCopyCopyCopyCall =
      ChCopyCopyCopyCopyCall();
  static ErtyCopyCopyCopyCopyCall ertyCopyCopyCopyCopyCall =
      ErtyCopyCopyCopyCopyCall();
  static TgyCopyCopyCopyCopyCall tgyCopyCopyCopyCopyCall =
      TgyCopyCopyCopyCopyCall();
  static YutrCopyCopyCopyCopyCall yutrCopyCopyCopyCopyCall =
      YutrCopyCopyCopyCopyCall();
}

class AnnnCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Annn Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/asa',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AsCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'as Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/sss',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RttCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'rtt Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VjiuCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'vjiu Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RthCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'rth Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VenCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ven Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ch Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ErtyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'erty Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TgyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tgy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class YutrCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'yutr Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Api Copy Copy Copy Copy Copy Group Code

/// Start Api Copy Copy Copy Copy Copy Copy Group Code

class ApiCopyCopyCopyCopyCopyCopyGroup {
  static String getBaseUrl() => 'https://www.google.com';
  static Map<String, String> headers = {};
  static AnnnCopyCopyCopyCopyCopyCopyCall annnCopyCopyCopyCopyCopyCopyCall =
      AnnnCopyCopyCopyCopyCopyCopyCall();
  static AsCopyCopyCopyCopyCopyCopyCall asCopyCopyCopyCopyCopyCopyCall =
      AsCopyCopyCopyCopyCopyCopyCall();
  static RttCopyCopyCopyCopyCopyCall rttCopyCopyCopyCopyCopyCall =
      RttCopyCopyCopyCopyCopyCall();
  static VjiuCopyCopyCopyCopyCopyCall vjiuCopyCopyCopyCopyCopyCall =
      VjiuCopyCopyCopyCopyCopyCall();
  static RthCopyCopyCopyCopyCopyCall rthCopyCopyCopyCopyCopyCall =
      RthCopyCopyCopyCopyCopyCall();
  static VenCopyCopyCopyCopyCopyCall venCopyCopyCopyCopyCopyCall =
      VenCopyCopyCopyCopyCopyCall();
  static ChCopyCopyCopyCopyCopyCall chCopyCopyCopyCopyCopyCall =
      ChCopyCopyCopyCopyCopyCall();
  static ErtyCopyCopyCopyCopyCopyCall ertyCopyCopyCopyCopyCopyCall =
      ErtyCopyCopyCopyCopyCopyCall();
  static TgyCopyCopyCopyCopyCopyCall tgyCopyCopyCopyCopyCopyCall =
      TgyCopyCopyCopyCopyCopyCall();
  static YutrCopyCopyCopyCopyCopyCall yutrCopyCopyCopyCopyCopyCall =
      YutrCopyCopyCopyCopyCopyCall();
}

class AnnnCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Annn Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/asa',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AsCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'as Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/sss',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RttCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'rtt Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VjiuCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'vjiu Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RthCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'rth Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VenCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ven Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ch Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ErtyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'erty Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TgyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tgy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class YutrCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'yutr Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Api Copy Copy Copy Copy Copy Copy Group Code

/// Start Api Copy Copy Copy Copy Copy Copy Copy Group Code

class ApiCopyCopyCopyCopyCopyCopyCopyGroup {
  static String getBaseUrl() => 'https://www.google.com';
  static Map<String, String> headers = {};
  static AnnnCopyCopyCopyCopyCopyCopyCopyCall
      annnCopyCopyCopyCopyCopyCopyCopyCall =
      AnnnCopyCopyCopyCopyCopyCopyCopyCall();
  static AsCopyCopyCopyCopyCopyCopyCopyCall asCopyCopyCopyCopyCopyCopyCopyCall =
      AsCopyCopyCopyCopyCopyCopyCopyCall();
  static RttCopyCopyCopyCopyCopyCopyCall rttCopyCopyCopyCopyCopyCopyCall =
      RttCopyCopyCopyCopyCopyCopyCall();
  static VjiuCopyCopyCopyCopyCopyCopyCall vjiuCopyCopyCopyCopyCopyCopyCall =
      VjiuCopyCopyCopyCopyCopyCopyCall();
  static RthCopyCopyCopyCopyCopyCopyCall rthCopyCopyCopyCopyCopyCopyCall =
      RthCopyCopyCopyCopyCopyCopyCall();
  static VenCopyCopyCopyCopyCopyCopyCall venCopyCopyCopyCopyCopyCopyCall =
      VenCopyCopyCopyCopyCopyCopyCall();
  static ChCopyCopyCopyCopyCopyCopyCall chCopyCopyCopyCopyCopyCopyCall =
      ChCopyCopyCopyCopyCopyCopyCall();
  static ErtyCopyCopyCopyCopyCopyCopyCall ertyCopyCopyCopyCopyCopyCopyCall =
      ErtyCopyCopyCopyCopyCopyCopyCall();
  static TgyCopyCopyCopyCopyCopyCopyCall tgyCopyCopyCopyCopyCopyCopyCall =
      TgyCopyCopyCopyCopyCopyCopyCall();
  static YutrCopyCopyCopyCopyCopyCopyCall yutrCopyCopyCopyCopyCopyCopyCall =
      YutrCopyCopyCopyCopyCopyCopyCall();
}

class AnnnCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Annn Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/asa',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AsCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'as Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/sss',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RttCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'rtt Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VjiuCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'vjiu Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RthCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'rth Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VenCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ven Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ch Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ErtyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'erty Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TgyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tgy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class YutrCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'yutr Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Api Copy Copy Copy Copy Copy Copy Copy Group Code

/// Start Api Copy Copy Copy Copy Copy Copy Copy Copy Group Code

class ApiCopyCopyCopyCopyCopyCopyCopyCopyGroup {
  static String getBaseUrl() => 'https://www.google.com';
  static Map<String, String> headers = {};
  static AnnnCopyCopyCopyCopyCopyCopyCopyCopyCall
      annnCopyCopyCopyCopyCopyCopyCopyCopyCall =
      AnnnCopyCopyCopyCopyCopyCopyCopyCopyCall();
  static AsCopyCopyCopyCopyCopyCopyCopyCopyCall
      asCopyCopyCopyCopyCopyCopyCopyCopyCall =
      AsCopyCopyCopyCopyCopyCopyCopyCopyCall();
  static RttCopyCopyCopyCopyCopyCopyCopyCall
      rttCopyCopyCopyCopyCopyCopyCopyCall =
      RttCopyCopyCopyCopyCopyCopyCopyCall();
  static VjiuCopyCopyCopyCopyCopyCopyCopyCall
      vjiuCopyCopyCopyCopyCopyCopyCopyCall =
      VjiuCopyCopyCopyCopyCopyCopyCopyCall();
  static RthCopyCopyCopyCopyCopyCopyCopyCall
      rthCopyCopyCopyCopyCopyCopyCopyCall =
      RthCopyCopyCopyCopyCopyCopyCopyCall();
  static VenCopyCopyCopyCopyCopyCopyCopyCall
      venCopyCopyCopyCopyCopyCopyCopyCall =
      VenCopyCopyCopyCopyCopyCopyCopyCall();
  static ChCopyCopyCopyCopyCopyCopyCopyCall chCopyCopyCopyCopyCopyCopyCopyCall =
      ChCopyCopyCopyCopyCopyCopyCopyCall();
  static ErtyCopyCopyCopyCopyCopyCopyCopyCall
      ertyCopyCopyCopyCopyCopyCopyCopyCall =
      ErtyCopyCopyCopyCopyCopyCopyCopyCall();
  static TgyCopyCopyCopyCopyCopyCopyCopyCall
      tgyCopyCopyCopyCopyCopyCopyCopyCall =
      TgyCopyCopyCopyCopyCopyCopyCopyCall();
  static YutrCopyCopyCopyCopyCopyCopyCopyCall
      yutrCopyCopyCopyCopyCopyCopyCopyCall =
      YutrCopyCopyCopyCopyCopyCopyCopyCall();
}

class AnnnCopyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Annn Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/asa',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AsCopyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'as Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/sss',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RttCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'rtt Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VjiuCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'vjiu Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RthCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'rth Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VenCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ven Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ch Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ErtyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'erty Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TgyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tgy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class YutrCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'yutr Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Api Copy Copy Copy Copy Copy Copy Copy Copy Group Code

/// Start Api Copy Copy Copy Copy Copy Copy Copy Copy Copy Group Code

class ApiCopyCopyCopyCopyCopyCopyCopyCopyCopyGroup {
  static String getBaseUrl() => 'https://www.google.com';
  static Map<String, String> headers = {};
  static AnnnCopyCopyCopyCopyCopyCopyCopyCopyCopyCall
      annnCopyCopyCopyCopyCopyCopyCopyCopyCopyCall =
      AnnnCopyCopyCopyCopyCopyCopyCopyCopyCopyCall();
  static AsCopyCopyCopyCopyCopyCopyCopyCopyCopyCall
      asCopyCopyCopyCopyCopyCopyCopyCopyCopyCall =
      AsCopyCopyCopyCopyCopyCopyCopyCopyCopyCall();
  static RttCopyCopyCopyCopyCopyCopyCopyCopyCall
      rttCopyCopyCopyCopyCopyCopyCopyCopyCall =
      RttCopyCopyCopyCopyCopyCopyCopyCopyCall();
  static VjiuCopyCopyCopyCopyCopyCopyCopyCopyCall
      vjiuCopyCopyCopyCopyCopyCopyCopyCopyCall =
      VjiuCopyCopyCopyCopyCopyCopyCopyCopyCall();
  static RthCopyCopyCopyCopyCopyCopyCopyCopyCall
      rthCopyCopyCopyCopyCopyCopyCopyCopyCall =
      RthCopyCopyCopyCopyCopyCopyCopyCopyCall();
  static VenCopyCopyCopyCopyCopyCopyCopyCopyCall
      venCopyCopyCopyCopyCopyCopyCopyCopyCall =
      VenCopyCopyCopyCopyCopyCopyCopyCopyCall();
  static ChCopyCopyCopyCopyCopyCopyCopyCopyCall
      chCopyCopyCopyCopyCopyCopyCopyCopyCall =
      ChCopyCopyCopyCopyCopyCopyCopyCopyCall();
  static ErtyCopyCopyCopyCopyCopyCopyCopyCopyCall
      ertyCopyCopyCopyCopyCopyCopyCopyCopyCall =
      ErtyCopyCopyCopyCopyCopyCopyCopyCopyCall();
  static TgyCopyCopyCopyCopyCopyCopyCopyCopyCall
      tgyCopyCopyCopyCopyCopyCopyCopyCopyCall =
      TgyCopyCopyCopyCopyCopyCopyCopyCopyCall();
  static YutrCopyCopyCopyCopyCopyCopyCopyCopyCall
      yutrCopyCopyCopyCopyCopyCopyCopyCopyCall =
      YutrCopyCopyCopyCopyCopyCopyCopyCopyCall();
}

class AnnnCopyCopyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Annn Copy Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/asa',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AsCopyCopyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'as Copy Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/sss',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RttCopyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'rtt Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VjiuCopyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'vjiu Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RthCopyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'rth Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VenCopyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ven Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChCopyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ch Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ErtyCopyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'erty Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TgyCopyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tgy Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class YutrCopyCopyCopyCopyCopyCopyCopyCopyCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApiCopyCopyCopyCopyCopyCopyCopyCopyCopyGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'yutr Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: '${baseUrl}/c',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Api Copy Copy Copy Copy Copy Copy Copy Copy Copy Group Code

class MoncashAuthCall {
  static Future<ApiCallResponse> call({
    String? apiKey,
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'MoncashAuthCall',
        'variables': {
          'apiKey': apiKey,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? tokenAuth(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
}

class TopupEpinStatusCall {
  static Future<ApiCallResponse> call({
    String? apiKey,
    String? orderId = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'TopupEpinStatusCall',
        'variables': {
          'apiKey': apiKey,
          'orderId': orderId,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? product(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.data.service''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response.data.status''',
      ));
  static String? messageStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.response.data.serialNumber''',
      ));
}

class CheckOrderStatusRollingCall {
  static Future<ApiCallResponse> call({
    String? orderId = '',
    String? apiKey,
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CheckOrderStatusRollingCall',
        'variables': {
          'orderId': orderId,
          'apiKey': apiKey,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class SendEmailCall {
  static Future<ApiCallResponse> call({
    String? apiKey,
    String? smtpUser,
    String? smtpPass,
    String? toEmail = '',
    String? subject = '',
    String? messageContent = '',
    String? fromName = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'SendEmailCall',
        'variables': {
          'apiKey': apiKey,
          'smtpUser': smtpUser,
          'smtpPass': smtpPass,
          'toEmail': toEmail,
          'subject': subject,
          'messageContent': messageContent,
          'fromName': fromName,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class URLToFireStorageCall {
  static Future<ApiCallResponse> call({
    String? urlFichiers = '',
    String? apiKey,
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'URLToFireStorageCall',
        'variables': {
          'urlFichiers': urlFichiers,
          'apiKey': apiKey,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.firebase_url''',
      ));
}

class SimpleCallCopyCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'simpleCall Copy Copy Copy Copy Copy Copy',
      apiUrl: 'https://ww.com',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SimpleCallCopyCopyCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'simpleCall Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: 'https://ww.com',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SimpleCallCopyCopyCopyCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'simpleCall Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: 'https://ww.com',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SimpleCallCopyCopyCopyCopyCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'simpleCall Copy Copy Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: 'https://ww.com',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class HlGamingAllDataCall {
  static Future<ApiCallResponse> call({
    String? freefireUid = '',
    String? regionCode = '',
    String? tonDevUid,
    String? tonApiKey,
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'HlGamingAllDataCall',
        'variables': {
          'freefireUid': freefireUid,
          'regionCode': regionCode,
          'tonDevUid': tonDevUid,
          'tonApiKey': tonApiKey,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.AccountInfo.AccountName''',
      ));
  static int? level(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.result.AccountInfo.AccountLevel''',
      ));
  static String? avatarUrl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.AccountInfo.AccountAvatarId''',
      ));
  static String? playerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.socialinfo.AccountID''',
      ));
  static String? bannerUrl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.AccountInfo.AccountBannerId''',
      ));
}

class HlGamingCall {
  static Future<ApiCallResponse> call({
    String? userUid,
    String? apiKey,
    String? avatarId = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'HlGamingCall',
        'variables': {
          'userUid': userUid,
          'apiKey': apiKey,
          'avatarId': avatarId,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? avatarUrl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.result.url''',
      ));
}

class UploadFileToFireStorageCall {
  static Future<ApiCallResponse> call({
    String? apiKey,
    String? email = '',
    String? playerId = '',
    String? url = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'UploadFileToFireStorageCall',
        'variables': {
          'apiKey': apiKey,
          'email': email,
          'playerId': playerId,
          'url': url,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? storageUrl(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.firebase_url''',
      ));
}

class PUBGCheckIDCall {
  static Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PUBG Check ID',
      apiUrl: 'https://checker.behramkendra.com/api/game/pubg-mobile-tp',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? playerId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.user_id''',
      ));
  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.username''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
