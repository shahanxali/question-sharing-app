import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrscan/qrscan.dart' as scanner;
//import 'package:myfirstapp/model/note.dart';
//import 'package:myfirstapp/db/notes_database.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/second': (context) => const TeacherIn(),
        '/third': (context) => const StudentIn(),
      },
      title: 'QnA for students and teachers',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('QnA for students and teachers'),
          backgroundColor: Colors.green,
        ),
        body: const Center(
          child: Option1(),
        ),
      ),
    );
  }
}

class Option1 extends StatefulWidget {
  const Option1({super.key});
  @override
  State<Option1> createState() => _Option1State();
}

class _Option1State extends State<Option1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [Teacher(), Student()],
        ),
      ),
    );
  }
}

class Teacher extends StatefulWidget {
  const Teacher({super.key});
  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/second');
      },
      child: SizedBox(
        width: 100,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text("Teacher"), 
          //Text("Icons.Teacher")
          
          ],
        ),
      ),
    );
  }
}

class Student extends StatefulWidget {
  const Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/third');
      },
      child: SizedBox(
        width: 100,
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Text('Student'), 
          //Text("Icons.Student")
          ],
        ),
      ),
    );
  }
}

class StudentIn extends StatefulWidget {
  const StudentIn({super.key});

  @override
  State<StudentIn> createState() => _StudentInState();
}

class _StudentInState extends State<StudentIn> {
  String studentName = " ";

  void pressRemote() {
  
  

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student"),
        backgroundColor: Colors.green,
      ), // AppBar
      body: Container(
        margin: const EdgeInsets.all(30),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Expanded(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(), 
                  labelText: "Enter your Name"
                ),
                onChanged: (text) => setState(() {
                  studentName = text;
                }),
              ),
              Text(studentName),
            ]),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ScanQR()));
              },
              child: const SizedBox(
                height: 100,
                width: 100,
                child: Text('next!'),
            ),
            ),
          ),
          const Expanded(
            child: Text("..."),
          )
          
          

           // ElevatedButton
        ]),
        // ElevatedButton
      ),
       // Center
    ); // Scaffold
  }
  
}

class TeacherIn extends StatefulWidget {
  const TeacherIn({super.key});

  @override
  State<TeacherIn> createState() => _TeacherInState();
}

class _TeacherInState extends State<TeacherIn> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tap Me Page"),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "This is your qr code",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            QrImage(
              data: controller.text,
              version: QrVersions.auto,
              size: 200,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Question'),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('GENERATE QR')),
          ],
        ),
      ),

      // AppBar
    ); // Scaffold
  }
}

class ScanQR extends StatefulWidget {
  const ScanQR({super.key});

  @override
  State<ScanQR> createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {
  String qrCodeResult = "Not Yet Scanned";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan QR Code"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Message displayed over here
            const Text(
              "Result",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              qrCodeResult,
              style: const TextStyle(
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),

            //Button to scan QR code
            TextButton(
              onPressed: () async {
                String? codeSanner =
                    await scanner.scan(); //barcode scanner
                setState(() {
                  qrCodeResult = codeSanner!;
                });
              },
              //Button having rounded rectangle border

              child: const Text(
                "Open Scanner",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}












