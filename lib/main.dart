import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text(
            'First App',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                  color: Colors.white,
                )),
            IconButton(onPressed: () {},
                icon: Icon(Icons.favorite, color: Colors.white,)),
          ],
        ),
        body: Seventh(),
      ),
    );
  }
}

class Seventh extends StatelessWidget {
  const Seventh({super.key});
  void userTapped(){
    print('Tapped');
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: userTapped,
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.black,
        ),
      ),
    );
  }
}


class Sixth extends StatelessWidget {
  const Sixth({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(width: 300,
        height: 300,
        color: Colors.deepPurple,),
        Container(width: 200,
          height: 200,
          color: Colors.deepPurple[100],),
        Container(width: 100,
          height: 100,
          color: Colors.deepPurple[200],)
      ],
    );
  }
}


class Fifth extends StatelessWidget {
  const Fifth({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 64,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8), itemBuilder: (context,index){
          return Container(color: Colors.deepPurple,margin: EdgeInsets.all(8),);
    });
  }
}


class Fourth extends StatelessWidget {
  const Fourth({super.key});

  @override
  Widget build(BuildContext context) {
    List names = ['Esraa', 'Ahmed', 'Mohamed'];
    return ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(names[index],
            style: TextStyle(color: Colors.black),),);
        });
  }
}


class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      //scrollDirection: Axis.horizontal,
      children: [Container(
        height: 300,
        color: Colors.deepPurple[100],
      ),
        Container(
          height: 300,
          color: Colors.deepPurple[400],
        ),
        Container(
          height: 300,
          color: Colors.deepPurple[200],
        ),
        Container(
          height: 300,
          color: Colors.deepPurple[300],
        )
      ],
    );
  }
}


class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.deepPurple,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.deepPurple[100],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.deepPurple[200],
          ),
        )
      ],
    );
  }
}


class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(16),
      child: Icon(
        Icons.favorite,
        size: 64,
        color: Colors.white,
      ),
    );
  }
}



