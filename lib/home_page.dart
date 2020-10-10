import 'package:flutter/material.dart';
import 'package:spanishaudio/number_audio.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache audioPlayer = AudioCache();
  List<NumberAudio> numberList = [
    NumberAudio('one.wav', Colors.red, 'One'),
    NumberAudio('two.wav', Colors.blue, 'Two'),
    NumberAudio('three.wav', Colors.grey, 'Three'),
    NumberAudio('four.wav', Colors.amber, 'Four'),
    NumberAudio('five.wav', Colors.green, 'Five'),
    NumberAudio('six.wav', Colors.cyan, 'Six'),
    NumberAudio('seven.wav', Colors.indigo, 'Seven'),
    NumberAudio('eight.wav', Colors.orange, 'Eight'),
    NumberAudio('nine.wav', Colors.brown, 'Nine'),
    NumberAudio('ten.wav', Colors.pink, 'Ten'),
  ];

  play(String Uri) {
    audioPlayer.play(Uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanish Number'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(image: AssetImage("images/logo.png")),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(10.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.0,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: numberList.length,
                  itemBuilder: (context, index) => SizedBox(
                    height: 50.0,
                    width: 100.0,
                    child: RaisedButton(
                      color: numberList[index].buttonColor,
                      child: Text(numberList[index].buttonText,
                      style:TextStyle(
                        fontSize: 20.0,
                        color:Colors.white,
                      )),
                      onPressed:(){
                        play(numberList[index].audioUri);
                      },
                    ),
                  ),
                ),
              ),
              Text('By Manikant Kumar',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
