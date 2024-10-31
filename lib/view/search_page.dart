import 'package:flutter/material.dart';

import '../utilis/app_const_data.dart';
import '../utilis/custom_widgit.dart';
import '../utilis/font_stye=le.dart';

class SearchPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        bottom: PreferredSize(preferredSize: Size(double.infinity, double.minPositive+10), child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: myTextField(hintText: "Search", suficsIcon: Icons.search,isFocus: true,),
        )),
      ),
      body: ListView.builder(itemBuilder: (_,index){
        return InkWell(
          onTap: (){},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(AppConstData.newsTypes[index],style: myTextStyle15(),),
              ),
              Divider()
            ],
          ),
        );
      },
        itemCount: AppConstData.newsTypes.length,

      ),
    );
  }

}