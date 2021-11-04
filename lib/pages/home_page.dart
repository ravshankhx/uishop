import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

final List<String> _listItem = [
  'assets/images/image_1.jpeg',
  'assets/images/image_2.jpeg',
  'assets/images/image_3.png',
  'assets/images/image_4.jpeg',
  'assets/images/image_5.jpeg',
  'assets/images/image_1.jpeg',
  'assets/images/image_2.jpeg',
  'assets/images/image_3.png',
  'assets/images/image_4.jpeg',
  'assets/images/image_5.jpeg',
];
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(

        title: Text("Apple Products"),
        leading: Icon(Icons.menu),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(padding: EdgeInsets.all(10),
          child: Container(
            width: 36,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.orange[400],
            ),
            child: Center(
              child: Text("8",style: TextStyle(color: Colors.white),),
            ),
          ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              //header
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage("assets/images/image_4.jpeg"),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.3),
                        Colors.black.withOpacity(.01),
                      ]
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("LifeStyle sale",style: TextStyle(color: Colors.white,fontSize: 35),),
                      SizedBox(height: 40,),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 35),
                        child: Center(
                          child: Text("Shop now", style: TextStyle(color: Colors.black, fontSize: 20),),
                        ),
                      ),
                      SizedBox(height: 35,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                  child: GridView.count(
                      crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: _listItem.map((item) => cellOfList(item)).toList(),
                  ))
            ],
          ),
        ),
      ),
    );
  }
  Widget cellOfList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,

      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          )
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.favorite_border, color: Colors.redAccent, size: 35,)
          ],
        ),
      ),
    );
  }
}
