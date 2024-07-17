//引入核心套件
import 'package:flutter/material.dart';
//引入導覽列檔案
import 'package:flutter_application_1/components/common_drawer.dart';

//建立一個函式類別叫做AwsSaaClass，並繼承StatelessWidget
class AwsSaaClass extends StatelessWidget {
  @override
  //實踐StatelessWidget中的build方法，並回傳一個Widget
  Widget build(BuildContext context) {
    //Scaffold是flutter中預設的Widget
    return Scaffold(
      //設定空標題列
      appBar: AppBar(),
      //引入先前設定的側邊攔
      drawer: CommonDrawer.getDrawer(context),
      //超出畫面的部分，使用單一滾動方式檢視
      body: SingleChildScrollView(
        //建立一個容器
        child: Container(
          alignment: Alignment.topCenter,
          //將容器切割(放入一個可以置物的基底)
          child: Column(
            //建立多個容器
            children: [
              //第一個Container容器空間
              Container(
                //放入圖片
                child: Image(
                  //設定圖片寬高
                  width: 500,
                  height: 500,
                  image: AssetImage("assets/aws_saa_class.png"),
                ),
              ),

              //第二個Container容器空間
              Container(
                  //放入文字，並設定文字樣式
                  child: Text(
                '大話AWS雲端架構',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
              )),

              //第三個Container容器空間
              Container(
                //放入文字按鈕
                child: TextButton(
                  //建立連結，當點擊時，會跳到跳到指定畫面
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('跳轉前頁'),
                ),
              ),

              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  child: Text('官方首頁'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
