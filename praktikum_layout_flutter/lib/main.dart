import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UNDIKNAS DENPASAR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image.asset(
              'assets/UNDIKNAS.png',
              height: 300,
              ),
            
            SizedBox(height: 30),

            Container(
              width: 700,
              child: TextFormField(
                style: TextStyle(
                  color: Colors.white,
                  height: 3,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  labelStyle: TextStyle(
                    fontSize: 16,
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    size: 27,
                    color: Colors.orange,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            

            SizedBox(height: 10),

            Container(
              width: 700,
              child: TextFormField(
                obscureText: _obscureText,
                style: TextStyle(
                  color: Colors.white,
                  height: 3,
                  fontSize: 16,
                ),
                // _obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontSize: 18,
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    size: 27,
                    color: Colors.orange,),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      size: 28,
                      color: Colors.white,
                    ),
                    
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    }
                  ),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
        

            SizedBox(height: 10),
            Container(
              width: 700,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 7, 70, 122),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),

            SizedBox(height : 80),
             Container(
              width: 700,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'New students ? Click here',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
             Container(
              width: 700,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot the password',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}