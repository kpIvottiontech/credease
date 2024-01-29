/// status : true
/// message : "User registered successfully!"
/// user : {"name":"deepti sharma","username":"deep10","email":"deepti1@emphatictechnologies.com","contact":"9510679972","password":"$2y$10$6uYVLft85gfyuwkKueCxYOQDDgHPhGfZFmoi.25UEn1I0eOYUgnLK","updated_at":"2024-01-02T14:08:53.000000Z","created_at":"2024-01-02T14:08:53.000000Z","id":7}

class SignupResponse {
  SignupResponse({
      bool? status, 
      String? message, 
      User? user,}){
    _status = status;
    _message = message;
    _user = user;
}

  SignupResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  bool? _status;
  String? _message;
  User? _user;
SignupResponse copyWith({  bool? status,
  String? message,
  User? user,
}) => SignupResponse(  status: status ?? _status,
  message: message ?? _message,
  user: user ?? _user,
);
  bool? get status => _status;
  String? get message => _message;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// name : "deepti sharma"
/// username : "deep10"
/// email : "deepti1@emphatictechnologies.com"
/// contact : "9510679972"
/// password : "$2y$10$6uYVLft85gfyuwkKueCxYOQDDgHPhGfZFmoi.25UEn1I0eOYUgnLK"
/// updated_at : "2024-01-02T14:08:53.000000Z"
/// created_at : "2024-01-02T14:08:53.000000Z"
/// id : 7

class User {
  User({
      String? name, 
      String? username, 
      String? email, 
      String? contact, 
      String? password, 
      String? updatedAt, 
      String? createdAt, 
      num? id,}){
    _name = name;
    _username = username;
    _email = email;
    _contact = contact;
    _password = password;
    _updatedAt = updatedAt;
    _createdAt = createdAt;
    _id = id;
}

  User.fromJson(dynamic json) {
    _name = json['name'];
    _username = json['username'];
    _email = json['email'];
    _contact = json['contact'];
    _password = json['password'];
    _updatedAt = json['updated_at'];
    _createdAt = json['created_at'];
    _id = json['id'];
  }
  String? _name;
  String? _username;
  String? _email;
  String? _contact;
  String? _password;
  String? _updatedAt;
  String? _createdAt;
  num? _id;
User copyWith({  String? name,
  String? username,
  String? email,
  String? contact,
  String? password,
  String? updatedAt,
  String? createdAt,
  num? id,
}) => User(  name: name ?? _name,
  username: username ?? _username,
  email: email ?? _email,
  contact: contact ?? _contact,
  password: password ?? _password,
  updatedAt: updatedAt ?? _updatedAt,
  createdAt: createdAt ?? _createdAt,
  id: id ?? _id,
);
  String? get name => _name;
  String? get username => _username;
  String? get email => _email;
  String? get contact => _contact;
  String? get password => _password;
  String? get updatedAt => _updatedAt;
  String? get createdAt => _createdAt;
  num? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['username'] = _username;
    map['email'] = _email;
    map['contact'] = _contact;
    map['password'] = _password;
    map['updated_at'] = _updatedAt;
    map['created_at'] = _createdAt;
    map['id'] = _id;
    return map;
  }

}