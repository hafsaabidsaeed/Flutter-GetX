//Snackbar in

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({super.key});

  @override
  State<SnackBarScreen> createState() => _SnackBarScreenState();
}

class _SnackBarScreenState extends State<SnackBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text( "Getx in flutter"),
      ),
      body: const Column(
        children: [

      ],),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("Learn Getx", "Hello Hafsa Abid I want to learn about Getx in flutter")
          SnackPosition: SnackPosition.BOTTOM;
          // SnackPosition: SnackPosition.TOP;
          
      },),
    );
  }
}