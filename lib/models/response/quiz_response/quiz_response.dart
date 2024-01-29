/// status : true
/// message : "Data fetched successfully!"
/// quiz : [{"id":21,"location_id":1,"question":"3 different cranes are used to unload the containers at APSEZ, Mundra. ","answer":"no","status":2,"created_by":1,"updated_by":1,"created_at":null,"updated_at":null,"deleted_at":null},{"id":22,"location_id":1,"question":"There are 5 terminals in APSEZ, Mundra.","answer":"yes","status":2,"created_by":1,"updated_by":1,"created_at":null,"updated_at":null,"deleted_at":null},{"id":23,"location_id":1,"question":"Full form of CFS is CONTAINER FREIGHT STORAGE.","answer":"yes","status":2,"created_by":1,"updated_by":1,"created_at":null,"updated_at":null,"deleted_at":null},{"id":24,"location_id":1,"question":"Crude, cargo, and container are the 3C","answer":"no","status":2,"created_by":1,"updated_by":1,"created_at":null,"updated_at":null,"deleted_at":null},{"id":25,"location_id":1,"question":"Total length of Railway track at APSEZ, Mundra is 190 Kms.","answer":"no","status":2,"created_by":1,"updated_by":1,"created_at":null,"updated_at":null,"deleted_at":null},{"id":26,"location_id":1,"question":"Raag And Aadhaar D is Adani Wilmar ltd. Brands.","answer":"yes","status":2,"created_by":1,"updated_by":1,"created_at":null,"updated_at":null,"deleted_at":null},{"id":27,"location_id":1,"question":"The capacity of Adani Wilmar ltd. Mundra is 4500 tons.","answer":"no","status":2,"created_by":1,"updated_by":1,"created_at":null,"updated_at":null,"deleted_at":null},{"id":28,"location_id":1,"question":"Coal is the biggest source of power generation in India.","answer":"yes","status":2,"created_by":1,"updated_by":1,"created_at":null,"updated_at":null,"deleted_at":null},{"id":29,"location_id":1,"question":"Total 6 Units are there at APMUL Plant.","answer":"no","status":2,"created_by":1,"updated_by":1,"created_at":null,"updated_at":null,"deleted_at":null},{"id":30,"location_id":1,"question":"Anthracite is one type of coal is used at APMUL, Mundra.","answer":"no","status":2,"created_by":1,"updated_by":1,"created_at":null,"updated_at":null,"deleted_at":null}]

class QuizResponse {
  QuizResponse({
      bool? status, 
      String? message, 
      List<Quiz>? quiz,}){
    _status = status;
    _message = message;
    _quiz = quiz;
}

  QuizResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['quiz'] != null) {
      _quiz = [];
      json['quiz'].forEach((v) {
        _quiz?.add(Quiz.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Quiz>? _quiz;
QuizResponse copyWith({  bool? status,
  String? message,
  List<Quiz>? quiz,
}) => QuizResponse(  status: status ?? _status,
  message: message ?? _message,
  quiz: quiz ?? _quiz,
);
  bool? get status => _status;
  String? get message => _message;
  List<Quiz>? get quiz => _quiz;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_quiz != null) {
      map['quiz'] = _quiz?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 21
/// location_id : 1
/// question : "3 different cranes are used to unload the containers at APSEZ, Mundra. "
/// answer : "no"
/// status : 2
/// created_by : 1
/// updated_by : 1
/// created_at : null
/// updated_at : null
/// deleted_at : null

class Quiz {
  Quiz({
      num? id, 
      num? locationId, 
      String? question, 
      String? answer, 
      num? status, 
      num? createdBy, 
      num? updatedBy, 
      dynamic createdAt, 
      dynamic updatedAt, 
      dynamic deletedAt,}){
    _id = id;
    _locationId = locationId;
    _question = question;
    _answer = answer;
    _status = status;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
}

  Quiz.fromJson(dynamic json) {
    _id = json['id'];
    _locationId = json['location_id'];
    _question = json['question'];
    _answer = json['answer'];
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
  String? _answer;
  num? _status;
  num? _createdBy;
  num? _updatedBy;
  dynamic _createdAt;
  dynamic _updatedAt;
  dynamic _deletedAt;
Quiz copyWith({  num? id,
  num? locationId,
  String? question,
  String? answer,
  num? status,
  num? createdBy,
  num? updatedBy,
  dynamic createdAt,
  dynamic updatedAt,
  dynamic deletedAt,
}) => Quiz(  id: id ?? _id,
  locationId: locationId ?? _locationId,
  question: question ?? _question,
  answer: answer ?? _answer,
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
  String? get answer => _answer;
  num? get status => _status;
  num? get createdBy => _createdBy;
  num? get updatedBy => _updatedBy;
  dynamic get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['location_id'] = _locationId;
    map['question'] = _question;
    map['answer'] = _answer;
    map['status'] = _status;
    map['created_by'] = _createdBy;
    map['updated_by'] = _updatedBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    return map;
  }

}