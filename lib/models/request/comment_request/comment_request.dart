/// comment : "Nicey"

class CommentRequest {
  CommentRequest({
      String? comment,}){
    _comment = comment;
}

  CommentRequest.fromJson(dynamic json) {
    _comment = json['comment'];
  }
  String? _comment;
CommentRequest copyWith({  String? comment,
}) => CommentRequest(  comment: comment ?? _comment,
);
  String? get comment => _comment;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['comment'] = _comment;
    return map;
  }

}