import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.teal],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            tileMode: TileMode.repeated
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Header text
            _textHeader(),
            // Welcome text
            _textWelcome(),
            // Button start
            _buttonStart()
          ],
        ),
      ),
    );
  }

  // Header Widget
  Widget _textHeader(){
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed:(){}, 
            icon: const Icon(Icons.help, color: Colors.white,)
          ),
          TextButton(
            onPressed: (){}, 
            child: const Text(
              'ช่วยเหลือ', 
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'NotoSansThai',
              ),
            ),
          ),
          const Text('|', style: TextStyle(color: Colors.white)),
          TextButton(
            onPressed: (){}, 
            child: const Text(
              'ภาษาไทย', 
              style: TextStyle(
                color: Colors.white, 
                fontWeight: FontWeight.bold,
                fontFamily: 'NotoSansThai',
              ),
            ),
          )
        ],
      ),
    );
  }

  // Welcome Widget
  Widget _textWelcome(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'สวัสดี', 
          style: TextStyle(
            fontSize: 36, 
            color: Colors.white,
            fontFamily: 'NotoSansThai'
          ),
        ),
        Text(
          'ยินดีต้อนรับสู่บริการโมบายแบงก์กิ้ง', 
          style: TextStyle(
            fontSize: 24, 
            color: Colors.white,
            fontFamily: 'NotoSansThai'
          ),
        )
      ],
    );
  }

  // Button Start Widget
  Widget _buttonStart(){
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 40.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: (){},
          child: const Text('เริ่มต้นใช้งาน', 
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'NotoSansThai',
              fontWeight: FontWeight.bold
            )
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20)),
            padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
          ),
        ),
      ),
    );
  }

} // class