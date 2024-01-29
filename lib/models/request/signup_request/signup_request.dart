/// name : "deepti sharma"
/// username : "deep10"
/// email : "deepti1@emphatictechnologies.com"
/// contact : "9510679972"
/// password : "test@123"
/// confirm_password : "test@123"

class SignupRequest {
  SignupRequest({
      String? name, 
      String? username, 
      String? email, 
      String? contact, 
      String? password, 
      String? confirmPassword,}){
    _name = name;
    _username = username;
    _email = email;
    _contact = contact;
    _password = password;
    _confirmPassword = confirmPassword;
}

  SignupRequest.fromJson(dynamic json) {
    _name = json['name'];
    _username = json['username'];
    _email = json['email'];
    _contact = json['contact'];
    _password = json['password'];
    _confirmPassword = json['confirm_password'];
  }
  String? _name;
  String? _username;
  String? _email;
  String? _contact;
  String? _password;
  String? _confirmPassword;
SignupRequest copyWith({  String? name,
  String? username,
  String? email,
  String? contact,
  String? password,
  String? confirmPassword,
}) => SignupRequest(  name: name ?? _name,
  username: username ?? _username,
  email: email ?? _email,
  contact: contact ?? _contact,
  password: password ?? _password,
  confirmPassword: confirmPassword ?? _confirmPassword,
);
  String? get name => _name;
  String? get username => _username;
  String? get email => _email;
  String? get contact => _contact;
  String? get password => _password;
  String? get confirmPassword => _confirmPassword;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['username'] = _username;
    map['email'] = _email;
    map['contact'] = _contact;
    map['password'] = _password;
    map['confirm_password'] = _confirmPassword;
    return map;
  }

}