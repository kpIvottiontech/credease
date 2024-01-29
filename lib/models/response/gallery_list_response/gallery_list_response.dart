/// status : true
/// message : "Data fetched successfully"
/// gallery : [{"img":"https://projectudaan.in/public/storage/gallery/1/1192/Screenshot_2023-12-18-10-27-28-49.jpg"},{"img":"https://projectudaan.in/public/storage/gallery/1/1192/Screenshot_2023-12-18-10-27-19-56.jpg"}]

class GalleryListResponse {
  GalleryListResponse({
      bool? status, 
      String? message, 
      List<Gallery>? gallery,}){
    _status = status;
    _message = message;
    _gallery = gallery;
}

  GalleryListResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['gallery'] != null) {
      _gallery = [];
      json['gallery'].forEach((v) {
        _gallery?.add(Gallery.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Gallery>? _gallery;
GalleryListResponse copyWith({  bool? status,
  String? message,
  List<Gallery>? gallery,
}) => GalleryListResponse(  status: status ?? _status,
  message: message ?? _message,
  gallery: gallery ?? _gallery,
);
  bool? get status => _status;
  String? get message => _message;
  List<Gallery>? get gallery => _gallery;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_gallery != null) {
      map['gallery'] = _gallery?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// img : "https://projectudaan.in/public/storage/gallery/1/1192/Screenshot_2023-12-18-10-27-28-49.jpg"

class Gallery {
  Gallery({
      String? img,}){
    _img = img;
}

  Gallery.fromJson(dynamic json) {
    _img = json['img'];
  }
  String? _img;
Gallery copyWith({  String? img,
}) => Gallery(  img: img ?? _img,
);
  String? get img => _img;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['img'] = _img;
    return map;
  }

}