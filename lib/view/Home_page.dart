import 'package:flutter/material.dart';

import '../utilis/app_const_data.dart';
import '../utilis/custom_widgit.dart';
import 'news_view_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NewsViewPage(imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSObxrCXfMo1ytVg0niNxp1L9OnQndcZAGEcg&s",newsText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",),));
                  },
                  child: BigCard(newsImg: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnFaZO_c7-e5eOjMCVZ43HgZUdGML_ZGXEGQ&s"), newsText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book", saveBtnCallback: (){}, shareBtnCallback: (){})),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NewsViewPage(newIndex: index,),));
                      },
                      child: myListTile(newsText: AppConstData.showNews[index]['title'], newsImg: NetworkImage(AppConstData.showNews[index]['img']), saveBtnCallback: (){}, shareBtnCallback: (){}));
                },
                itemCount: AppConstData.showNews.length,
              ),
              BigCard(newsImg: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiAeAxttcHLCsC0CK15Cf1p79H0BYhjIOYRg&s"), newsText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book", saveBtnCallback: (){}, shareBtnCallback: (){}),


            ],
          ),
        ),
      ),
    );
  }
}