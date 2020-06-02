import './login_helper.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget();

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.125,
            child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return friendCard();
              },
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Divider(
            color: Colors.orangeAccent,
            indent: 8.0,
            endIndent: 8.0,
          ),
          SizedBox(
            height: 16.0,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    height: 80.0,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 28.0,
                        backgroundColor: Colors.orangeAccent,
                        foregroundColor: Colors.white,
                        child: Icon(Icons.group),
                      ),
                      title: Text("C-401"),
                      subtitle: Text("Some message that has to be shown here."),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget friendCard() {
    return GestureDetector(
      onTap: () => friendCardOnTap(),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(32.0)),
        child: Card(
          elevation: 8.0,
          child: Image.asset(
            "assets/images/zlatan.jpg",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  friendCardOnTap() {
    showModalBottomSheet(
        context: context,
        isDismissible: true,
        isScrollControlled: true,
        enableDrag: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(32.0),
          ),
        ),
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.85,
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: <Widget>[
                ClipRRect(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(32.0)),
                  child: Image.asset(
                    "assets/images/zlatan.jpg",
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * 0.75,
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text(
                      "Zlatan Ibrahimovic",
                      style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.w800,
                        fontSize: 18.0,
                      ),
                    ),
                    subtitle: Text(
                      "Roommate",
                    ),
                    trailing: Icon(Icons.message),
                  ),
                ),
                ListTile(
                  title: Text("Something something"),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  title: Text("Something something"),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                ListTile(
                  title: Text("Something something"),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ],
            ),
          );
        });
  }
}
