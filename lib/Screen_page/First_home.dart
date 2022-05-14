import 'package:flutter/material.dart';
import 'package:spoken_english/Screen_page/Secound_page.dart';
import 'package:spoken_english/model/data_classs.dart';
import 'package:spoken_english/model/data_list.dart';
class First_home extends StatefulWidget {
  const First_home({Key? key}) : super(key: key);

  @override
  State<First_home> createState() => _First_homeState();
}

class _First_homeState extends State<First_home> {
  List <all_spoken> practiceusers=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    practiceusers = All_dada();
  }
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Spoken English",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      drawer: Drawer(

        child: ListView(

          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(

              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text('Tanvir Ahmed',style: TextStyle(fontSize: 30),),
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Contact'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Rate Us'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Shere App'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: GridView.builder(
            itemCount: practiceusers.length,
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisExtent: 50,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 30,
            ),
            shrinkWrap: true,
            physics: ScrollPhysics(),

            itemBuilder: (BuildContext context,int index){
              return InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Secound_page(
                    name: practiceusers[index].list_name,
                  ) ));
                },
                child: Card(

                  child: ListTile(
                      trailing: Text("click",
                        style: TextStyle(
                            color: Colors.green,fontSize: 15),),
                      title:Text("${practiceusers[index].list_name}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ),
                ),
              );
            }),
      ),
    );
  }
}
