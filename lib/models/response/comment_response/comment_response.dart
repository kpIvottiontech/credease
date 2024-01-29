/// status : true
/// message : "Commented successfully!"

class CommentResponse {
  CommentResponse({
      bool? status, 
      String? message,}){
    _status = status;
    _message = message;
}

  CommentResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
  }
  bool? _status;
  String? _message;
CommentResponse copyWith({  bool? status,
  String? message,
}) => CommentResponse(  status: status ?? _status,
  message: message ?? _message,
);
  bool? get status => _status;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    return map;
  }

}