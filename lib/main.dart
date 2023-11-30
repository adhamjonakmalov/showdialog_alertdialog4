import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Info(),
    );
  }
}

class Info extends StatefulWidget {
  const Info({
    super.key,
  });

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  bool all = true;
  void kk(value) {
    setState(() {
      all = value;
    });
  }

  String a = '';
  int b = 0;
  int c = 0;
  int d = 0;
  int f = 0;

  void add() {
    setState(() {
      b = b + 1;
    });
  }

  void ad() {
    setState(() {
      c = c + 1;
    });
  }

  void sd() {
    setState(() {
      d = d + 1;
    });
  }

  void ds() {
    setState(() {
      f = f + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            title: const Text(
                              'Secure Code',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            content: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'This code will expire in 10 minutes',
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                      onPressed: add,
                                      child: Text('$b'),
                                    ),
                                    ElevatedButton(
                                      onPressed: ad,
                                      child: Text('$c'),
                                    ),
                                    ElevatedButton(
                                      onPressed: sd,
                                      child: Text('$d'),
                                    ),
                                    ElevatedButton(
                                      onPressed: ds,
                                      child: Text('$f'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            actions: [
                              ElevatedButton(
                                  style: ButtonStyle(minimumSize: MaterialStatePropertyAll(Size(270, 40)), shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.blue)))),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Done'))
                            ]);
                      });
                },
                child: const Text('Dialog ')),
          ),
        ],
      ),
    );
  }
}
