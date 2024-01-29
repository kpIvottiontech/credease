/// result : [{"fbque_id":"1","rating":"5"},{"fbque_id":"2","rating":"5"},{"fbque_id":"3","rating":"5"},{"fbque_id":"4","rating":"5"},{"fbque_id":"5","rating":"5"},{"fbque_id":"6","rating":"2"},{"fbque_id":"7","rating":"2"},{"fbque_id":"8","rating":"2"},{"fbque_id":"9","rating":"2"},{"fbque_id":"10","rating":"2"},{"fbque_id":"11","rating":"2"},{"fbque_id":"12","rating":"2"}]

class FeedbackRequest {
  FeedbackRequest({
      List<Result>? result,}){
    _result = result;
}

  FeedbackRequest.fromJson(dynamic json) {
    if (json['result'] != null) {
      _result = [];
      json['result'].forEach((v) {
        _result?.add(Result.fromJson(v));
      });
    }
  }
  List<Result>? _result;
FeedbackRequest copyWith({  List<Result>? result,
}) => FeedbackRequest(  result: result ?? _result,
);
  List<Result>? get result => _result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_result != null) {
      map['result'] = _result?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// fbque_id : "1"
/// rating : "5"

class Result {
  Result({
      String? fbqueId, 
      String? rating,}){
    _fbqueId = fbqueId;
    _rating = rating;
}

  Result.fromJson(dynamic json) {
    _fbqueId = json['fbque_id'];
    _rating = json['rating'];
  }
  String? _fbqueId;
  String? _rating;
Result copyWith({  String? fbqueId,
  String? rating,
}) => Result(  fbqueId: fbqueId ?? _fbqueId,
  rating: rating ?? _rating,
);
  String? get fbqueId => _fbqueId;
  String? get rating => _rating;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fbque_id'] = _fbqueId;
    map['rating'] = _rating;
    return map;
  }

}