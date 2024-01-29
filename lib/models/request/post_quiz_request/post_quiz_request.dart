/// result : [{"question_id":"21","given_answer":"yes"},{"question_id":"22","given_answer":"yes"},{"question_id":"23","given_answer":"no"},{"question_id":"24","given_answer":"no"},{"question_id":"25","given_answer":"yes"},{"question_id":"26","given_answer":"yes"},{"question_id":"27","given_answer":"yes"},{"question_id":"28","given_answer":"yes"},{"question_id":"29","given_answer":"yes"},{"question_id":"30","given_answer":"yes"}]

class PostQuizRequest {
  PostQuizRequest({
      List<Result>? result,}){
    _result = result;
}

  PostQuizRequest.fromJson(dynamic json) {
    if (json['result'] != null) {
      _result = [];
      json['result'].forEach((v) {
        _result?.add(Result.fromJson(v));
      });
    }
  }
  List<Result>? _result;
PostQuizRequest copyWith({  List<Result>? result,
}) => PostQuizRequest(  result: result ?? _result,
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

/// question_id : "21"
/// given_answer : "yes"

class Result {
  Result({
      String? questionId, 
      String? givenAnswer,}){
    _questionId = questionId;
    _givenAnswer = givenAnswer;
}

  Result.fromJson(dynamic json) {
    _questionId = json['question_id'];
    _givenAnswer = json['given_answer'];
  }
  String? _questionId;
  String? _givenAnswer;
Result copyWith({  String? questionId,
  String? givenAnswer,
}) => Result(  questionId: questionId ?? _questionId,
  givenAnswer: givenAnswer ?? _givenAnswer,
);
  String? get questionId => _questionId;
  String? get givenAnswer => _givenAnswer;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['question_id'] = _questionId;
    map['given_answer'] = _givenAnswer;
    return map;
  }

}