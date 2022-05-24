
// ignore_for_file: prefer_const_constructor, annotate_overrides, must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_controller.dart';
import 'package:news_app/views/button_nav_bar/entertainment.dart';
import 'package:news_app/views/button_nav_bar/health.dart';
import 'package:news_app/views/button_nav_bar/science.dart';
import 'package:news_app/views/button_nav_bar/sports.dart';



class HomePage extends GetWidget {
   HomePage({Key? key}) : super(key: key);

NewsController controller=Get.put(NewsController());
List<Widget> screens=[
  News(),
  Health(),
  Science(),
  Sports(),
];
List<String> titles = [
  'New News',
  'Health News',
  'Science News',
  'Sports News',
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.grey[400],
        title: GetX<NewsController>(builder: (controller) =>Text(
          titles[controller.currentIndex.value],
          style: TextStyle(color: Colors.red),
        ),)
      ),

      bottomNavigationBar:GetX<NewsController>(builder:(controller)=> BottomNavigationBar(
        selectedItemColor: Colors.red,
        currentIndex:controller.currentIndex.value ,
        unselectedItemColor: Colors.grey,
        onTap: (val)
        {
          controller.currentIndex.value = val;
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.newspaper) , label:'News '),
          BottomNavigationBarItem(icon:Icon(Icons.health_and_safety)  , label:'Health' ),
          BottomNavigationBarItem(icon: Icon(Icons.science) , label:'Science' ),
          BottomNavigationBarItem(icon: Icon(Icons.sports_volleyball_outlined) , label:'Sports' ),
        ],
      ), ),

      body: GetX<NewsController>(builder: (controller)=>screens[controller.currentIndex.value],),
    );
  }
}
