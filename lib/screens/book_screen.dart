import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/common_drawer.dart';

class BookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 設定空標題列
      appBar: AppBar(),
      // 引入剛設定的側邊選單CommonDrawer
      drawer: CommonDrawer.getDrawer(context),
      // 當畫面超出載具呈現大小時，以滾動方式呈現
      body: SingleChildScrollView(
        child: Container(
          //alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                child: Image(image: AssetImage('/cloud-architecture.jpeg')),
              ),
              Container(
                  child: Text(
                '大話AWS雲端架構',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              )),
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('跳轉前頁'),
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/aws-saa-class");
                  },
                  child: Text('未來技術趨勢'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
