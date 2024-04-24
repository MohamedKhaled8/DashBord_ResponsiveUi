import 'package:resposeveui/utils/assets.dart';

class UserInfoModel {
  final String image, title, subTitle;

  const UserInfoModel(
      {required this.image, required this.title, required this.subTitle});
}

List<UserInfoModel> userInfoModel = const [
  UserInfoModel(
      image: Assets.imagesAvatar1,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail"),
  UserInfoModel(
      image: Assets.imagesAvatar2,
      title: "Josua Nunito",
      subTitle: "Josh Nunito@gmail.com"),
  UserInfoModel(
      image: Assets.imagesAvatar3,
      title: "Lekan Okeowo",
      subTitle: "demo@gmail.com"),
];
