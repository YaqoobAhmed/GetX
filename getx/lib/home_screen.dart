import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Practice"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("Yaqoob", "How are you",
              snackPosition: SnackPosition.TOP,
              margin: EdgeInsets.only(bottom: 30),
              icon: Icon(Icons.message));
        },
        child: Icon(Icons.message),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("Getx Dialog alert"),
              subtitle: Text("Dialog alert with GetX "),
              onTap: () {
                Get.defaultDialog(
                    buttonColor: Colors.orangeAccent[400],
                    title: "Delete Data",
                    // middleText: "please confrim ",
                    textConfirm: "Yes",
                    textCancel: "no",
                    onCancel: () {
                      // Navigator.pop(context);
                      Get.back();
                    },
                    content: Column(
                      children: [
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                        Text("data"),
                      ],
                    )
                    // confirm: TextButton(onPressed: () {}, child: Text("Yes")                    )
                    );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Getx Bottom Sheet"),
              subtitle: Text("Bottom sheet with GetX "),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: BoxDecoration(
                      color: Colors.deepOrange[400],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text("Light Theme"),
                        onTap: () => Get.changeTheme(ThemeData.light()),
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text("dark Theme"),
                        onTap: () => Get.changeTheme(ThemeData.dark()),
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                // Get.to(ScreenOne(title: "Yaqoob ",));
                //sending data by arguments in a list and calling that data in screenOne as Get.agrement[0 or 1]
                Get.toNamed("/screenOne", arguments: ['title', 'Yaqoob']);
              },
              child: Text("move to next screen"),
            ),
          ),
          Container(
            // height: 100,
            // height: MediaQuery.of(context).size.height * 0.1,
            height: Get.height * 0.1,
            width: Get.width * 0.8,
            color: Colors.deepOrange[400],
            child: Center(child: Text("Container")),
          ),
          ListTile(
            title: Text("message".tr),
            subtitle: Text("name".tr),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale("en", 'US'));
                  },
                  child: Text("English")),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale("ur", "PK"));
                  },
                  child: Text("Urdu"))
            ],
          )
        ],
      ),
    );
  }
}
