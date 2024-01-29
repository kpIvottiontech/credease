/// is_like : "1"

class SetLikeRequest {
  SetLikeRequest({
      String? isLike,}){
    _isLike = isLike;
}

  SetLikeRequest.fromJson(dynamic json) {
    _isLike = json['is_like'];
  }
  String? _isLike;
SetLikeRequest copyWith({  String? isLike,
}) => SetLikeRequest(  isLike: isLike ?? _isLike,
);
  String? get isLike => _isLike;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['is_like'] = _isLike;
    return map;
  }

}