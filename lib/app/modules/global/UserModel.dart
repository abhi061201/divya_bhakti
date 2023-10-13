class UserModel {

  String ?name;
  String ? MobileNumber;
  String ?email;
  String ?userid;

  UserModel({this.MobileNumber, this.email, this.name, this.userid});

  UserModel.fromMap(Map<String, dynamic> mp)
  {
    name= mp['name'];
    MobileNumber = mp['MobileNumber'];
    email = mp['email'];
    userid= mp['userid'];
  }

  Map<String, dynamic> toMap(){
    return {
      'name':name,
      'MobileNumber':MobileNumber,
      'email':email,
      'userid':userid,
    };
  }
  
}