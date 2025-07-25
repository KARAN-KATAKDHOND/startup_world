import 'package:flutter/material.dart';
class drawer extends StatelessWidget{
  const drawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 2, 1, 64),
                ),
                child: Row(children: [
                  
          ],),
              ),
              ListTile(
                leading: Icon(Icons.home_filled),
                title: Text('Home'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.get_app_rounded), //to change later on
                title: Text('Technologies'),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(Icons.label),
                title: Text('Our Domains'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.cast_for_education),
                title: Text('Training'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.work),
                title: Text('Internship'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text('Contact Us'),
                onTap: () {},
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 40,
                  ),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: Text('Register'),
              ),
            //trial code
            /*Spacer(),
            Divider(),
            ListTile(
              leading: Icon(Icons.close),
              onTap: (){},
              title: Text('close'),
            )
*/
            ],
          ),
        );
}
}