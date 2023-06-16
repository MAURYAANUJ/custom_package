// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'dart:io';
// import 'custom_alert_dialog.dart';
// const  baseURL = "";


// Future<dynamic> getURLData(BuildContext context,String uri,bool indicator) async {
//   indicator?showDialog(
//       barrierDismissible: false,
//       context: context,
//       builder: (BuildContext context) {
//         return getProgressDialog();
//       }):null;
//     http.Response response;
//     try{
//       response = await http.get(Uri.parse(baseURL + uri));
//     } on SocketException{
//       indicator?dismissIndicator(context):null;
//       return  showAlertDialog(context,"No internet Connection");
//     }
//     if(response.statusCode == 200){
//       // ignore: use_build_context_synchronously
//       indicator?dismissIndicator(context):null;
//       return jsonDecode(response.body);
//     }
//     else if(response.statusCode == 500) {
//       indicator?dismissIndicator(context):null;
//       return showAlertDialog(context,"Internal Server Error");
//     }else{
//       return showAlertDialog(context,"Something went wrong!!!");
//     }
// }





// Future<dynamic> postURLData(BuildContext context,String uri,bool indicator,Object body) async {
//   indicator?showDialog(
//       barrierDismissible: false,
//       context: context,
//       builder: (BuildContext context) {
//         return getProgressDialog();
//       }):null;
//     http.Response response;
//     try{
//        response = await http.post(Uri.parse(baseURL + uri),
//           headers: {"Content-Type": "application/json"}, body: jsonEncode(body));
//     } on SocketException{
//       indicator?dismissIndicator(context):null;
//       return  showAlertDialog(context,"No internet Connection");
//     }
//     if(response.statusCode == 200){
//       indicator?dismissIndicator(context):null;
//       return jsonDecode(response.body);
//     }
//     else if(response.statusCode == 500) {
//       indicator?dismissIndicator(context):null;
//       return showAlertDialog(context,"Internal Server Error");
//     }else{
//       return showAlertDialog(context,"Something went wrong!!!");
//     }
// }




// void dismissIndicator(BuildContext context) {
//   Navigator.of(context, rootNavigator: true).pop(context);
// }

