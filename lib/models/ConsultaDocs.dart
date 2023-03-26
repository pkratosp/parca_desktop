class ConsultaDocs {
  bool? success;
  bool? fileExist;
  String? message;

  ConsultaDocs({this.success, this.fileExist, this.message});

  ConsultaDocs.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    fileExist = json['fileExist'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['fileExist'] = this.fileExist;
    data['message'] = this.message;
    return data;
  }
}
