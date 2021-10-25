class HomeModel {

 late String name;
 late String image;

  HomeModel({
    required this.name,
    required this.image
  });

   HomeModel.fromJson(Map<String, dynamic> json){
    this.name = json['name'];
    this.image = json['img'];
  }
  }

