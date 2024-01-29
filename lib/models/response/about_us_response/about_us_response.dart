/// status : true
/// message : "Data fetched successfully!"
/// contents : {"banner":"https://projectudaan.in/public/frontend/img/icon/slide_show_2.jpg","suptitle":"<h5>Who We Are</h5>","title":"<h2>Our Story Of Change</h2>","para1":"<p>Udaan is a special project inspired by the life-changing story of Mr. Gautam Adani, the Chairman of the Adani Group. As a child, Mr. Adani had visited the Kandla port in Gujarat, and after looking at the expanse of the port, he dreamt of having his own port one day. The rest, as they say, is history.</p>","para2":"<p>Project Udaan is a learning-based initiative focused on the youth of the nation. Under this project, services are absolutely-free of cost for all types of Govt. schools and with nominal charges for other educational institutes. Wherein students are given a chance to visit the Adani Port, Adani Power & Adani Wilmar facilities to get an insight into the largescale business activities carried out there. The major objective behind organising such visits is to encourage young minds to develop an interest in all sorts of enterprises and to encourage them to dream big in life. The Adani Foundation believes that when students are given exposure, it helps them to understand their own potential and get motivated to work towards the same. The Udaan project is geared towards motivating the students of our country and encouraging them to achieve greatness as well as inculcating an entrepreneurial spirit in their lives. It is a learning based initiative focusing on the UN's fourth Sustainable Development Goal - Quality Education.</p>","para3":"<p>After successfully launching the Udaan project in Mundra in December 2010, it has been introduced in Hazira (Gujarat), Kawai (Rajasthan), Tirora (Maharashtra), Dhamra (Odisha) and Udupi (Karnataka) in 2016-17. Above 4.32 lakh students have participated in this project till November 2023. Project Udaan services were shut down from April 2020 to May 2022 due to COVID-19.</p>","sites":11,"total_visits":6750,"total_participants":431864,"total_faculties":24805,"total_students":407059,"videos":["https://www.youtube.com/watch?v=ytn56jT9Qdo&themeRefresh=1","https://www.youtube.com/watch?v=dJr6yxe34O8","https://www.youtube.com/watch?v=EYyI2sYL6IY","https://www.youtube.com/watch?v=awVe8iG4jtU"]}

class AboutUsResponse {
  AboutUsResponse({
      bool? status, 
      String? message, 
      Contents? contents,}){
    _status = status;
    _message = message;
    _contents = contents;
}

  AboutUsResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _contents = json['contents'] != null ? Contents.fromJson(json['contents']) : null;
  }
  bool? _status;
  String? _message;
  Contents? _contents;
AboutUsResponse copyWith({  bool? status,
  String? message,
  Contents? contents,
}) => AboutUsResponse(  status: status ?? _status,
  message: message ?? _message,
  contents: contents ?? _contents,
);
  bool? get status => _status;
  String? get message => _message;
  Contents? get contents => _contents;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_contents != null) {
      map['contents'] = _contents?.toJson();
    }
    return map;
  }

}

/// banner : "https://projectudaan.in/public/frontend/img/icon/slide_show_2.jpg"
/// suptitle : "<h5>Who We Are</h5>"
/// title : "<h2>Our Story Of Change</h2>"
/// para1 : "<p>Udaan is a special project inspired by the life-changing story of Mr. Gautam Adani, the Chairman of the Adani Group. As a child, Mr. Adani had visited the Kandla port in Gujarat, and after looking at the expanse of the port, he dreamt of having his own port one day. The rest, as they say, is history.</p>"
/// para2 : "<p>Project Udaan is a learning-based initiative focused on the youth of the nation. Under this project, services are absolutely-free of cost for all types of Govt. schools and with nominal charges for other educational institutes. Wherein students are given a chance to visit the Adani Port, Adani Power & Adani Wilmar facilities to get an insight into the largescale business activities carried out there. The major objective behind organising such visits is to encourage young minds to develop an interest in all sorts of enterprises and to encourage them to dream big in life. The Adani Foundation believes that when students are given exposure, it helps them to understand their own potential and get motivated to work towards the same. The Udaan project is geared towards motivating the students of our country and encouraging them to achieve greatness as well as inculcating an entrepreneurial spirit in their lives. It is a learning based initiative focusing on the UN's fourth Sustainable Development Goal - Quality Education.</p>"
/// para3 : "<p>After successfully launching the Udaan project in Mundra in December 2010, it has been introduced in Hazira (Gujarat), Kawai (Rajasthan), Tirora (Maharashtra), Dhamra (Odisha) and Udupi (Karnataka) in 2016-17. Above 4.32 lakh students have participated in this project till November 2023. Project Udaan services were shut down from April 2020 to May 2022 due to COVID-19.</p>"
/// sites : 11
/// total_visits : 6750
/// total_participants : 431864
/// total_faculties : 24805
/// total_students : 407059
/// videos : ["https://www.youtube.com/watch?v=ytn56jT9Qdo&themeRefresh=1","https://www.youtube.com/watch?v=dJr6yxe34O8","https://www.youtube.com/watch?v=EYyI2sYL6IY","https://www.youtube.com/watch?v=awVe8iG4jtU"]

class Contents {
  Contents({
      String? banner, 
      String? suptitle, 
      String? title, 
      String? para1, 
      String? para2, 
      String? para3, 
      num? sites, 
      num? totalVisits, 
      num? totalParticipants, 
      num? totalFaculties, 
      num? totalStudents, 
      List<String>? videos,}){
    _banner = banner;
    _suptitle = suptitle;
    _title = title;
    _para1 = para1;
    _para2 = para2;
    _para3 = para3;
    _sites = sites;
    _totalVisits = totalVisits;
    _totalParticipants = totalParticipants;
    _totalFaculties = totalFaculties;
    _totalStudents = totalStudents;
    _videos = videos;
}

  Contents.fromJson(dynamic json) {
    _banner = json['banner'];
    _suptitle = json['suptitle'];
    _title = json['title'];
    _para1 = json['para1'];
    _para2 = json['para2'];
    _para3 = json['para3'];
    _sites = json['sites'];
    _totalVisits = json['total_visits'];
    _totalParticipants = json['total_participants'];
    _totalFaculties = json['total_faculties'];
    _totalStudents = json['total_students'];
    _videos = json['videos'] != null ? json['videos'].cast<String>() : [];
  }
  String? _banner;
  String? _suptitle;
  String? _title;
  String? _para1;
  String? _para2;
  String? _para3;
  num? _sites;
  num? _totalVisits;
  num? _totalParticipants;
  num? _totalFaculties;
  num? _totalStudents;
  List<String>? _videos;
Contents copyWith({  String? banner,
  String? suptitle,
  String? title,
  String? para1,
  String? para2,
  String? para3,
  num? sites,
  num? totalVisits,
  num? totalParticipants,
  num? totalFaculties,
  num? totalStudents,
  List<String>? videos,
}) => Contents(  banner: banner ?? _banner,
  suptitle: suptitle ?? _suptitle,
  title: title ?? _title,
  para1: para1 ?? _para1,
  para2: para2 ?? _para2,
  para3: para3 ?? _para3,
  sites: sites ?? _sites,
  totalVisits: totalVisits ?? _totalVisits,
  totalParticipants: totalParticipants ?? _totalParticipants,
  totalFaculties: totalFaculties ?? _totalFaculties,
  totalStudents: totalStudents ?? _totalStudents,
  videos: videos ?? _videos,
);
  String? get banner => _banner;
  String? get suptitle => _suptitle;
  String? get title => _title;
  String? get para1 => _para1;
  String? get para2 => _para2;
  String? get para3 => _para3;
  num? get sites => _sites;
  num? get totalVisits => _totalVisits;
  num? get totalParticipants => _totalParticipants;
  num? get totalFaculties => _totalFaculties;
  num? get totalStudents => _totalStudents;
  List<String>? get videos => _videos;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['banner'] = _banner;
    map['suptitle'] = _suptitle;
    map['title'] = _title;
    map['para1'] = _para1;
    map['para2'] = _para2;
    map['para3'] = _para3;
    map['sites'] = _sites;
    map['total_visits'] = _totalVisits;
    map['total_participants'] = _totalParticipants;
    map['total_faculties'] = _totalFaculties;
    map['total_students'] = _totalStudents;
    map['videos'] = _videos;
    return map;
  }

}