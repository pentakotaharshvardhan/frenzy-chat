import 'package:flutter/material.dart';
import 'package:frenzy_chats/chartMessageBox.dart';

class chatScreen extends StatefulWidget {
  const chatScreen({super.key});

  @override
  State<chatScreen> createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {

  final TextEditingController _controller=new TextEditingController();
  final List<chartMessageBox> _messages=<chartMessageBox> [];

  void _handleSubmit(String text){
    _controller.clear();
    chartMessageBox message=new chartMessageBox(
        text: text
    );
    setState(() {
      _messages.insert(0, message);
    }
    );
  }

  Widget _textComposerWidget(){
    return IconTheme(
      data: IconThemeData(
        color: Colors.greenAccent,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: "Send a message"
                ),
                controller: _controller,
                onSubmitted: _handleSubmit,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                  onPressed: () => _handleSubmit(_controller.text),
                  icon: Icon(Icons.send),
             // color: Colors.greenAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_,int index) => _messages[index],
              itemCount: _messages.length,
            )
        ),
        Divider(height: 1.0,),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        )
      ],
    );
  }
}
