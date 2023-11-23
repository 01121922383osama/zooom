import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../resources/jitsi_meet_methods.dart';

class NewMeatingScreenPage extends StatefulWidget {
  const NewMeatingScreenPage({super.key});

  @override
  State<NewMeatingScreenPage> createState() => _NewMeatingScreenPageState();
}

class _NewMeatingScreenPageState extends State<NewMeatingScreenPage> {
  final TextEditingController _nameController = TextEditingController();
  final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();
  bool isAudioMuted = false;
  bool isVideoMuted = false;
  void creatMeating(String roomName) {
    _jitsiMeetMethods.createMeeting(
      roomName: roomName,
      username: _nameController.text,
      isAudioMuted: !isAudioMuted,
      isVideoMuted: !isVideoMuted,
    );
  }

  final _defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Meating'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Enter Your Name:'),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey,
                  ),
                  child: TextField(
                    controller: _nameController,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      hintText: 'User Name',
                      prefixIcon: Icon(Icons.person),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Enter Room ID:'),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Pinput(
                  // defaultPinTheme: _defaultPinTheme,
                  length: 8,
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  onCompleted: (pin) => creatMeating(pin),
                ),
              ),
              const SizedBox(height: 20),
              SwitchListTile.adaptive(
                title: Row(
                  children: [
                    const Text('Audio'),
                    Icon(
                      isAudioMuted ? Icons.mic : Icons.mic_off,
                    ),
                  ],
                ),
                value: isAudioMuted,
                onChanged: (value) {
                  setState(() {
                    isAudioMuted = value;
                  });
                },
              ),
              SwitchListTile.adaptive(
                title: Row(
                  children: [
                    const Text('Video'),
                    Icon(
                      isVideoMuted ? Icons.videocam : Icons.videocam_off,
                    ),
                  ],
                ),
                value: isVideoMuted,
                onChanged: (value) {
                  setState(() {
                    isVideoMuted = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
