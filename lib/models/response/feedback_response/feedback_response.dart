/// status : true
/// message : "Data fetched successfully!"
/// feedbackQue : [{"id":1,"location_id":1,"question":"Food Quality while travelling","status":2,"created_by":2,"updated_by":1,"created_at":"2023-04-05T08:40:29.000000Z","updated_at":null,"deleted_at":null},{"id":2,"location_id":1,"question":"Hygiene at washrooms while travelling","status":2,"created_by":2,"updated_by":1,"created_at":"2023-04-05T08:43:10.000000Z","updated_at":null,"deleted_at":null},{"id":3,"location_id":1,"question":"Food Quality in guesthouse","status":2,"created_by":2,"updated_by":1,"created_at":"2023-04-05T08:43:21.000000Z","updated_at":null,"deleted_at":null},{"id":4,"location_id":1,"question":"Hygiene in Guest House","status":2,"created_by":2,"updated_by":1,"created_at":"2023-04-05T08:43:30.000000Z","updated_at":null,"deleted_at":null},{"id":5,"location_id":1,"question":"Bus Service Experience","status":2,"created_by":2,"updated_by":1,"created_at":"2023-04-05T08:43:40.000000Z","updated_at":null,"deleted_at":null},{"id":6,"location_id":1,"question":"Rooms & Facilities at GH","status":2,"created_by":2,"updated_by":1,"created_at":"2023-04-05T08:43:50.000000Z","updated_at":null,"deleted_at":null},{"id":7,"location_id":1,"question":"Adani Staff Behaviour","status":2,"created_by":2,"updated_by":1,"created_at":"2023-04-05T08:44:00.000000Z","updated_at":null,"deleted_at":null},{"id":8,"location_id":1,"question":"Visit to Adani Port","status":2,"created_by":2,"updated_by":1,"created_at":"2023-04-05T08:44:10.000000Z","updated_at":null,"deleted_at":null},{"id":9,"location_id":1,"question":"Visit to Adani Power Plant","status":2,"created_by":2,"updated_by":1,"created_at":"2023-04-05T08:44:20.000000Z","updated_at":null,"deleted_at":null},{"id":10,"location_id":1,"question":"Visit to Adani Wilmar Refinery","status":2,"created_by":2,"updated_by":1,"created_at":"2023-04-05T08:44:31.000000Z","updated_at":null,"deleted_at":null},{"id":11,"location_id":1,"question":"All kind of coordination for booking your visit","status":2,"created_by":2,"updated_by":1,"created_at":"2023-04-05T08:44:40.000000Z","updated_at":null,"deleted_at":null},{"id":12,"location_id":1,"question":"Overall Experience","status":2,"created_by":2,"updated_by":1,"created_at":"2023-04-05T08:44:51.000000Z","updated_at":null,"deleted_at":null}]

class FeedbackResponse {
  FeedbackResponse({
      bool? status,
      String? message,
      List<FeedbackQue>? feedbackQue,}){
    _status = status;
    _message = message;
    _feedbackQue = feedbackQue;
}

  FeedbackResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['feedbackQue'] != null) {
      _feedbackQue = [];
      json['feedbackQue'].forEach((v) {
        _feedbackQue?.add(FeedbackQue.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<FeedbackQue>? _feedbackQue;
FeedbackResponse copyWith({  bool? status,
  String? message,
  List<FeedbackQue>? feedbackQue,
}) => FeedbackResponse(  status: status ?? _status,
  message: message ?? _message,
  feedbackQue: feedbackQue ?? _feedbackQue,
);
  bool? get status => _status;
  String? get message => _message;
  List<FeedbackQue>? get feedbackQue => _feedbackQue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_feedbackQue != null) {
      map['feedbackQue'] = _feedbackQue?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// location_id : 1
/// question : "Food Quality while travelling"
/// status : 2
/// created_by : 2
/// updated_by : 1
/// created_at : "2023-04-05T08:40:29.000000Z"
/// updated_at : null
/// deleted_at : null

class FeedbackQue {
  FeedbackQue({
      num? id,
      num? locationId,
      String? question,
      num? status,
      num? createdBy,
      num? updatedBy,
      String? createdAt,
      dynamic updatedAt,
      dynamic deletedAt,}){
    _id = id;
    _locationId = locationId;
    _question = question;
    _status = status;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
}

  FeedbackQue.fromJson(dynamic json) {
    _id = json['id'];
    _locationId = json['location_id'];
    _question = json['question'];
    _status = json['status'];
    _createdBy = json['created_by'];
    _updatedBy = json['updated_by'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
  }
  num? _id;
  num? _locationId;
  String? _question;
  num? _status;
  num? _createdBy;
  num? _updatedBy;
  String? _createdAt;
  dynamic _updatedAt;
  dynamic _deletedAt;
FeedbackQue copyWith({  num? id,
  num? locationId,
  String? question,
  num? status,
  num? createdBy,
  num? updatedBy,
  String? createdAt,
  dynamic updatedAt,
  dynamic deletedAt,
}) => FeedbackQue(  id: id ?? _id,
  locationId: locationId ?? _locationId,
  question: question ?? _question,
  status: status ?? _status,
  createdBy: createdBy ?? _createdBy,
  updatedBy: updatedBy ?? _updatedBy,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
);
  num? get id => _id;
  num? get locationId => _locationId;
  String? get question => _question;
  num? get status => _status;
  num? get createdBy => _createdBy;
  num? get updatedBy => _updatedBy;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['location_id'] = _locationId;
    map['question'] = _question;
    map['status'] = _status;
    map['created_by'] = _createdBy;
    map['updated_by'] = _updatedBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    return map;
  }

}