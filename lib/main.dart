import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 145, 177),
        title: Text(
          "Profile Page",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.emoji_people,
          size: 25,
          color: Colors.white,
        ),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Info"),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text("For more information about me:"),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                "https://www.linkedin.com/in/shahd-alsuhaibani-220b49293?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app",
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text('ok',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 240, 145, 177),
                              )),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(
                Icons.info_outline,
                size: 25,
                color: Colors.white,
              ))
        ],
      ),
      backgroundColor: Color.fromARGB(255, 247, 212, 224),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage:
                  AssetImage("images/photo_2024-02-09_20-23-01.jpg"),
            ),
            SizedBox(height: 10),
            cardColor(
              name: 'Name \nShahd Alsuhaibani',
              color: const Color.fromARGB(255, 240, 145, 177),
              leadingIcon: const Icon(
                Icons.person,
                size: 25,
                color: Colors.white,
              ),
              trailingIcon: const Icon(
                Icons.arrow_forward,
                size: 25,
                color: Colors.white,
              ),
            ),
            cardColor(
              name: 'Phone\n0512345678',
              color: Color.fromARGB(255, 160, 69, 99),
              leadingIcon: const Icon(
                Icons.phone,
                size: 25,
                color: Colors.white,
              ),
              trailingIcon: const Icon(
                Icons.arrow_forward,
                size: 25,
                color: Colors.white,
              ),
            ),
            cardColor(
              name: 'Address\nQassim',
              color: const Color.fromARGB(255, 240, 145, 177),
              leadingIcon: const Icon(
                Icons.location_pin,
                size: 25,
                color: Colors.white,
              ),
              trailingIcon: const Icon(
                Icons.arrow_forward,
                size: 25,
                color: Colors.white,
              ),
            ),
            cardColor(
              name: 'E-Mail\nshahd1791@hotmail.com',
              color: Color.fromARGB(255, 160, 69, 99),
              leadingIcon: const Icon(
                Icons.mail,
                size: 25,
                color: Colors.white,
              ),
              trailingIcon: const Icon(
                Icons.arrow_forward,
                size: 25,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card cardColor({
    required String name,
    required Color color,
    required Icon leadingIcon,
    required Icon trailingIcon,
  }) {
    Color backgroundColor = color;
    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: () {
          backgroundColor = color;
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          // color: const Color.fromARGB(255, 240, 145, 177),
          child: ListTile(
            title: Text(
              name,
              style: TextStyle(color: Colors.white, fontFamily: 'Open Sans'),
            ),
            leading: leadingIcon,
            trailing: IconButton(
              onPressed: () {},
              icon: trailingIcon,
            ),
          ),
        ),
      ),
    );
  }
}
