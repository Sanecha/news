import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: (){},
            child: Container(
              width: 90,
              height: 30,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Theme.of(context).brightness==Brightness.dark?Colors.white:Colors.black)
              ),
              child: Text("View News",textAlign: TextAlign.center,),
            ),
          )
        ],
      ),
      body: ListView.builder(itemBuilder: (_,index){
        return Container(
            margin: EdgeInsets.all(5),
            height:MediaQuery.of(context).size.height,
            child: Stack(
              children: [
     Image.asset("lib/assets/image/mgg.jpg",width: double.infinity,height: double.infinity,)
      ]));
      },
        itemCount: 10,
      ),
    );
  }

}