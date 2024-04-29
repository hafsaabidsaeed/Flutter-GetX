import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXUtilScreen extends StatefulWidget {
  const GetXUtilScreen({Key? key}) : super(key: key);

  @override
  State<GetXUtilScreen> createState() => _GetXUtilScreenState();
}

class _GetXUtilScreenState extends State<GetXUtilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorials'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              onTap: (){
                Get.snackbar(
                    'Hafsa Abid',
                    'this is my appppppppppppppppp lol' ,
                    icon: Icon(Icons.add),
                    onTap: (snap){

                    },
                    mainButton: TextButton(onPressed: (){}, child: Text('Click')),
                    backgroundColor: Colors.blue ,
                    snackPosition: SnackPosition.BOTTOM
                );
              },
              title: Text('Snakbar'),
              subtitle: Text('Getx Snakbar'),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){

                Get.bottomSheet(
                  Container(
                    decoration:  const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30)
                        )
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          onTap: (){
                            Get.changeTheme( ThemeData.light());
                          },
                          leading: const Icon(Icons.light_mode),
                          title: const Text('Light mode'),
                          subtitle: const Text('Light mode'),
                        ),
                        ListTile(
                          onTap: (){
                            Get.changeTheme( ThemeData.dark());
                          },
                          leading: const Icon(Icons.dark_mode),
                          title: const Text('Dark mode'),
                          subtitle: const Text('Dark mode'),
                        )
                      ],
                    ),
                  ) ,
                  elevation: 1 ,
                );
              },
              title: const Text('Get Bottom Sheet'),
              subtitle: const Text('How to change Light and Dark Mode with GetX'),
            ),
          ),
          

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){


      }),
    );
  }
}