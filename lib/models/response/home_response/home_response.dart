/// status : true
/// message : "Data fetched successfully"
/// images : ["https://projectudaan.in/public/frontend/images/udaa.jpg","https://projectudaan.in/public/frontend/images/home/Kawai_final.jpg","https://projectudaan.in/public/frontend/img/icon/slide_show_5.jpg","https://projectudaan.in/public/frontend/img/icon/slide_show_3.jpg","https://projectudaan.in/public/frontend/img/icon/slide_show_4.jpg","https://projectudaan.in/public/frontend/img/icon/slide_show_2.jpg"]
/// locations : [{"location_id":1,"location_name":"Mundra (Gujarat)","location_img":"https://projectudaan.in/public/storage/images/locations/Mundra (Gujarat).jpg"},{"location_id":3,"location_name":"Mundra from Kutch District","location_img":"https://projectudaan.in/public/storage/images/locations/Mundra (Gujarat).jpg"},{"location_id":4,"location_name":"Hazira (Gujarat)","location_img":"https://projectudaan.in/public/storage/images/locations/Hazira (Gujarat).jpg"},{"location_id":5,"location_name":"Dahanu (Maharashtra)","location_img":"https://projectudaan.in/public/storage/images/locations/Dahanu (Maharashtra).jpg"},{"location_id":6,"location_name":"Tirora (Maharashtra)","location_img":"https://projectudaan.in/public/storage/images/locations/Tirora (Maharashtra).jpg"},{"location_id":7,"location_name":"Kawai (Rajasthan)","location_img":"https://projectudaan.in/public/storage/images/locations/Kawai (Rajasthan).jpg"},{"location_id":8,"location_name":"Dhamra (Odisha)","location_img":"https://projectudaan.in/public/storage/images/locations/Dhamra (Odisha).jpg"},{"location_id":9,"location_name":"S.V.P.I. Airport (Gujarat)","location_img":"https://projectudaan.in/public/storage/images/locations/SVPI Airport (Gujarat).png"},{"location_id":11,"location_name":"Krishnapatnam (Andhra P.)","location_img":"https://projectudaan.in/public/storage/images/locations/Krishnapatnam (Andhra Pradesh).png"},{"location_id":12,"location_name":"Katupalli (Tamil Nadu)","location_img":"https://projectudaan.in/public/storage/images/locations/Katupalli (Tamil Nadu).png"},{"location_id":13,"location_name":"Gangavaram (Andhra P)","location_img":"https://projectudaan.in/public/storage/images/locations/Gangavaram (Andhra Pradesh).png"}]
/// audios : [{"id":1,"type":1,"image":"https://projectudaan.in/public/storage/contents/image/2024-01-02_Gangavaram.png","audio":"https://projectudaan.in/public/storage/contents/audio/2024-01-02_adani.mp3","created_by":"Lorem Ipsum","likes":2,"comments":2},{"id":2,"type":1,"image":"https://projectudaan.in/public/storage/contents/image/2024-01-02_Gangavaram.png","audio":"https://projectudaan.in/public/storage/contents/audio/2024-01-02_adani.mp3","created_by":"Lorem Ipsum","likes":0,"comments":0},{"id":3,"type":1,"image":"https://projectudaan.in/public/storage/contents/image/2024-01-02_Gangavaram.png","audio":"https://projectudaan.in/public/storage/contents/audio/2024-01-02_adani.mp3","created_by":"Lorem Ipsum","likes":0,"comments":0}]
/// blogs : [{"id":4,"type":2,"image":"https://projectudaan.in/public/storage/contents/image/1704176029_Kawai (Rajasthan).jpg","created_by":"Lorem Ipsum","likes":0,"comments":0},{"id":5,"type":2,"image":"https://projectudaan.in/public/storage/contents/image/1704176069_Kawai (Rajasthan).jpg","created_by":"Lorem Ipsum","likes":0,"comments":0},{"id":6,"type":2,"image":"https://projectudaan.in/public/storage/contents/image/1704176105_Kawai (Rajasthan).jpg","created_by":"Lorem Ipsum","likes":0,"comments":0}]
/// posts : [{"id":7,"type":3,"image":"https://projectudaan.in/public/storage/contents/image/1704177923_Dhamra (Odisha).jpg","created_by":"Lorem Ipsum","likes":0,"comments":0},{"id":8,"type":3,"image":"https://projectudaan.in/public/storage/contents/image/1704177987_Dhamra (Odisha).jpg","created_by":"Lorem Ipsum","likes":0,"comments":0},{"id":9,"type":3,"image":"https://projectudaan.in/public/storage/contents/image/1704178022_Dhamra (Odisha).jpg","created_by":"Lorem Ipsum","likes":0,"comments":0}]
/// videos : [{"id":10,"type":4,"image":"https://projectudaan.in/public/storage/contents/image/1704178263_SVPI Airport (Gujarat).png","video":"https://www.youtube.com/watch?v=ytn56jT9Qdo","created_by":"Lorem Ipsum","likes":0,"comments":0},{"id":11,"type":4,"image":"https://projectudaan.in/public/storage/contents/image/1704178307_SVPI Airport (Gujarat).png","video":"https://www.youtube.com/watch?v=ytn56jT9Qdo","created_by":"Lorem Ipsum","likes":0,"comments":0},{"id":12,"type":4,"image":"https://projectudaan.in/public/storage/contents/image/1704178362_SVPI Airport (Gujarat).png","video":"https://www.youtube.com/watch?v=ytn56jT9Qdo","created_by":"Lorem Ipsum","likes":0,"comments":0}]

class HomeResponse {
  HomeResponse({
      bool? status, 
      String? message, 
      List<String>? images, 
      List<Locations>? locations, 
      List<Audios>? audios, 
      List<Blogs>? blogs, 
      List<Posts>? posts, 
      List<Videos>? videos,}){
    _status = status;
    _message = message;
    _images = images;
    _locations = locations;
    _audios = audios;
    _blogs = blogs;
    _posts = posts;
    _videos = videos;
}

  HomeResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _images = json['images'] != null ? json['images'].cast<String>() : [];
    if (json['locations'] != null) {
      _locations = [];
      json['locations'].forEach((v) {
        _locations?.add(Locations.fromJson(v));
      });
    }
    if (json['audios'] != null) {
      _audios = [];
      json['audios'].forEach((v) {
        _audios?.add(Audios.fromJson(v));
      });
    }
    if (json['blogs'] != null) {
      _blogs = [];
      json['blogs'].forEach((v) {
        _blogs?.add(Blogs.fromJson(v));
      });
    }
    if (json['posts'] != null) {
      _posts = [];
      json['posts'].forEach((v) {
        _posts?.add(Posts.fromJson(v));
      });
    }
    if (json['videos'] != null) {
      _videos = [];
      json['videos'].forEach((v) {
        _videos?.add(Videos.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<String>? _images;
  List<Locations>? _locations;
  List<Audios>? _audios;
  List<Blogs>? _blogs;
  List<Posts>? _posts;
  List<Videos>? _videos;
HomeResponse copyWith({  bool? status,
  String? message,
  List<String>? images,
  List<Locations>? locations,
  List<Audios>? audios,
  List<Blogs>? blogs,
  List<Posts>? posts,
  List<Videos>? videos,
}) => HomeResponse(  status: status ?? _status,
  message: message ?? _message,
  images: images ?? _images,
  locations: locations ?? _locations,
  audios: audios ?? _audios,
  blogs: blogs ?? _blogs,
  posts: posts ?? _posts,
  videos: videos ?? _videos,
);
  bool? get status => _status;
  String? get message => _message;
  List<String>? get images => _images;
  List<Locations>? get locations => _locations;
  List<Audios>? get audios => _audios;
  List<Blogs>? get blogs => _blogs;
  List<Posts>? get posts => _posts;
  List<Videos>? get videos => _videos;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    map['images'] = _images;
    if (_locations != null) {
      map['locations'] = _locations?.map((v) => v.toJson()).toList();
    }
    if (_audios != null) {
      map['audios'] = _audios?.map((v) => v.toJson()).toList();
    }
    if (_blogs != null) {
      map['blogs'] = _blogs?.map((v) => v.toJson()).toList();
    }
    if (_posts != null) {
      map['posts'] = _posts?.map((v) => v.toJson()).toList();
    }
    if (_videos != null) {
      map['videos'] = _videos?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 10
/// type : 4
/// image : "https://projectudaan.in/public/storage/contents/image/1704178263_SVPI Airport (Gujarat).png"
/// video : "https://www.youtube.com/watch?v=ytn56jT9Qdo"
/// created_by : "Lorem Ipsum"
/// likes : 0
/// comments : 0

class Videos {
  Videos({
      num? id, 
      num? type, 
      String? image, 
      String? video, 
      String? createdBy, 
      num? likes, 
      num? comments,}){
    _id = id;
    _type = type;
    _image = image;
    _video = video;
    _createdBy = createdBy;
    _likes = likes;
    _comments = comments;
}

  Videos.fromJson(dynamic json) {
    _id = json['id'];
    _type = json['type'];
    _image = json['image'];
    _video = json['video'];
    _createdBy = json['created_by'];
    _likes = json['likes'];
    _comments = json['comments'];
  }
  num? _id;
  num? _type;
  String? _image;
  String? _video;
  String? _createdBy;
  num? _likes;
  num? _comments;
Videos copyWith({  num? id,
  num? type,
  String? image,
  String? video,
  String? createdBy,
  num? likes,
  num? comments,
}) => Videos(  id: id ?? _id,
  type: type ?? _type,
  image: image ?? _image,
  video: video ?? _video,
  createdBy: createdBy ?? _createdBy,
  likes: likes ?? _likes,
  comments: comments ?? _comments,
);
  num? get id => _id;
  num? get type => _type;
  String? get image => _image;
  String? get video => _video;
  String? get createdBy => _createdBy;
  num? get likes => _likes;
  num? get comments => _comments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['type'] = _type;
    map['image'] = _image;
    map['video'] = _video;
    map['created_by'] = _createdBy;
    map['likes'] = _likes;
    map['comments'] = _comments;
    return map;
  }

}

/// id : 7
/// type : 3
/// image : "https://projectudaan.in/public/storage/contents/image/1704177923_Dhamra (Odisha).jpg"
/// created_by : "Lorem Ipsum"
/// likes : 0
/// comments : 0

class Posts {
  Posts({
      num? id, 
      num? type, 
      String? image, 
      String? createdBy, 
      num? likes, 
      num? comments,}){
    _id = id;
    _type = type;
    _image = image;
    _createdBy = createdBy;
    _likes = likes;
    _comments = comments;
}

  Posts.fromJson(dynamic json) {
    _id = json['id'];
    _type = json['type'];
    _image = json['image'];
    _createdBy = json['created_by'];
    _likes = json['likes'];
    _comments = json['comments'];
  }
  num? _id;
  num? _type;
  String? _image;
  String? _createdBy;
  num? _likes;
  num? _comments;
Posts copyWith({  num? id,
  num? type,
  String? image,
  String? createdBy,
  num? likes,
  num? comments,
}) => Posts(  id: id ?? _id,
  type: type ?? _type,
  image: image ?? _image,
  createdBy: createdBy ?? _createdBy,
  likes: likes ?? _likes,
  comments: comments ?? _comments,
);
  num? get id => _id;
  num? get type => _type;
  String? get image => _image;
  String? get createdBy => _createdBy;
  num? get likes => _likes;
  num? get comments => _comments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['type'] = _type;
    map['image'] = _image;
    map['created_by'] = _createdBy;
    map['likes'] = _likes;
    map['comments'] = _comments;
    return map;
  }

}

/// id : 4
/// type : 2
/// image : "https://projectudaan.in/public/storage/contents/image/1704176029_Kawai (Rajasthan).jpg"
/// created_by : "Lorem Ipsum"
/// likes : 0
/// comments : 0

class Blogs {
  Blogs({
      num? id, 
      num? type, 
      String? image, 
      String? createdBy, 
      num? likes, 
      num? comments,}){
    _id = id;
    _type = type;
    _image = image;
    _createdBy = createdBy;
    _likes = likes;
    _comments = comments;
}

  Blogs.fromJson(dynamic json) {
    _id = json['id'];
    _type = json['type'];
    _image = json['image'];
    _createdBy = json['created_by'];
    _likes = json['likes'];
    _comments = json['comments'];
  }
  num? _id;
  num? _type;
  String? _image;
  String? _createdBy;
  num? _likes;
  num? _comments;
Blogs copyWith({  num? id,
  num? type,
  String? image,
  String? createdBy,
  num? likes,
  num? comments,
}) => Blogs(  id: id ?? _id,
  type: type ?? _type,
  image: image ?? _image,
  createdBy: createdBy ?? _createdBy,
  likes: likes ?? _likes,
  comments: comments ?? _comments,
);
  num? get id => _id;
  num? get type => _type;
  String? get image => _image;
  String? get createdBy => _createdBy;
  num? get likes => _likes;
  num? get comments => _comments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['type'] = _type;
    map['image'] = _image;
    map['created_by'] = _createdBy;
    map['likes'] = _likes;
    map['comments'] = _comments;
    return map;
  }

}

/// id : 1
/// type : 1
/// image : "https://projectudaan.in/public/storage/contents/image/2024-01-02_Gangavaram.png"
/// audio : "https://projectudaan.in/public/storage/contents/audio/2024-01-02_adani.mp3"
/// created_by : "Lorem Ipsum"
/// likes : 2
/// comments : 2

class Audios {
  Audios({
      num? id, 
      num? type, 
      String? image, 
      String? audio, 
      String? createdBy, 
      num? likes, 
      num? comments,}){
    _id = id;
    _type = type;
    _image = image;
    _audio = audio;
    _createdBy = createdBy;
    _likes = likes;
    _comments = comments;
}

  Audios.fromJson(dynamic json) {
    _id = json['id'];
    _type = json['type'];
    _image = json['image'];
    _audio = json['audio'];
    _createdBy = json['created_by'];
    _likes = json['likes'];
    _comments = json['comments'];
  }
  num? _id;
  num? _type;
  String? _image;
  String? _audio;
  String? _createdBy;
  num? _likes;
  num? _comments;
Audios copyWith({  num? id,
  num? type,
  String? image,
  String? audio,
  String? createdBy,
  num? likes,
  num? comments,
}) => Audios(  id: id ?? _id,
  type: type ?? _type,
  image: image ?? _image,
  audio: audio ?? _audio,
  createdBy: createdBy ?? _createdBy,
  likes: likes ?? _likes,
  comments: comments ?? _comments,
);
  num? get id => _id;
  num? get type => _type;
  String? get image => _image;
  String? get audio => _audio;
  String? get createdBy => _createdBy;
  num? get likes => _likes;
  num? get comments => _comments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['type'] = _type;
    map['image'] = _image;
    map['audio'] = _audio;
    map['created_by'] = _createdBy;
    map['likes'] = _likes;
    map['comments'] = _comments;
    return map;
  }

}

/// location_id : 1
/// location_name : "Mundra (Gujarat)"
/// location_img : "https://projectudaan.in/public/storage/images/locations/Mundra (Gujarat).jpg"

class Locations {
  Locations({
      num? locationId, 
      String? locationName, 
      String? locationImg,}){
    _locationId = locationId;
    _locationName = locationName;
    _locationImg = locationImg;
}

  Locations.fromJson(dynamic json) {
    _locationId = json['location_id'];
    _locationName = json['location_name'];
    _locationImg = json['location_img'];
  }
  num? _locationId;
  String? _locationName;
  String? _locationImg;
Locations copyWith({  num? locationId,
  String? locationName,
  String? locationImg,
}) => Locations(  locationId: locationId ?? _locationId,
  locationName: locationName ?? _locationName,
  locationImg: locationImg ?? _locationImg,
);
  num? get locationId => _locationId;
  String? get locationName => _locationName;
  String? get locationImg => _locationImg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['location_id'] = _locationId;
    map['location_name'] = _locationName;
    map['location_img'] = _locationImg;
    return map;
  }

}