
// ignore_for_file: prefer_const_constructor, annotate_overrides, must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_controller.dart';
import 'package:news_app/model/news_model.dart';



class News extends GetWidget {
  News({Key? key}) : super(key: key);


  @override
  NewsController controller = Get.put(NewsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:FutureBuilder(
        future: controller.getData("entertainment"),

        builder: (context,AsyncSnapshot snapshot)
        {
          AutoGenerate data = snapshot.data;
          if (snapshot.hasData)
          {
            return ListView.builder(
              itemCount:data.articles.length,
              itemBuilder:(context,int index)
              {
                return Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                          width: double.infinity,
                          height: 150,

                          child: Image.network(data.articles[index].urlToImage.toString())),
                      Text(data.articles[index].title),
                      Text(data.articles[index].description.toString()),
                    ],
                  ),
                );
              },
            );
          }
          else
          {return  Center(child: CircularProgressIndicator());}

        },
      ),


    );
  }
}
