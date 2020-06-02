import './inmates_appbar_helper.dart';

class InmatesAppbar extends StatefulWidget with PreferredSizeWidget {
  final BuildContext context;
  InmatesAppbar(this.context);

  @override
  _InmatesAppbarState createState() => _InmatesAppbarState();

  @override
  get preferredSize => Size.fromHeight(64);
}

class _InmatesAppbarState extends State<InmatesAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        color: Colors.orangeAccent,
        icon: Icon(Icons.menu),
        onPressed: () => print("kjflsd"),
      ),
      title: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
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
                TextSpan(text: "chat"),
              ],
            ),
          ),
          IconButton(
            padding: EdgeInsets.only(top: 4.0),
            visualDensity: VisualDensity.compact,
            color: Colors.orangeAccent,
            icon: Icon(Icons.keyboard_arrow_down),
            onPressed: () => InmatesAppbarHelper().navigateHelper(context),
          )
        ],
      ),
      actions: <Widget>[
        IconButton(
          color: Colors.orangeAccent,
          icon: Icon(Icons.supervised_user_circle),
          onPressed: () => print("kjflsd"),
        ),
      ],
    );
  }
}
