import 'package:flutter/material.dart';


class initial extends StatelessWidget {
  const initial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blue[800],
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.supervisor_account_sharp),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              tileColor: Colors.blue[600],
              leading: Text(
                '소확행님 환영합니다.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              trailing: Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[600],
                border: Border(
                  top: BorderSide(
                    color: Colors.white24,
                  ),
                ),
              ),
              //color: Colors.blue[600],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('알림',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                          Icon(Icons.add_alert,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('설정',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                          Icon(Icons.settings,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('로그아웃',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Text(
                '접수 및 환불내역',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: () {},
            ),
            Divider(
              height: 5.0,
              color: Colors.grey[800],
            ),
            ListTile(
              leading: Text(
                '취득내역',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            Divider(
              height: 5.0,
              color: Colors.grey[800],
            ),
            ListTile(
              leading: Text(
                '시험결과',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            Divider(
              height: 5.0,
              color: Colors.grey[800],
            ),
            ListTile(
              leading: Text(
                '자격증신청',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: () {},
            ),
            Divider(
              height: 5.0,
              color: Colors.grey[800],
            ),
            ListTile(
              leading: Text(
                '상담내역',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            Divider(
              height: 5.0,
              color: Colors.grey[800],
            ),
            ListTile(
              leading: Text(
                '개인정보관리',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: () {},
            ),
            Divider(
              height: 5.0,
              color: Colors.grey[800],
            ),

          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              tileColor: Colors.blue[600],
              leading: TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/b');
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: Text(
                  'HOME',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              trailing: Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
            ListTile(
              leading: Text(
                '종목소개',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: () {},
            ),
            Divider(
              height: 5.0,
              color: Colors.grey[800],
            ),
            ListTile(
              leading: Text(
                '시험일정',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            Divider(
              height: 5.0,
              color: Colors.grey[800],
            ),
            ListTile(
              leading: Text(
                '개별접수',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: () {},
            ),
            Divider(
              height: 5.0,
              color: Colors.grey[800],
            ),
            ListTile(
              leading: Text(
                '단체접수',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: () {},
            ),
            Divider(
              height: 5.0,
              color: Colors.grey[800],
            ),
            ListTile(
              leading: Text(
                '접수내역변경/수험표',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            Divider(
              height: 5.0,
              color: Colors.grey[800],
            ),
            ListTile(
              leading: Text(
                '검정수수료반환',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
            Divider(
              height: 5.0,
              color: Colors.grey[800],
            ),
            ListTile(
              leading: Text(
                '중앙대학교한자',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: () {},
            ),
            Divider(
              height: 5.0,
              color: Colors.grey[800],
            ),
            ListTile(
              leading: Text(
                '고객센터',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: () {},
            ),
            Divider(
              height: 5.0,
              color: Colors.grey[800],
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(30.0)),
            Text(
              'Korcham Pass',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.blue[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '대한상공회의소 자격평가사업단',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(130.0, 140.0),
                      primary: Colors.red[400],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                      )),
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        size: 50.0,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '시험접수',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(130.0, 140.0),
                      primary: Colors.blue[500],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                      )),
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.perm_identity,
                        size: 50.0,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '자격증신청',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(130.0, 50.0),
                      primary: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      )),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today_rounded,
                        color: Colors.grey[800],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '시험일정',
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(130.0, 50.0),
                      primary: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      )),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.mode_edit,
                        color: Colors.grey[800],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '전국상의공지',
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(130.0, 50.0),
                      primary: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      )),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.grey[800],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '합격확인',
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(130.0, 50.0),
                      primary: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      )),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.library_add_check_outlined,
                        color: Colors.grey[800],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '접수내역확인',
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(130.0, 50.0),
                      primary: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      )),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.how_to_reg,
                        color: Colors.grey[800],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '종목소개',
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(130.0, 50.0),
                      primary: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      )),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.accessible,
                        color: Colors.grey[800],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '장애인접수   ',
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    //minimumSize: Size(10.0, 20.0),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.call,
                        size: 25.0,
                        color: Colors.grey[700],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '고객센터',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '02-2102-3600',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  width: 5.0,
                  thickness: 2.0,
                  color: Colors.black,
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.question_answer,
                        size: 30.0,
                        color: Colors.grey[700],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'FAQ',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '자주하는 질문',
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


