




class UserModel{
  String uid;
  String name;





  UserModel(
  {
    this.name,
    this.uid,




 }
      );

  UserModel.fromMap(Map<String,dynamic>json){
    uid=json['uid'];
    name=json['name'];




  }
  Map<String,dynamic> toMap(){
    Map<String,dynamic> json={};
    json.addAll({
      'uid':uid,
      'name':name,






    });
    return json;
  }

 }

