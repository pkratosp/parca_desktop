class ValidCPFModel {
  bool? valid;
  Data? data;
  Null? error;

  ValidCPFModel({this.valid, this.data, this.error});

  ValidCPFModel.fromJson(Map<String, dynamic> json) {
    valid = json['valid'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['valid'] = this.valid;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['error'] = this.error;
    return data;
  }
}

class Data {
  String? taxIdNumber;
  String? taxIdCountry;
  String? name;
  Aliases? aliases;

  Data({this.taxIdNumber, this.taxIdCountry, this.name, this.aliases});

  Data.fromJson(Map<String, dynamic> json) {
    taxIdNumber = json['TaxIdNumber'];
    taxIdCountry = json['TaxIdCountry'];
    name = json['Name'];
    aliases =
    json['Aliases'] != null ? new Aliases.fromJson(json['Aliases']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['TaxIdNumber'] = this.taxIdNumber;
    data['TaxIdCountry'] = this.taxIdCountry;
    data['Name'] = this.name;
    if (this.aliases != null) {
      data['Aliases'] = this.aliases!.toJson();
    }
    return data;
  }
}

class Aliases {
  String? commonName;
  String? standardizedName;

  Aliases({this.commonName, this.standardizedName});

  Aliases.fromJson(Map<String, dynamic> json) {
    commonName = json['CommonName'];
    standardizedName = json['StandardizedName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CommonName'] = this.commonName;
    data['StandardizedName'] = this.standardizedName;
    return data;
  }
}
