class PqmsMobileLogin {
  String? statusMessage;
  int? statusCode;
  UserData? data;
  String? time;

  PqmsMobileLogin({this.statusMessage, this.statusCode, required this.data, this.time});

  PqmsMobileLogin.fromJson(Map<String, dynamic> json) {
    statusMessage = json['status_Message'];
    statusCode = json['status_Code'];
    data = json['data'] != null ? UserData.fromJson(json['data']) : null;
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['status_Message'] = statusMessage;
    data['status_Code'] = statusCode;
    data['data'] = this.data?.toJson();
    data['time'] = time;
    return data;
  }
}

class UserData {
  String? token;
  String? userName;
  String? rolename;
  String? clientId;
  String? employeeName;
  int? pqStationId;
  String? pqStationName;
  bool? roleStatus;
  String? modifiedTime;
  int? userId;

  UserData(
      {this.token,
      this.userName,
      this.rolename,
      this.clientId,
      this.employeeName,
      this.pqStationId,
      this.pqStationName,
      this.roleStatus,
      this.modifiedTime,
      this.userId});

  UserData.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    userName = json['userName'];
    rolename = json['rolename'];
    clientId = json['clientId'];
    employeeName = json['employeeName'];
    pqStationId = json['pqStationId'];
    pqStationName = json['pqStationName'];
    roleStatus = json['roleStatus'];
    modifiedTime = json['modifiedTime'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['userName'] = userName;
    data['rolename'] = rolename;
    data['clientId'] = clientId;
    data['employeeName'] = employeeName;
    data['pqStationId'] = pqStationId;
    data['pqStationName'] = pqStationName;
    data['roleStatus'] = roleStatus;
    data['modifiedTime'] = modifiedTime;
    data['userId'] = userId;
    return data;
  }
}
