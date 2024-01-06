import 'package:flutter/material.dart';
import 'package:libralink/routes/mapping.dart';
import 'package:libralink/widgets/homepagebook.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Builder(builder: (context) {
      return Scaffold(
          body: SafeArea(
              child: Container(
        width: screenSize.width,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Stack(children: [
          Container(
              width: screenSize.width,
              height: 410,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/bgimg.png"),
                fit: BoxFit.fill,
              )),
              child: Padding(
                padding: const EdgeInsets.all(19.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.profileRoute);
                      },
                      child: SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset('assets/images/Group 34.png')),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.notifRoute);
                      },
                      child: Container(
                          height: 30,
                          width: 33,
                          child: Image.asset('assets/images/Vector.png')),
                    ),
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.only(top: 50, right: 100),
            child: Container(
              width: 425,
              height: 123,
              alignment: Alignment.center,
              child: Text("WELCOME🤚",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 176, 169, 169),
                      fontSize: 34,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 130, left: 38),
            child: Container(
              child: Text(
                'Jay',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 176, 169, 169)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 200),
            child: Container(
              width: 265,
              height: 40,
              child: TextField(
                controller: myController,
                autofocus: false,
                //autofocus: false,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(5),
                    isCollapsed: false,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: const Color.fromARGB(255, 0, 0, 0),
                    fillColor: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200, left: 300),
            child: SizedBox(
              width: 40,
              height: 40,
              child: Container(
                child: GestureDetector(
                    onTap: () {},
                    child: Image.asset('assets/images/Group 37.png')),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 300),
            child: Container(
              width: 524,
              height: 520,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 233, 233),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Padding(
                  padding: EdgeInsets.only(right: 160),
                  child: Column(
                    children: [
                      Text(
                        'Features',
                        style: TextStyle(fontSize: 32),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 380, left: 10),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                          height: 40,
                          width: 50,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, MyRoutes.issuedBooksRoute);
                              },
                              child: Image.asset('assets/images/book.png'))),
                      Text('Issued'),
                      Text('Books')
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                          height: 40,
                          width: 50,
                          child: GestureDetector(
                              onTap: () {},
                              child:
                                  Image.asset('assets/images/locateBook.png'))),
                      Text('Locate'),
                      Text('Books')
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                          height: 40,
                          width: 50,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, MyRoutes.pDuesRoute);
                              },
                              child: Image.asset('assets/images/libdues.png'))),
                      Text('Library'),
                      Text('Dues')
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                          height: 40,
                          width: 50,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, MyRoutes.addbooks);
                              },
                              child: Icon(
                                Icons.add_circle_outlined,
                                size: 45.0,
                                color: Color.fromARGB(170, 21, 37, 57),
                              ))),
                      Text('Add'),
                      Text('Books')
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 480, left: 30),
            child: Row(
              children: [
                Text(
                  'Deadlines',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  width: screenSize.width * .03,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset('assets/images/line.png'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 533, left: 28),
            child: Icon(Icons.circle, color: Color.fromARGB(255, 85, 85, 85)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 608, left: 28),
            child: Icon(Icons.circle_outlined,
                color: Color.fromARGB(255, 35, 35, 35)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 685, left: 28),
            child: Icon(Icons.circle_outlined,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 554, left: 29),
            child: SizedBox(
                width: 20,
                height: 55,
                child: Image.asset('assets/images/Vector 11.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 630, left: 29),
            child: SizedBox(
                width: 20,
                height: 55,
                child: Image.asset('assets/images/Vector 11.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 520, left: 50),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.5,
              child: MyListViewBuilder(),
            ),
          )
        ]),
      )));
    });
  }
}
