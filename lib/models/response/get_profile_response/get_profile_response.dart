/// status : true
/// message : "data fetched successfully!"
/// user : {"profile_img":"https://projectudaan.in/public/storage/appuser/images/1704290370.jpg","name":"Deepti Sharma","institute":"Adani Institute Of Infrastructure Engineering"}

class GetProfileResponse {
  GetProfileResponse({
      bool? status, 
      String? message, 
      User? user,}){
    _status = status;
    _message = message;
    _user = user;
}

  GetProfileResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  bool? _status;
  String? _message;
  User? _user;
GetProfileResponse copyWith({  bool? status,
  String? message,
  User? user,
}) => GetProfileResponse(  status: status ?? _status,
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

/// profile_img : "https://projectudaan.in/public/storage/appuser/images/1704290370.jpg"
/// name : "Deepti Sharma"
/// institute : "Adani Institute Of Infrastructure Engineering"

class User {
  User({
      String? profileImg, 
      String? name, 
      String? institute,}){
    _profileImg = profileImg;
    _name = name;
    _institute = institute;
}

  User.fromJson(dynamic json) {
    _profileImg = json['profile_img'];
    _name = json['name'];
    _institute = json['institute'];
  }
  String? _profileImg;
  String? _name;
  String? _institute;
User copyWith({  String? profileImg,
  String? name,
  String? institute,
}) => User(  profileImg: profileImg ?? _profileImg,
  name: name ?? _name,
  institute: institute ?? _institute,
);
  String? get profileImg => _profileImg;
  String? get name => _name;
  String? get institute => _institute;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['profile_img'] = _profileImg;
    map['name'] = _name;
    map['institute'] = _institute;
    return map;
  }

}