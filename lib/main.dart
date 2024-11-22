import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String actionaLabel = 'Belum ada aksi';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Interaction")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  actionaLabel = 'Pengguna melakukan Tap';
                });
              },
              onDoubleTap: (){
                setState(() {
                  actionaLabel = 'Pengguna melakukan Tap';
                });
              },
              onLongPress: (){
                setState(() {
                  actionaLabel = 'Pengguna melakukan Tap';
                });
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text('Aksi',style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text('Pengguna melakukan Tap'),
          ],
        ),
      ),
    );
  }
}

