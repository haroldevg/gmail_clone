import 'dart:math';

import 'package:flutter/material.dart';

class GmailScreen extends StatefulWidget {
  @override
  _GmailScreenState createState() => _GmailScreenState();
}

class _GmailScreenState extends State<GmailScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.menu),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text("Buscar en el correo",style: TextStyle(
                        color: Colors.grey
                      ),),
                    ),
                    Container(
                      decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.brown),
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text("H",style: TextStyle(color: Colors.white,fontSize: 16),),
                    )
                  ],
                ),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      blurRadius: 1,
                      offset: new Offset(0, 1)
                    )
                  ]
                ),
              ),
              Padding(
                child:
                Text("PRINCIPAL",style: TextStyle(
                  color: Colors.black54,
                  letterSpacing: 0.9,
                  fontWeight: FontWeight.w400,
                  fontSize: 13
                ),),
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              ),
              ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                  dense: true,
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      index % 2  == 0 ?  Container(
                        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.primaries[Random().nextInt(Colors.primaries.length)]),
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text("A",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ) : Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  "https://i.pravatar.cc/50?img=$index"
                                )
                            ),
                            shape: BoxShape.circle
                        ),
                        width: 40,
                        height: 40,
                      )
                    ],
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "10 dic",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                      Icon(Icons.star_border)
                    ],
                  ),
                  title: Text("Título",style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16
                  ),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Subtitulo $index",
                        style: TextStyle(fontWeight: FontWeight.w700,fontSize: 13,color: Colors.black),
                      ),
                      Text("Descripcion $index",maxLines: 1,overflow: TextOverflow.ellipsis,)
                    ],
                  ),
                );
              },itemCount: 20,physics: NeverScrollableScrollPhysics(),shrinkWrap: true,)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
        child: Icon(Icons.add,size: 40,),
        backgroundColor: Colors.white,
      ),
    );
  }
}
