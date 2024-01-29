/// status : true
/// message : "Quiz submitted successfully"
/// result : 4
/// totalque : 10
/// pdflink : "https://projectudaan.in/public/storage/certificate_appreiciation/Deepti Sharma_Certificate_of_Appreiciation.pdf"

class PostQuizResponse {
  PostQuizResponse({
      bool? status, 
      String? message, 
      num? result, 
      num? totalque, 
      String? pdflink,}){
    _status = status;
    _message = message;
    _result = result;
    _totalque = totalque;
    _pdflink = pdflink;
}

  PostQuizResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _result = json['result'];
    _totalque = json['totalque'];
    _pdflink = json['pdflink'];
  }
  bool? _status;
  String? _message;
  num? _result;
  num? _totalque;
  String? _pdflink;
PostQuizResponse copyWith({  bool? status,
  String? message,
  num? result,
  num? totalque,
  String? pdflink,
}) => PostQuizResponse(  status: status ?? _status,
  message: message ?? _message,
  result: result ?? _result,
  totalque: totalque ?? _totalque,
  pdflink: pdflink ?? _pdflink,
);
  bool? get status => _status;
  String? get message => _message;
  num? get result => _result;
  num? get totalque => _totalque;
  String? get pdflink => _pdflink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    map['result'] = _result;
    map['totalque'] = _totalque;
    map['pdflink'] = _pdflink;
    return map;
  }

}