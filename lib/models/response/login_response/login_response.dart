/// success : true
/// message : "Login successfully!"
/// type : "bearer"
/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvcHJvamVjdHVkYWFuLmluXC9hcGlcL2xvZ2luIiwiaWF0IjoxNzA0MjY1MDcwLCJleHAiOjE3MDQyNjg2NzAsIm5iZiI6MTcwNDI2NTA3MCwianRpIjoiU2dKcUJKQXF6NVJVSVBGUSIsInN1YiI6MSwicHJ2IjoiNjFlNGJmMDRkNGVhZmY2M2VmZmQ0OGYwNjBlZjc4NWJmYTZmYmJmNyJ9.e28OeVxntc6t8AF3SQ4wwv3DP1T5KUxJplAAnHVOCjA"
/// user : {"id":1,"name":"deepti sharma","username":"deep","email":"deepti1@emphatictechnologies.com","contact":"9510679972","password":"$2y$10$SYqhiGgcZdGkh8zEpnwvY.SAq2IEvjyVpNJ9FF3DfowHxFmTWc0zm","status":2,"created_by":1,"updated_by":1,"created_at":"2023-12-28T07:33:36.000000Z","updated_at":"2023-12-28T10:06:06.000000Z","deleted_at":null,"pimage":"1703757966.jpg"}

class LoginResponse {
  LoginResponse({
      bool? success, 
      String? message, 
      String? type, 
      String? token, 
      User? user,}){
    _success = success;
    _message = message;
    _type = type;
    _token = token;
    _user = user;
}

  LoginResponse.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _type = json['type'];
    _token = json['token'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  bool? _success;
  String? _message;
  String? _type;
  String? _token;
  User? _user;
LoginResponse copyWith({  bool? success,
  String? message,
  String? type,
  String? token,
  User? user,
}) => LoginResponse(  success: success ?? _success,
  message: message ?? _message,
  type: type ?? _type,
  token: token ?? _token,
  user: user ?? _user,
);
  bool? get success => _success;
  String? get message => _message;
  String? get type => _type;
  String? get token => _token;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    map['type'] = _type;
    map['token'] = _token;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// id : 1
/// name : "deepti sharma"
/// username : "deep"
/// email : "deepti1@emphatictechnologies.com"
/// contact : "9510679972"
/// password : "$2y$10$SYqhiGgcZdGkh8zEpnwvY.SAq2IEvjyVpNJ9FF3DfowHxFmTWc0zm"
/// status : 2
/// created_by : 1
/// updated_by : 1
/// created_at : "2023-12-28T07:33:36.000000Z"
/// updated_at : "2023-12-28T10:06:06.000000Z"
/// deleted_at : null
/// pimage : "1703757966.jpg"

class User {
  User({
      num? id, 
      String? name, 
      String? username, 
      String? email, 
      String? contact, 
      String? password, 
      num? status, 
      num? createdBy, 
      num? updatedBy, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      String? pimage,}){
    _id = id;
    _name = name;
    _username = username;
    _email = email;
    _contact = contact;
    _password = password;
    _status = status;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _pimage = pimage;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _username = json['username'];
    _email = json['email'];
    _contact = json['contact'];
    _password = json['password'];
    _status = json['status'];
    _createdBy = json['created_by'];
    _updatedBy = json['updated_by'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _pimage = json['pimage'];
  }
  num? _id;
  String? _name;
  String? _username;
  String? _email;
  String? _contact;
  String? _password;
  num? _status;
  num? _createdBy;
  num? _updatedBy;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  String? _pimage;
User copyWith({  num? id,
  String? name,
  String? username,
  String? email,
  String? contact,
  String? password,
  num? status,
  num? createdBy,
  num? updatedBy,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
  String? pimage,
}) => User(  id: id ?? _id,
  name: name ?? _name,
  username: username ?? _username,
  email: email ?? _email,
  contact: contact ?? _contact,
  password: password ?? _password,
  status: status ?? _status,
  createdBy: createdBy ?? _createdBy,
  updatedBy: updatedBy ?? _updatedBy,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
  pimage: pimage ?? _pimage,
);
  num? get id => _id;
  String? get name => _name;
  String? get username => _username;
  String? get email => _email;
  String? get contact => _contact;
  String? get password => _password;
  num? get status => _status;
  num? get createdBy => _createdBy;
  num? get updatedBy => _updatedBy;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  String? get pimage => _pimage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['username'] = _username;
    map['email'] = _email;
    map['contact'] = _contact;
    map['password'] = _password;
    map['status'] = _status;
    map['created_by'] = _createdBy;
    map['updated_by'] = _updatedBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    map['pimage'] = _pimage;
    return map;
  }

}