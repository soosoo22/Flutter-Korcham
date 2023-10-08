import 'package:flutter/material.dart';

class login extends StatelessWidget {
  //const login({Key? key}) : super(key: key);

  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          '로그인',
          style: TextStyle(
            color: Colors.blue[600],
          ),
        ),
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
      endDrawer: Drawer(),
      drawer: Drawer(),
      body: Builder(builder: (context) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                width: 360.0,
                height: 300.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '개인회원',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[900],
                            ),
                          ),
                          Text(
                            '단체회원',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: 330.0,
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                hintText: '아이디',
                                border: OutlineInputBorder(),
                              ),
                              controller: controller,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: '비밀번호',
                                border: OutlineInputBorder(),
                              ),
                              obscureText: true,
                              controller: controller2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(Icons.check_box),
                                  label: Text(
                                    '자동로그인',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.blue[600],
                                    ),
                                    onPressed: () {
                                      if (controller.text == 'flutter123' &&
                                          controller2.text == 'flutter') {
                                        Navigator.pushNamed(context, '/b');
                                      } else if (controller.text ==
                                              'flutter123' &&
                                          controller2.text != 'flutter') {
                                        showSnackbar(context);
                                      }
                                      else if(controller.text != 'flutter123' && controller2.text == 'flutter'){
                                        showSnackbar2(context);
                                      }
                                      else{
                                        showSnackbar3(context);
                                      }
                                    },
                                    child: Text('로그인'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('아이디 찾기'),
                Text('비밀번호 찾기'),
                Text(
                  '회원가입',
                  style: TextStyle(
                    color: Colors.blueAccent[700],
                  ),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}

void showSnackbar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('비밀번호가 일치하지 않습니다.')),
  );
}

void showSnackbar2(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('ID가 일치하지 않습니다.')),
  );
}

void showSnackbar3(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('로그인 정보가 일치하지 않습니다.')),
  );
}

