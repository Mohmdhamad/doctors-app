import 'package:flutter/cupertino.dart';

Widget horizontalListBuilder({
  required Widget Function (int)builderWidget,
  required int count,
  required double height,
})=>SizedBox(
  height: height,
  child: ListView.separated(
      itemBuilder: (context,index)=>builderWidget(index),
      separatorBuilder: (context,index)=> const SizedBox(width: 7,),
      itemCount: count,
  scrollDirection: Axis.horizontal,
    physics: BouncingScrollPhysics(),
    shrinkWrap: true,

  ),
);

Widget verticalListBuilder({
  required Widget Function (int)builderWidget,
  required int count,
})=>ListView.separated(
  itemBuilder: (context,index)=>builderWidget(index),
  separatorBuilder: (context,index)=> const SizedBox(width: 7,),
  itemCount: count,
  physics: BouncingScrollPhysics(),
  shrinkWrap: true,

);