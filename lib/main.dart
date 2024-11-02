import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      
      appBar: AppBar(
        leading: null,
      ),
      
      body: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          CircleAvatar(
            radius: 40,
            backgroundColor: Color(0xFFC4EEC0),
            child: Image.asset('assets/images/capPan.jpeg'),
            //backgroundImage: AssetImage('assets/images/capPan.jpg'),
          ),
          
          SizedBox(height: 20),
          
          Text(
            'Coffeestories',
            style: 
            TextStyle(
              fontSize: 30, 
              fontWeight: FontWeight.w600,
              ),
          ),
          
          Text(
            'mark.brock@icloud.com',
            style: TextStyle(
              fontSize: 15, 
              color: Colors.grey[800],
              fontWeight: FontWeight.w400,
              ),
          ),
          
          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {},
            child: 
            Text(
              'Edit profile',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            style: 
            ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          
          SizedBox(height: 40),

          heading("Inventories"),
          
          SizedBox(height: 10),

          inventoriesCard(),

          SizedBox(height: 10),

          heading("Preferences"),

          SizedBox(height: 10),

          preferencesCard(),
        ],
      ),
    );
  }

// widgetsssss

  Widget heading(String heading){
    return Container(
      padding: EdgeInsets.only(left: 16.0),
      alignment: Alignment.centerLeft,
      child: Text(
        heading,
        style: TextStyle(
        color: Colors.grey[700],
        fontSize: 15,
        fontWeight: FontWeight.w400,
        ),
      )
    );
  }

  Widget inventoriesCard(){
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Card(
        color: Colors.grey[200],
        child: Column(
          children: [
            ListTile(
              
              leading: Container(
                width: 40,
                height:40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.storefront),
              ),
              
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('My Stores'),
                  SizedBox(width: 8),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.green[700],
                      shape: BoxShape.circle,
                    ),
                  constraints: BoxConstraints(
                    minWidth: 30,
                    minHeight: 30,
                  ),
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )
              ],
            ),
              trailing: Icon(Icons.arrow_forward, color: Colors.grey[600])
            ),
            Divider(
              color: Colors.grey[600],
              height: 1,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              leading: Container(
                width: 40,
                height:40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.support),
              ),
              title: Text('Support'),
              trailing: Icon(Icons.arrow_forward, color: Colors.grey[600]),
            )
          ]
        ),
      ),
    );
  }
  
  Widget preferencesCard(){
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        color: Colors.grey[200],
        child: Column(
          children: [
            
            //1
            ListTile(
              leading: Container(
                width: 40,
                height:40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.notifications),
              ),
              title: Text('Push notifications'),
              trailing: Switch(activeTrackColor: Colors.green[700], value: true, onChanged: (value) {}),
            ),
            
            Divider(
              color: Colors.grey[600],
              height: 1,
              indent: 10,
              endIndent: 10,
            ),
            //2
            ListTile(
              leading: Container(
                width: 40,
                height:40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.mood_rounded),
              ),
              title: Text('Face ID'),
              trailing: Switch(activeTrackColor: Colors.green[700], value: true, onChanged: (value) {}),
            ),
            
            Divider(
              color: Colors.grey[600],
              height: 1,
              indent: 10,
              endIndent: 10,
            ),
            
            //3
            ListTile(
              leading: Container(
                width: 40,
                height:40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.fiber_pin_rounded),
              ),
              title: Text('PIN Code'),
              trailing: Icon(Icons.arrow_forward, color: Colors.grey[600])
            ),
            
            Divider(
              color: Colors.grey[600],
              height: 1,
              indent: 10,
              endIndent: 10,
            ),
            
            //4
            ListTile(
              leading: Container(
                width: 40,
                height:40,
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child:  Icon(Icons.logout_outlined, color: Colors.red[900],),
              ),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.red[900]),
                ),
            )
          ],
        ),
      ),
    );
  }


}
