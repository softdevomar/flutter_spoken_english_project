import 'package:flutter/material.dart';
import 'package:spoken_english/model/data_classs.dart';
import 'package:spoken_english/model/data_list.dart';
class Secound_page extends StatefulWidget {
  String? name;


  @override
  State<Secound_page> createState() => _Secound_pageState();

  Secound_page({this.name});
}

class _Secound_pageState extends State<Secound_page> {
  List <all_spoken> practiceusers=[];

  void initState() {
    // TODO: implement initState
    super.initState();
    practiceusers = All_dada();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.name}"),
      ),
      body: SingleChildScrollView(
        child: GridView.builder(
    itemCount: practiceusers.length,
    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 1,
    mainAxisExtent: 70,
    mainAxisSpacing: 5,
    crossAxisSpacing: 5,
    childAspectRatio: 30,
    ),
    shrinkWrap: true,
    physics: ScrollPhysics(),

    itemBuilder: (BuildContext context,int index){
      return Column(
      children: [
        Text("${practiceusers[index].english}"),
         Text("${practiceusers[index].bangla}"),
        Divider()
      ],
      );
    },),),

    );
  }
}
