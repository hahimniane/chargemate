import 'dart:convert';

import 'package:http/http.dart' as http;

import '../modals/comment_model.dart';
class CommentClass{
  static addComment(
      {required var headers,
        required String userId,
        required userFullName,
        required String stationId,
        comment = null,
        required int score,
        required String idToken}) async {
    var headers = {
      'Content-Type': 'application/json',
      'x-api-key': 'ZXSDkAOYdz18y4As0Pfap4IMkJBJR5Rh5tTDso5q',
      'Authorization':
      'Bearer $idToken', // Include the ID token in the Authorization header
    };
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/chargeStations/stationComments'));
    request.body = json.encode({
      // "userId": "647e304b44ccda0008750d7a",
      // "userFullName": "test",
      // "chargeStationId": "646932c750b5a7573461ec15",
      // "text": "Hashim is a good guy",
      // "score": "4"
      "userId": userId,
      "userFullName": userFullName,
      "chargeStationId": stationId,
      "text": comment,
      "score": score
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.statusCode);
      print(response.reasonPhrase);
    }
  }

  static Future<List<Comments>> getComments(
      {required Map<String, String> headers, required String stationId}) async {
    var request = http.Request(
      'GET',
      Uri.parse(
          'https://wvot3qzae6.execute-api.eu-central-1.amazonaws.com/dev/v1/chargeStations/$stationId'),
    );

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var result = await response.stream.bytesToString();
      Map<String, dynamic> data = jsonDecode(result);
      List<dynamic> commentData = data['data']['comments'];

      List<Comments> commentsList = commentData
          .map((commentJson) => Comments.fromJson(commentJson))
          .toList();
      return commentsList;
    } else {
      throw Exception('Failed to load comments: ${response.reasonPhrase}');
    }
  }


}