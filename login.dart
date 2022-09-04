/*import 'dart:html';*/

import 'package:flutter/material.dart';
/*

class MovieListView extends StatelessWidget {
  static List movies = ["top gun", "harry potter", "ddjl"];

  const MovieListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 20,
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(14)),
                    child: Text("S"),
                  ),
                ),
                trailing: Text("..."),
                title: Text(movies[index]),
                subtitle: Text("sub"),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MovieDetailView(
                            name: movies.elementAt(index),
                          )))
                },
              ),
            );
          }),
    );
  }
}

class MovieDetailView extends StatelessWidget {
  final String name;
  const MovieDetailView({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("Go back ${name}"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
*/


class MovieListView extends StatelessWidget {
  static List movies =["top gun", "mission", "lost city"];
  const MovieListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade400,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title:Text("Movies"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
            elevation: 20,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Text("S"),
                ),
              ),
              trailing: Text(" . . ."),
              title: Text(movies[index]),
              subtitle: Text("year"),
              onTap: ()=>
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MovieDetailView(
                              name: movies.elementAt(index))),
                ),
              }
            ),
          );
    }
      )
    );
  }
}

class MovieDetailView extends StatelessWidget {
  final String name;
  const MovieDetailView({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DETAILS"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade900,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text("Go Back ${name}"),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
