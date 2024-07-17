//引入核心套件
import 'package:flutter/material.dart';

//建立一個函數類別叫做CommonDrawer
class CommonDrawer {
  //設置getDrawer靜態函數，無須建立物件即可直接調用/呼叫
  static Drawer getDrawer(BuildContext context) {
    //回傳Drawer，並設置它
    return Drawer(
      //ListView可以想像成是Column，兩者皆是可置物的模型/基底
      child: ListView(
        children: [
          //置入第一個ListTile
          ListTile(
            //名稱叫公司官網
            title: const Text('公司官網'),
            //連結至相應頁面
            onTap: () {
              //用Navigator來實踐這個「連結」的建立
              Navigator.pushNamed(context, "/");
            },
          ),

          //置入第二個ListTile
          ListTile(
            //名稱叫大話AWS雲端搶先看
            title: const Text('大話AWS雲端搶先看'),
            //用Navigator來實踐這個「連結」的建立
            onTap: () {
              Navigator.pushNamed(context, "/cloud-architecture-guide");
            },
          ),

          //置入第三個ListTile
          ListTile(
            title: const Text('未來必備的雲端架構師認證'),
            onTap: () {
              Navigator.pushNamed(context, "/aws-saa-class");
            },
          )
        ],
      ),
    );
  }
}
