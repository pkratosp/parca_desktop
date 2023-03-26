class CpfInvalidoModel {
  bool? success;
  Error? error;

  CpfInvalidoModel({this.success, this.error});

  CpfInvalidoModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    error = json['error'] != null ? new Error.fromJson(json['error']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.error != null) {
      data['error'] = this.error!.toJson();
    }
    return data;
  }
}

class Error {
  String? message;

  Error({this.message});

  Error.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    return data;
  }
}
