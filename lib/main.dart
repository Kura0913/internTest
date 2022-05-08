import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: App(),
    );
  }
}




class App extends StatefulWidget{
  const App({Key? key}) : super(key: key);

  @override


  State<StatefulWidget> createState() => _App();
}

class _App extends State<App>{

  /*set variable*/
  final index1 = TextEditingController();
  final index2 = TextEditingController();

    /*item's data*/
  var idArray = [0,1,2,3,4,5,6,7,8,9];
  var countArray = [0,0,0,0,0,0,0,0,0,0];
  var colorArray = [const Color(0xff5d01a0),const Color(0xff7791f5),const Color(0xffbac050),
    const Color(0xff713c2f),const Color(0xffe0cd52),const Color(0xffa9027a),
    const Color(0xffdd5d3b),const Color(0xffeca174),const Color(0xff0e5826),const Color(0xff32b790)];

  /*temp*/
  dynamic dataTemp;
  dynamic idTemp;

  @override
  Widget build(BuildContext context) {

    /*App Title*/
    var appTitle = const Text('面試題目');

    /*App Bar*/
    var appBar = AppBar(
      title: appTitle,
    );

    /*TextField*/
    /*TextField of index1*/
    var index1Field = Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      alignment: Alignment.center,
      constraints: const BoxConstraints(
        maxWidth: 300,
        maxHeight: 50,
      ),
      child: TextField(
        controller: index1,
        enabled: true,
        enableInteractiveSelection: false,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLines: 1,
        decoration: const InputDecoration(
          hintText: "請輸入index1",
          contentPadding: EdgeInsets.all(5),
          hintStyle: TextStyle(textBaseline: TextBaseline.ideographic,),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 2.0,
              )
          ),

          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(
                color: Colors.black,
                width: 2.0,
              )
          ),
        ),

      ),
    );

    /*TextField of index2*/
    var index2Field = Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      alignment: Alignment.center,
      constraints: const BoxConstraints(
        maxWidth: 300,
        maxHeight: 50,
      ),
      child: TextField(
        controller: index2,
        enabled: true,
        enableInteractiveSelection: false,
        keyboardType: TextInputType.number,
        maxLines: 1,
        decoration: const InputDecoration(
          hintText: "請輸入index2",
          contentPadding: EdgeInsets.all(5),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 2.0,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(
                color: Colors.black,
                width: 2.0,
              )
          ),
        ),
        textAlign: TextAlign.center,
      ),
    );


    /*item*/
    /*item0*/
    var item0 = Container(
      color: colorArray[0],
      child: Row(
        children: [
          Text(idArray[0].toString()+'.點擊數量'+countArray[0].toString(),style: const TextStyle(color: Colors.white),textAlign: TextAlign.left,
          ),
          Container(
            width: 200,
          ),
          RaisedButton(
            child: const Text('點擊+1',style: TextStyle(fontSize: 15,color: Colors.black),),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            onPressed: () {
              setState(() {
                countArray[0]++;
              });
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
    );
    /*item1*/
    var item1 = Container(
      color: colorArray[1],
      child: Row(
        children: [
          Text(idArray[1].toString()+'.點擊數量'+countArray[1].toString(),style: const TextStyle(color: Colors.white),
          ),
          Container(
            width: 200,
          ),
          RaisedButton(
            child: const Text('點擊+1',style: TextStyle(fontSize: 15,color: Colors.black),),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            onPressed: () {
              setState(() {
                countArray[1]++;
              });
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
    );
    /*item2*/
    var item2 = Container(
      color: colorArray[2],
      child: Row(
        children: [
          Text(idArray[2].toString()+'.點擊數量'+countArray[2].toString(),style: const TextStyle(color: Colors.white),
          ),
          Container(
            width: 200,
          ),
          RaisedButton(
            child: const Text('點擊+1',style: TextStyle(fontSize: 15,color: Colors.black),),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            onPressed: () {
              setState(() {
                countArray[2]++;
              });
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
    );
    /*item3*/
    var item3 = Container(
      color: colorArray[3],
      child: Row(
        children: [
          Text(idArray[3].toString()+'.點擊數量'+countArray[3].toString(),style: const TextStyle(color: Colors.white),
          ),
          Container(
            width: 200,
          ),
          RaisedButton(
            child: const Text('點擊+1',style: TextStyle(fontSize: 15,color: Colors.black),),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            onPressed: () {
              setState(() {
                countArray[3]++;
              });
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
    );
    /*item4*/
    var item4 = Container(
      color: colorArray[4],
      child: Row(
        children: [
          Text(idArray[4].toString()+'.點擊數量'+countArray[4].toString(),style: const TextStyle(color: Colors.white),
          ),
          Container(
            width: 200,
          ),
          RaisedButton(
            child: const Text('點擊+1',style: TextStyle(fontSize: 15,color: Colors.black),),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            onPressed: () {
              setState(() {
                countArray[4]++;
              });
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
    );
    /*item5*/
    var item5 = Container(
      color: colorArray[5],
      child: Row(
        children: [
          Text(idArray[5].toString()+'.點擊數量'+countArray[5].toString(),style: const TextStyle(color: Colors.white),
          ),
          Container(
            width: 200,
          ),
          RaisedButton(
            child: const Text('點擊+1',style: TextStyle(fontSize: 15,color: Colors.black),),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            onPressed: () {
              setState(() {
                countArray[5]++;
              });
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
    );
    /*item6*/
    var item6 = Container(
      color: colorArray[6],
      child: Row(
        children: [
          Text(idArray[6].toString()+'.點擊數量'+countArray[6].toString(),style: const TextStyle(color: Colors.white),
          ),
          Container(
            width: 200,
          ),
          RaisedButton(
            child: const Text('點擊+1',style: TextStyle(fontSize: 15,color: Colors.black),),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            onPressed: () {
              setState(() {
                countArray[6]++;
              });
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
    );
    /*item7*/
    var item7 = Container(
      color: colorArray[7],
      child: Row(
        children: [
          Text(idArray[7].toString()+'.點擊數量'+countArray[7].toString(),style: const TextStyle(color: Colors.white),
          ),
          Container(
            width: 200,
          ),
          RaisedButton(
            child: const Text('點擊+1',style: TextStyle(fontSize: 15,color: Colors.black),),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            onPressed: () {
              setState(() {
                countArray[7]++;
              });
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
    );
    /*item8*/
    var item8 = Container(
      color: colorArray[8],
      child: Row(
        children: [
          Text(idArray[8].toString()+'.點擊數量'+countArray[8].toString(),style: const TextStyle(color: Colors.white),
          ),
          Container(
            width: 200,
          ),
          RaisedButton(
            child: const Text('點擊+1',style: TextStyle(fontSize: 15,color: Colors.black),),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            onPressed: () {
              setState(() {
                countArray[8]++;
              });
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
    );
    /*item9*/
    var item9 = Container(
      color: colorArray[9],
      child: Row(
        children: [
          Text(idArray[9].toString()+'.點擊數量'+countArray[9].toString(),style: const TextStyle(color: Colors.white),
          ),
          Container(
            width: 200,
          ),
          RaisedButton(
            child: const Text('點擊+1',style: TextStyle(fontSize: 15,color: Colors.black),),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            onPressed: () {
              setState(() {
                countArray[9]++;
              });
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
    );

    var itemArray = [item0,item1,item2,item3,item4,item5,item6,item7,item8,item9];
    /*change button*/
    var changeBtn = Container(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      alignment: Alignment.center,
      constraints: const BoxConstraints(
        maxWidth: 100,
        maxHeight: 50,
      ),
      child:
      RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        color: Colors.blue,

        child: const Text('交換',style: TextStyle(color: Colors.white,fontSize: 14),),
        onPressed: (){
          setState(() {
            if(double.parse(index1.text).round() != double.parse(index1.text) || double.parse(index2.text).round() != double.parse(index2.text))
            {
              Fluttertoast.showToast(msg: '請輸入正確的index(0~9的整數)',toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,backgroundColor: Colors.grey,fontSize: 20);
            }
            else{
              int firIndex = int.parse(index1.text);
              int secIndex = int.parse(index2.text);

              try
              {
                if(firIndex<0 || firIndex > 9 || secIndex<0 || secIndex>9)
                {
                  Fluttertoast.showToast(msg: '請輸入正確的index(0~9的整數)',toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,backgroundColor: Colors.grey,fontSize: 20);
                }
                else
                {
                  /*輸入的index需不同才執行交換*/
                  if(firIndex != secIndex)
                  {
                    for(int i=0;i<10;i++)
                    {
                      if(idArray[i] == firIndex)
                      {
                        dataTemp = [idArray[i],countArray[i],colorArray[i]];
                        idTemp = i;
                        break;
                      }
                    }
                    for(int j=0;j<10;j++)
                    {
                      if(idArray[j] == secIndex)
                      {
                        /*change data*/
                        idArray[idTemp] = idArray[j];
                        countArray[idTemp] = countArray[j];
                        colorArray[idTemp] = colorArray[j];

                        idArray[j] = dataTemp[0];
                        countArray[j] = dataTemp[1];
                        colorArray[j] = dataTemp[2];

                        break;
                      }
                    }
                  }
                }
              }
              catch(error)
              {
                Fluttertoast.showToast(msg: '請輸入正確的index(0~9的整數)',toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,backgroundColor: Colors.grey,fontSize: 20);
              }
            }


          });

        },
      ),
    );



//var app = MaterialApp(
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appBar,

        body:Column(
          children: [
            Row(
              children: [Expanded(child: index1Field), Expanded(child: index2Field),changeBtn],
            ),
            Expanded(child: itemArray[0]),Expanded(child: itemArray[1]),Expanded(child: itemArray[2]),Expanded(child: itemArray[3]),Expanded(child: itemArray[4]),
            Expanded(child: itemArray[5]),Expanded(child: itemArray[6]),Expanded(child: itemArray[7]),Expanded(child: itemArray[8]),Expanded(child: itemArray[9])
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
    );

    //return app;

  }
}


