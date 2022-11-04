class NearMeDetails {
  String? status;
  String? tag;
  List<CustomRow>? rOW;

  NearMeDetails({this.status,  this.tag, this.rOW});

  NearMeDetails.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    tag = json['tag'];
    if (json['ROW'] != null) {
      rOW = <CustomRow>[];
      json['ROW'].forEach((v) {
        rOW!.add(CustomRow.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['tag'] = tag;
    if (rOW != null) {
      data['ROW'] = rOW!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CustomRow {
  String? rOWORDER;
  String? gRIEVANCEID;
  String? cNAME;
  String? iURL;
  String? oRDER1;

  CustomRow({this.rOWORDER, this.gRIEVANCEID, this.cNAME, this.iURL, this.oRDER1});

  CustomRow.fromJson(Map<String, dynamic> json) {
    rOWORDER = json['ROWORDER'];
    gRIEVANCEID = json['GRIEVANCE_ID'];
    cNAME = json['C_NAME'];
    iURL = json['I_URL'];
    oRDER1 = json['ORDER1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ROWORDER'] = rOWORDER;
    data['GRIEVANCE_ID'] = gRIEVANCEID;
    data['C_NAME'] = cNAME;
    data['I_URL'] = iURL;
    data['ORDER1'] = oRDER1;
    return data;
  }
}