import 'package:http/http.dart' as http;
import 'dart:convert';

const String baseURL = "http://10.0.2.2:8080/api/merchant";

updateMerchantBaseSize(int bsId, double price) async {
  String path = "/capability/cake_base";

  var uri = Uri.parse(baseURL + path);
  var res = await http.put(uri, body: {
    "id": bsId.toString(),
    "price": price.toString()
  });

  return json.decode(res.body);
}

updateMerchantBaseColor(int bcId, double price) async {
  String path = "/capability/base_color";

  var uri = Uri.parse(baseURL + path);
  var res = await http.put(uri, body: {
    "id": bcId.toString(),
    "price": price.toString()
  });

  return json.decode(res.body);
}

updateMerchantBaseFlavor(int bfId, double price) async {
  String path = "/capability/base_flavor";

  var uri = Uri.parse(baseURL + path);
  var res = await http.put(uri, body: {
    "id": bfId.toString(),
    "price": price.toString()
  });

  return json.decode(res.body);
}

updateMerchantFrostingColor(int fcId, double price) async {
  String path = "/capability/frosting_color";

  var uri = Uri.parse(baseURL + path);
  var res = await http.put(uri, body: {
    "id": fcId.toString(),
    "price": price.toString()
  });

  return json.decode(res.body);
}

updateMerchantFrostingFlavor(int ffId, double price) async {
  String path = "/capability/frosting_flavor";

  var uri = Uri.parse(baseURL + path);
  var res = await http.put(uri, body: {
    "id": ffId.toString(),
    "price": price.toString()
  });

  return json.decode(res.body);
}

updateMerchantTopping(int tpId, double price) async {
  String path = "/capability/topping";

  var uri = Uri.parse(baseURL + path);
  var res = await http.put(uri, body: {
    "id": tpId.toString(),
    "price": price.toString()
  });

  return json.decode(res.body);
}

addMerchantCakeSize(int mId, String size, String price) async {
  String path = "/capability/cake_base";

  var uri = Uri.parse(baseURL + path);
  var res = await http.post(uri, body: {
    "mId": mId.toString(),
    "name": size.toString(),
    "price": price.toString()
  });

  return json.decode(res.body);
}


