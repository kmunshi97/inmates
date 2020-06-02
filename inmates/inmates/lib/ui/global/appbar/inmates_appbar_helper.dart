export 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class InmatesAppbarHelper {
  void navigateHelper(context) {
    showModalBottomSheet(
        context: context,
        isDismissible: true,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return SwitchApps();
        });
  }
}

class SwitchApps extends StatelessWidget {
  const SwitchApps();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      padding: EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 16.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return appCard(context, index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget appCard(BuildContext context, int index) {
    var appData = [
      {
        "app": "Chat",
        "buttonText": "Switch to chat",
      },
      {
        "app": "Splitwise",
        "buttonText": "Switch to splitwise",
      },
      {
        "app": "Reminders",
        "buttonText": "Switch to reminders",
      },
    ];

    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        height: MediaQuery.of(context).size.width * 0.60,
        child: Stack(
          children: <Widget>[
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.72,
                height: MediaQuery.of(context).size.width * 0.56,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                          children: [
                            TextSpan(
                              text: "Inmates ",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            TextSpan(text: "${appData.elementAt(index)["app"]}."),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.orangeAccent),
                        ),
                        color: Colors.white,
                        onPressed: () => print("jcsjdlc"),
                        child: Text("${appData.elementAt(index)["buttonText"]}"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(
                MediaQuery.of(context).size.width * 0.36 - 32,
                -32.0,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                ),
                child: Container(
                  width: 64.0,
                  height: 64.0,
                  child: Icon(
                    Icons.message,
                    color: Colors.orangeAccent,
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
