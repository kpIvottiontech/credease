/// status : true
/// message : "data fetched successfully!"
/// content : [{"id":1,"content_type":1,"title":"The standard Lorem Ipsum passage","image":"2024-01-02_Gangavaram.png","audio":"2024-01-02_adani.mp3","video":null,"content":"<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"<h3>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"","status":2,"created_by":1,"updated_by":1,"created_at":"2024-01-02T05:59:44.000000Z","updated_at":null,"deleted_at":null}]

class HomeDetailsResponse {
  HomeDetailsResponse({
      bool? status, 
      String? message, 
      List<Content>? content,}){
    _status = status;
    _message = message;
    _content = content;
}

  HomeDetailsResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['content'] != null) {
      _content = [];
      json['content'].forEach((v) {
        _content?.add(Content.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Content>? _content;
HomeDetailsResponse copyWith({  bool? status,
  String? message,
  List<Content>? content,
}) => HomeDetailsResponse(  status: status ?? _status,
  message: message ?? _message,
  content: content ?? _content,
);
  bool? get status => _status;
  String? get message => _message;
  List<Content>? get content => _content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_content != null) {
      map['content'] = _content?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// content_type : 1
/// title : "The standard Lorem Ipsum passage"
/// image : "2024-01-02_Gangavaram.png"
/// audio : "2024-01-02_adani.mp3"
/// video : null
/// content : "<h3>The standard Lorem Ipsum passage, used since the 1500s</h3>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"<h3>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</h3>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\""
/// status : 2
/// created_by : 1
/// updated_by : 1
/// created_at : "2024-01-02T05:59:44.000000Z"
/// updated_at : null
/// deleted_at : null

class Content {
  Content({
      num? id, 
      num? contentType, 
      String? title, 
      String? image, 
      String? audio, 
      dynamic video, 
      String? content, 
      num? status, 
      num? createdBy, 
      num? updatedBy, 
      String? createdAt, 
      dynamic updatedAt, 
      dynamic deletedAt,}){
    _id = id;
    _contentType = contentType;
    _title = title;
    _image = image;
    _audio = audio;
    _video = video;
    _content = content;
    _status = status;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
}

  Content.fromJson(dynamic json) {
    _id = json['id'];
    _contentType = json['content_type'];
    _title = json['title'];
    _image = json['image'];
    _audio = json['audio'];
    _video = json['video'];
    _content = json['content'];
    _status = json['status'];
    _createdBy = json['created_by'];
    _updatedBy = json['updated_by'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
  }
  num? _id;
  num? _contentType;
  String? _title;
  String? _image;
  String? _audio;
  dynamic _video;
  String? _content;
  num? _status;
  num? _createdBy;
  num? _updatedBy;
  String? _createdAt;
  dynamic _updatedAt;
  dynamic _deletedAt;
Content copyWith({  num? id,
  num? contentType,
  String? title,
  String? image,
  String? audio,
  dynamic video,
  String? content,
  num? status,
  num? createdBy,
  num? updatedBy,
  String? createdAt,
  dynamic updatedAt,
  dynamic deletedAt,
}) => Content(  id: id ?? _id,
  contentType: contentType ?? _contentType,
  title: title ?? _title,
  image: image ?? _image,
  audio: audio ?? _audio,
  video: video ?? _video,
  content: content ?? _content,
  status: status ?? _status,
  createdBy: createdBy ?? _createdBy,
  updatedBy: updatedBy ?? _updatedBy,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
);
  num? get id => _id;
  num? get contentType => _contentType;
  String? get title => _title;
  String? get image => _image;
  String? get audio => _audio;
  dynamic get video => _video;
  String? get content => _content;
  num? get status => _status;
  num? get createdBy => _createdBy;
  num? get updatedBy => _updatedBy;
  String? get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['content_type'] = _contentType;
    map['title'] = _title;
    map['image'] = _image;
    map['audio'] = _audio;
    map['video'] = _video;
    map['content'] = _content;
    map['status'] = _status;
    map['created_by'] = _createdBy;
    map['updated_by'] = _updatedBy;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    return map;
  }

}