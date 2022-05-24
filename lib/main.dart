// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


/*
GET https://newsapi.org/v2/top-headlines?country=us&apiKey=661ba2a3eece493b9b19058b0a3aa078
api key=661ba2a3eece493b9b19058b0a3aa078
base url=https://newsapi.org
method =/v2/top-headlines
query  q=country=us&   لتحويله لمصري => q=country=eg&
GET

اللينك الجدسد المصري  ==>  https://newsapi.org/v2/top-headlines?country=eg&apiKey=661ba2a3eece493b9b19058b0a3aa078

to read json file https://codebeautify.org/jsonviewer

*/