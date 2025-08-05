import 'package:flutter/material.dart' ;

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Responsive UI Demo BY Chandan',
      theme: ThemeData(
      primarySwatch: Colors.amber,
      ),
      home: ResponsiveHomePage(),
    );
  }
}


class ResponsiveHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Ui Demo'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context , BoxConstraints constraints){
          if(constraints.maxWidth <600){
            return buildNarrowLayout();
          }
          else{
            return buildWideLayout();
          }
        },
      ),

    );

  }
}


Widget buildNarrowLayout(){
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlutterLogo(size: 120),
        SizedBox(height: 25),
        Text(
          'Narrow Layout',
          style: TextStyle(fontSize: 24),
        ),
        SizedBox(height: 24),
        ElevatedButton(
          onPressed: (){

          },
          child: Text('Button'),
        ),
      ],
    ),
  );
}

 Widget buildWideLayout() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(size: 120),
        SizedBox(height: 25),
        Text(
          'Wide Layout',
            style: TextStyle(fontSize: 24),
          ),
           SizedBox(height: 24),
        ElevatedButton(
          onPressed: (){

          },
          child: Text('Button'),
          ),
        ],
      ),
    );
  }

