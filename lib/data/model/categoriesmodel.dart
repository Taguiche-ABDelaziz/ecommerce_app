class CategoriesModel {
  String? categoresId;
  String? categoresName;
  String? categoresNameAr;
  String? categoresImage;
  String? categoresDatetime;

  CategoriesModel({
    this.categoresId,
    this.categoresName,
    this.categoresNameAr,
    this.categoresImage,
    this.categoresDatetime,
  });

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    categoresId = json['categores_id'];
    categoresName = json['categores_name'];
    categoresNameAr = json['categores_name_ar'];
    categoresImage = json['categores_image'];
    categoresDatetime = json['categores_datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['categores_id'] = this.categoresId;
    data['categores_name'] = this.categoresName;
    data['categores_name_ar'] = this.categoresNameAr;
    data['categores_image'] = this.categoresImage;
    data['categores_datetime'] = this.categoresDatetime;
    return data;
  }
}
