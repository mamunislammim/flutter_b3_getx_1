import 'dart:developer';

import 'package:get/get.dart';

import '../../repository/service.dart';

class ServiceController extends GetxController {
  RxList serviceList = [].obs;

  // RxString myClock = "${DateTime.now()}".obs;
  //
  // clockFun() async {
  //   myClock.value = "${DateTime.now()}";
  //   await Future.delayed(Duration(microseconds: 1));
  //   clockFun();
  // }

  getApiDataFun() async {
    var decodedData = await ServiceRepo().getApiData();
    serviceList.clear();
    for (var i in decodedData['service_data']) {
      log("========${i['title']}==========");
      serviceList.add({"title": i['title'], "description": i['description']});
    }
  }

  // getServiceDummyDataFun() async {
  //   log("============333333333==============");
  //   await Future.delayed(Duration(seconds: 2));
  //   serviceList.value = dummyServiceList;
  //   log("=========444444444444=================");
  //   // await Future.delayed(Duration(seconds: 5));
  //   // serviceList.clear();
  //   // log("=========5=================");
  // }

  // @override
  // void onInit() {
  //   log("============111111111==============");
  //   log("==========222222222================");
  //   getServiceDummyDataFun();
  //   super.onInit();
  // }
  //
  // List dummyServiceList = [
  //   {
  //     "title": "Title 1",
  //     "details": "Details 1",
  //     "cover_image":
  //         "https://marketplace.canva.com/EAFvvOPc5Y8/1/0/1600w/canva-blue-and-white-sky-animation-simple-dream-quote-facebook-cover-o61mLdpa1Bg.jpg",
  //     "profile_image":
  //         "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D'",
  //   },
  //   {
  //     "title": "Title 2",
  //     "details": "Details 2",
  //     "profile_image":
  //         "https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/3431298/original/Onixus1flat/make-your-profile-picture--looks-flat-designed.jpg",
  //     "cover_image":
  //         "https://t4.ftcdn.net/jpg/05/68/27/11/360_F_568271133_abLuLCUggrEHb7QBjTBLkb2gVtiIlQQP.jpg",
  //   },
  //   {
  //     "title": "Title 3",
  //     "details": "Details 3",
  //     "profile_image":
  //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6Hb5xzFZJCTW4cMqmPwsgfw-gILUV7QevvQ&s",
  //     "cover_image":
  //         "https://img.freepik.com/free-photo/islamic-style-lantern-design-ramadan-celebration-with-copy-space_23-2151184005.jpg",
  //   },
  //   {
  //     "title": "Title 1",
  //     "details": "Details 1",
  //     "cover_image":
  //         "https://marketplace.canva.com/EAFvvOPc5Y8/1/0/1600w/canva-blue-and-white-sky-animation-simple-dream-quote-facebook-cover-o61mLdpa1Bg.jpg",
  //     "profile_image":
  //         "https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D'",
  //   },
  //   {
  //     "title": "Title 2",
  //     "details": "Details 2",
  //     "profile_image":
  //         "https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/3431298/original/Onixus1flat/make-your-profile-picture--looks-flat-designed.jpg",
  //     "cover_image":
  //         "https://t4.ftcdn.net/jpg/05/68/27/11/360_F_568271133_abLuLCUggrEHb7QBjTBLkb2gVtiIlQQP.jpg",
  //   },
  //   {
  //     "title": "Title 3",
  //     "details": "Details 3",
  //     "profile_image":
  //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6Hb5xzFZJCTW4cMqmPwsgfw-gILUV7QevvQ&s",
  //     "cover_image":
  //         "https://img.freepik.com/free-photo/islamic-style-lantern-design-ramadan-celebration-with-copy-space_23-2151184005.jpg",
  //   },
  // ];
}
