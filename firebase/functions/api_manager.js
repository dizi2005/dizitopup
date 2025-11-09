const axios = require("axios").default;
const qs = require("qs");

/// Start MonCash SandBox Group Code

function createMonCashSandBoxGroup() {
  return {
    baseUrl: `https://sandbox.moncashbutton.digicelgroup.com/Api`,
    headers: {},
  };
}

async function _authenticationCall(context, ffVariables) {
  var apiKey = ffVariables["apiKey"];
  const monCashSandBoxGroup = createMonCashSandBoxGroup();

  var url = `${monCashSandBoxGroup.baseUrl}/oauth/token`;
  var headers = {
    "Content-Type": `application/x-www-form-urlencoded`,
    Authorization: `Basic ${apiKey}`,
  };
  var params = { scope: `read,write`, grant_type: `client_credentials` };
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "X_WWW_FORM_URL_ENCODED",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _createPaymentCall(context, ffVariables) {
  var amout = ffVariables["amout"];
  var tokenID = ffVariables["tokenID"];
  var orderId = ffVariables["orderId"];
  const monCashSandBoxGroup = createMonCashSandBoxGroup();

  var url = `${monCashSandBoxGroup.baseUrl}/v1/CreatePayment`;
  var headers = {
    "Content-Type": `application/json`,
    Authorization: `Bearer  ${tokenID}`,
  };
  var params = {};
  var ffApiRequestBody = `
{
  "amount": "${amout}",
  "orderId": "${escapeStringForJson(orderId)}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _paymentDetailsOrderIDCall(context, ffVariables) {
  var tokenID = ffVariables["tokenID"];
  var orderId = ffVariables["orderId"];
  const monCashSandBoxGroup = createMonCashSandBoxGroup();

  var url = `${monCashSandBoxGroup.baseUrl}/v1/RetrieveOrderPayment`;
  var headers = {
    Content_Type: `application/json`,
    Authorization: `Bearer  ${tokenID}`,
  };
  var params = {};
  var ffApiRequestBody = `
{
  "orderId": "${escapeStringForJson(orderId)}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _paymentDetailsTxnIDCall(context, ffVariables) {
  var txnID = ffVariables["txnID"];
  var tokenID = ffVariables["tokenID"];
  const monCashSandBoxGroup = createMonCashSandBoxGroup();

  var url = `${monCashSandBoxGroup.baseUrl}/v1/RetrieveTransactionPayment`;
  var headers = {
    Content_Type: `application/json`,
    Authorization: `Bearer  ${tokenID}`,
  };
  var params = {};
  var ffApiRequestBody = `
{
  "orderId": "${escapeStringForJson(txnID)}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _ccCopyCopyCopyCopyCopyCopyCopyCall(context, ffVariables) {
  const monCashSandBoxGroup = createMonCashSandBoxGroup();

  var url = `${monCashSandBoxGroup.baseUrl}/c`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _ccCopyCopyCopyCopyCopyCopyCall(context, ffVariables) {
  const monCashSandBoxGroup = createMonCashSandBoxGroup();

  var url = `${monCashSandBoxGroup.baseUrl}/c`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _ccCopyCopyCopyCopyCopyCall(context, ffVariables) {
  const monCashSandBoxGroup = createMonCashSandBoxGroup();

  var url = `${monCashSandBoxGroup.baseUrl}/c`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _ccCopyCopyCopyCopyCall(context, ffVariables) {
  const monCashSandBoxGroup = createMonCashSandBoxGroup();

  var url = `${monCashSandBoxGroup.baseUrl}/c`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _ccCopyCopyCopyCall(context, ffVariables) {
  const monCashSandBoxGroup = createMonCashSandBoxGroup();

  var url = `${monCashSandBoxGroup.baseUrl}/c`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _ccCopyCopyCall(context, ffVariables) {
  const monCashSandBoxGroup = createMonCashSandBoxGroup();

  var url = `${monCashSandBoxGroup.baseUrl}/c`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _ccCopyCall(context, ffVariables) {
  const monCashSandBoxGroup = createMonCashSandBoxGroup();

  var url = `${monCashSandBoxGroup.baseUrl}/c`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}

/// End MonCash SandBox Group Code

/// Start TopupEpin Group Code

function createTopupEpinGroup() {
  return {
    baseUrl: `https://topupepinall-production.up.railway.app`,
    headers: {},
  };
}

async function _profileCall(context, ffVariables) {
  var apikey = ffVariables["apikey"] ?? "060247053C425C31395AAAD5F05F2A24";
  const topupEpinGroup = createTopupEpinGroup();

  var url = `${topupEpinGroup.baseUrl}/profile`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = `
{
  "api_key": "${escapeStringForJson(apikey)}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _servicesCall(context, ffVariables) {
  var apikey = ffVariables["apikey"] ?? "060247053C425C31395AAAD5F05F2A24";
  var id = ffVariables["id"];
  var category = ffVariables["category"];
  const topupEpinGroup = createTopupEpinGroup();

  var url = `${topupEpinGroup.baseUrl}/products`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = `
{
  "api_key": "${escapeStringForJson(apikey)}",
  "id": ${id}
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _newOrderCall(context, ffVariables) {
  var apiKey = ffVariables["apiKey"] ?? "060247053C425C31395AAAD5F05F2A24";
  var referenceOrderNumber = ffVariables["referenceOrderNumber"];
  var productId = ffVariables["productId"];
  var playerid = ffVariables["playerid"];
  var serverId = ffVariables["serverId"];
  const topupEpinGroup = createTopupEpinGroup();

  var url = `${topupEpinGroup.baseUrl}/order`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = `
{
  "api_key": "${escapeStringForJson(apiKey)}",
  "referenceOrderNumber": "${escapeStringForJson(referenceOrderNumber)}",
  "productId": "${escapeStringForJson(productId)}",
  "userId": "${escapeStringForJson(playerid)}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _serverListCall(context, ffVariables) {
  var apikey = ffVariables["apikey"] ?? "060247053C425C31395AAAD5F05F2A24";
  var category = ffVariables["category"];
  const topupEpinGroup = createTopupEpinGroup();

  var url = `${topupEpinGroup.baseUrl}/servers`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = `
{
  "api_key": "${escapeStringForJson(apikey)}",
  "category": "${escapeStringForJson(category)}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _statusCall(context, ffVariables) {
  var referenceOrderNumber =
    ffVariables["referenceOrderNumber"] ?? "060247053C425C31395AAAD5F05F2A24";
  var apikey = ffVariables["apikey"];
  const topupEpinGroup = createTopupEpinGroup();

  var url = `${topupEpinGroup.baseUrl}/status`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = `
{
  "api_key": "${escapeStringForJson(apikey)}",
  "referenceOrderNumber": "${escapeStringForJson(referenceOrderNumber)}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _venCopyCopyCall(context, ffVariables) {
  const topupEpinGroup = createTopupEpinGroup();

  var url = `${topupEpinGroup.baseUrl}/c`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _chCopyCopyCall(context, ffVariables) {
  const topupEpinGroup = createTopupEpinGroup();

  var url = `${topupEpinGroup.baseUrl}/c`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _ertyCopyCopyCall(context, ffVariables) {
  const topupEpinGroup = createTopupEpinGroup();

  var url = `${topupEpinGroup.baseUrl}/c`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _tgyCopyCopyCall(context, ffVariables) {
  const topupEpinGroup = createTopupEpinGroup();

  var url = `${topupEpinGroup.baseUrl}/c`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}

async function _yutrCopyCopyCall(context, ffVariables) {
  const topupEpinGroup = createTopupEpinGroup();

  var url = `${topupEpinGroup.baseUrl}/c`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}

/// End TopupEpin Group Code

async function _moncashAuthCall(context, ffVariables) {
  var apiKey =
    ffVariables["apiKey"] ??
    "YzFhYjAxNDFiMWVkYThkMWM1NzAyMTJhYTlhYmNiMTA6VktXSlRqTlhqc0JrZEtfdWdtSGZNekJYQjU1X0E5V3VPWGN6LVZuQzV2emJTVTBWcDVtempDeHExVjVhS2k2cg==";

  var url = `https://moncashapi.topupnjoy.skybund.com/moncash-auth`;
  var headers = { Authorization: `Basic ${apiKey}` };
  var params = {};
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}
async function _topupEpinStatusCall(context, ffVariables) {
  var apiKey = ffVariables["apiKey"] ?? "060247053C425C31395AAAD5F05F2A24";
  var orderId = ffVariables["orderId"];

  var url = `https://topupepinstate-production.up.railway.app/status`;
  var headers = { "Content-Type": `application/json` };
  var params = {};
  var ffApiRequestBody = `
{
  "api_key": "${escapeStringForJson(apiKey)}",
  "referenceOrderNumber": "${escapeStringForJson(orderId)}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}
async function _checkOrderStatusRollingCall(context, ffVariables) {
  var orderId = ffVariables["orderId"];
  var apiKey = ffVariables["apiKey"] ?? "060247053C425C31395AAAD5F05F2A24";

  var url = `https://checkorderstatus-production.up.railway.app/start-polling`;
  var headers = {};
  var params = {};
  var ffApiRequestBody = `
{
  "api_key": "${escapeStringForJson(apiKey)}",
  "referenceOrderNumber": "${escapeStringForJson(orderId)}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}
async function _sendEmailCall(context, ffVariables) {
  var apiKey =
    ffVariables["apiKey"] ??
    "RGlldSBlc3QgbWEgdmllIGplIG5lIHNhdXJyaWEgY29tbWVudCBmYWlyZSBwb3VyIHZpdnJlIHNhbnMgbHVpIGlsIGEgc2F1dmUgbW9pIG1hIG1lcmUgZXQgbW9uIHBlcmUgZXQgbWEgc29ldXIgaWwgZXN0IGwndW5pcXVlIERpZXUgamUgdGFpbWUgSmVzdXM=";
  var smtpUser = ffVariables["smtpUser"] ?? "contact@philippebrutus.ca";
  var smtpPass = ffVariables["smtpPass"] ?? "Biddas@12,34";
  var toEmail = ffVariables["toEmail"];
  var subject = ffVariables["subject"];
  var messageContent = ffVariables["messageContent"];
  var fromName = ffVariables["fromName"];

  var url = `https://senemailpro-production.up.railway.app/send-email`;
  var headers = {
    "Content-Type": `application/json`,
    Authorization: `Basic ${apiKey}`,
  };
  var params = {};
  var ffApiRequestBody = `
{
  "smtp_server": "mail.privateemail.com",
  "smtp_port": 587,
  "smtp_user": "${escapeStringForJson(smtpUser)}",
  "smtp_pass": "${escapeStringForJson(smtpPass)}",
  "to_email": "${escapeStringForJson(toEmail)}",
  "subject": "${escapeStringForJson(subject)}",
  "message_content": "${escapeStringForJson(messageContent)}",
  "from_name": "${escapeStringForJson(fromName)}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}
async function _uRLToFireStorageCall(context, ffVariables) {
  var urlFichiers = ffVariables["urlFichiers"];
  var apiKey =
    ffVariables["apiKey"] ??
    "RGlldSBlc3QgbWEgdmllIGplIG5lIHNhdXJyaWEgY29tbWVudCBmYWlyZSBwb3VyIHZpdnJlIHNhbnMgbHVpIGlsIGEgc2F1dmUgbW9pIG1hIG1lcmUgZXQgbW9uIHBlcmUgZXQgbWEgc29ldXIgaWwgZXN0IGwndW5pcXVlIERpZXUgamUgdGFpbWUgSmVzdXM=";

  var url = `https://uplaodetofirestorage-production.up.railway.app/upload_from_url`;
  var headers = {
    "Content-Type": `application/json`,
    Authorization: `Bearer ${apiKey}`,
  };
  var params = {};
  var ffApiRequestBody = `
{
  "url": "${escapeStringForJson(urlFichiers)}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}
async function _hlGamingAllDataCall(context, ffVariables) {
  var freefireUid = ffVariables["freefireUid"];
  var regionCode = ffVariables["regionCode"];
  var tonDevUid = ffVariables["tonDevUid"] ?? "GheVQPF6xDgSmZcnSx6HQZk3XxG2";
  var tonApiKey = ffVariables["tonApiKey"] ?? "tiT4JyKArDoc2KSdMzpT8T0ClrO3e2";

  var url = `https://proapis.hlgamingofficial.com/main/games/freefire/account/api?sectionName=AllData&PlayerUid=${freefireUid}&region=${regionCode}&useruid=${tonDevUid}&api=${tonApiKey}&filter=isIMG`;
  var headers = {};
  var params = {
    TON_DEV_UID: tonDevUid,
    TON_API_KEY: tonApiKey,
    FREEFIRE_UID: freefireUid,
    REGION_CODE: regionCode,
  };
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}
async function _hlGamingCall(context, ffVariables) {
  var userUid = ffVariables["userUid"] ?? "GheVQPF6xDgSmZcnSx6HQZk3XxG2";
  var apiKey = ffVariables["apiKey"] ?? "tiT4JyKArDoc2KSdMzpT8T0ClrO3e2";
  var avatarId = ffVariables["avatarId"];

  var url = `https://proapis.hlgamingofficial.com/main/games/freefire/meta/api?sectionName=image&useruid=${userUid}&api=${apiKey}&img_code=${avatarId}`;
  var headers = {};
  var params = {
    TON_DEV_UID: userUid,
    TON_API_KEY: apiKey,
    AVATAR_ID: avatarId,
  };
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "get",
    url,
    headers,
    params,
    returnBody: true,
    isStreamingApi: false,
  });
}
async function _uploadFileToFireStorageCall(context, ffVariables) {
  var apiKey =
    ffVariables["apiKey"] ??
    "RGlldSBlc3QgbWEgdmllIGplIG5lIHNhdXJyaWEgY29tbWVudCBmYWlyZSBwb3VyIHZpdnJlIHNhbnMgbHVpIGlsIGEgc2F1dmUgbW9pIG1hIG1lcmUgZXQgbW9uIHBlcmUgZXQgbWEgc29ldXIgaWwgZXN0IGwndW5pcXVlIERpZXUgamUgdGFpbWUgSmVzdXM=";
  var email = ffVariables["email"];
  var playerId = ffVariables["playerId"];
  var url = ffVariables["url"];

  var url = `https://api.storage.topupnjoy.skybund.com/upload-to-firebase-storage`;
  var headers = {
    "Content-Type": `application/json`,
    Authorization: `Basic ${apiKey}`,
  };
  var params = {};
  var ffApiRequestBody = `
{
  "user_email": "${escapeStringForJson(email)}",
  "player_id": "${escapeStringForJson(playerId)}",
  "image_url": "${escapeStringForJson(url)}"
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

/// Helper functions to route to the appropriate API Call.

async function makeApiCall(context, data) {
  var callName = data["callName"] || "";
  var variables = data["variables"] || {};

  const callMap = {
    MoncashAuthCall: _moncashAuthCall,
    TopupEpinStatusCall: _topupEpinStatusCall,
    CheckOrderStatusRollingCall: _checkOrderStatusRollingCall,
    SendEmailCall: _sendEmailCall,
    URLToFireStorageCall: _uRLToFireStorageCall,
    HlGamingAllDataCall: _hlGamingAllDataCall,
    HlGamingCall: _hlGamingCall,
    UploadFileToFireStorageCall: _uploadFileToFireStorageCall,
    AuthenticationCall: _authenticationCall,
    CreatePaymentCall: _createPaymentCall,
    PaymentDetailsOrderIDCall: _paymentDetailsOrderIDCall,
    PaymentDetailsTxnIDCall: _paymentDetailsTxnIDCall,
    CcCopyCopyCopyCopyCopyCopyCopyCall: _ccCopyCopyCopyCopyCopyCopyCopyCall,
    CcCopyCopyCopyCopyCopyCopyCall: _ccCopyCopyCopyCopyCopyCopyCall,
    CcCopyCopyCopyCopyCopyCall: _ccCopyCopyCopyCopyCopyCall,
    CcCopyCopyCopyCopyCall: _ccCopyCopyCopyCopyCall,
    CcCopyCopyCopyCall: _ccCopyCopyCopyCall,
    CcCopyCopyCall: _ccCopyCopyCall,
    CcCopyCall: _ccCopyCall,
    ProfileCall: _profileCall,
    ServicesCall: _servicesCall,
    NewOrderCall: _newOrderCall,
    ServerListCall: _serverListCall,
    StatusCall: _statusCall,
    VenCopyCopyCall: _venCopyCopyCall,
    ChCopyCopyCall: _chCopyCopyCall,
    ErtyCopyCopyCall: _ertyCopyCopyCall,
    TgyCopyCopyCall: _tgyCopyCopyCall,
    YutrCopyCopyCall: _yutrCopyCopyCall,
  };

  if (!(callName in callMap)) {
    return {
      statusCode: 400,
      error: `API Call "${callName}" not defined as private API.`,
    };
  }

  var apiCall = callMap[callName];
  var response = await apiCall(context, variables);
  return response;
}

async function makeApiRequest({
  method,
  url,
  headers,
  params,
  body,
  returnBody,
  isStreamingApi,
}) {
  return axios
    .request({
      method: method,
      url: url,
      headers: headers,
      params: params,
      responseType: isStreamingApi ? "stream" : "json",
      ...(body && { data: body }),
    })
    .then((response) => {
      return {
        statusCode: response.status,
        headers: response.headers,
        ...(returnBody && { body: response.data }),
        isStreamingApi: isStreamingApi,
      };
    })
    .catch(function (error) {
      return {
        statusCode: error.response.status,
        headers: error.response.headers,
        ...(returnBody && { body: error.response.data }),
        error: error.message,
      };
    });
}

const _unauthenticatedResponse = {
  statusCode: 401,
  headers: {},
  error: "API call requires authentication",
};

function createBody({ headers, params, body, bodyType }) {
  switch (bodyType) {
    case "JSON":
      headers["Content-Type"] = "application/json";
      return body;
    case "TEXT":
      headers["Content-Type"] = "text/plain";
      return body;
    case "X_WWW_FORM_URL_ENCODED":
      headers["Content-Type"] = "application/x-www-form-urlencoded";
      return qs.stringify(params);
  }
}
function escapeStringForJson(val) {
  if (typeof val !== "string") {
    return val;
  }
  return val
    .replace(/[\\]/g, "\\\\")
    .replace(/["]/g, '\\"')
    .replace(/[\n]/g, "\\n")
    .replace(/[\t]/g, "\\t");
}

module.exports = { makeApiCall };
