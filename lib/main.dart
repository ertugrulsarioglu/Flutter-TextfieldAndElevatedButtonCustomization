import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var tfController = TextEditingController();
  String alinanVeri = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tfController,
                obscureText: true, //girilen karakterleri gizlemek için kullanılır
                keyboardType: TextInputType.datetime, //klavye tipi seçtik
                textAlign: TextAlign.center, //yazıyı ortaladık
                maxLength: 4, //girilecek karakter sayısını sınırladık
                style: TextStyle(color: Colors.white38),
                decoration: InputDecoration(
                  hintText: "Yazınız",
                  hintStyle: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20,
                  ),
                  labelText: "Email", //Textfielda label ekledil
                  labelStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                  ),
                  filled: true,
                  fillColor: Colors.green, //Textfieldın iiçini yeşil yaptık
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.10)), //textfieldın köşelerini ovalleştirdik
                  ),
                  prefixIcon: Icon(Icons.print), //textfielda button ekledik
                ),
              ),
            ),
            ElevatedButton(
              child: Text("Veriyi Al",style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.blue),
                ),
              ),

              onPressed: (){
                setState(() {
                  alinanVeri = tfController.text;
                });
              },
            ),
            Text("Gelen Veri : $alinanVeri",style: TextStyle(
              color: Colors.green,
              backgroundColor: Colors.red,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            ),
          ],
        ),
      ),

    );
  }
}
