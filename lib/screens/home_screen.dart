//引入核心套件
import 'package:flutter/material.dart';
//引入導覽列的檔案
import 'package:flutter_application_1/components/common_drawer.dart';

//建立一個類別叫做HomeScreen，並繼承StatelessWidget
class HomeScreen extends StatelessWidget {
  @override
  //實現StatelessWidget中的build方法，並回傳一個Widget
  Widget build(BuildContext context) {
    //Scaffold是flutter中的預設的Widget
    return Scaffold(
      //設定空標題列
      appBar: AppBar(),
      //引入剛設定的側邊選單CommonDrawer
      drawer: CommonDrawer.getDrawer(context),
      //當畫面超出載具呈現大小時，以滾動方式呈現
      body: SingleChildScrollView(
        //建立容器
        child: Container(
          //排版皆置中(物件皆在畫面中央)
          alignment: Alignment.center,
          //ListView可以想像成是Column，皆是可容納子Widget的模型
          child: Column(
            // 在Column中建立多個容器
            children: [
              //第一個容器空間
              Container(
                  //加入文字，並設計文字樣式
                  child: Text(
                '雲育鏈Line@ QRcode',
                style: TextStyle(fontSize: 28),
              )),

              //第二個容器空間
              Container(
                //加入圖片
                child: Image(
                  //透過AssetImage定資料夾的位置/路徑
                  image: AssetImage('assets/cxcxc_line.png'),
                ),
              ),

              //第三個容器空間
              Container(
                //加入一個文字按鈕，設定點擊後的頁面導向
                child: TextButton(
                  onPressed: () {
                    //用Navigator來實踐這個「連結」的建立
                    Navigator.pushNamed(context, "/cloud-architecture-guide");
                  },
                  //按鈕文字叫做未來技術趨勢
                  child: Text('單身神功秘訣'),
                ),
              ),

              //第四個容器空間
              Container(
                //加入一個文字按鈕，設定點擊後的頁面導向
                child: TextButton(
                  onPressed: () {
                    //用Navigator來實踐這個「連結」的建立
                    Navigator.pushNamed(context, "/aws_saa_class");
                  },
                  //按鈕文字叫做未來技術趨勢
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
