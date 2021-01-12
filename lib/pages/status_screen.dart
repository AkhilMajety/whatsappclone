import 'package:flutter/material.dart';
import 'package:whatsappclone/story_page_view.dart';
class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container( 
      color: Color(0xfff2f2f2),
      child: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[ 
          Card ( 
            color: Colors.white,
            elevation: 0.0,
            child: ListTile( 
              leading: Stack(
                children: <Widget>[ 
                  CircleAvatar( 
                    radius: 30,
                    backgroundImage: NetworkImage( "https://png.pngitem.com/pimgs/s/24-248235_user-profile-avatar-login-account-fa-user-circle.png"),
                  ),
                  Positioned( 
                    bottom: 0.0,
                    right: 1.0,
                    child: Container( 
                      height: 20,
                      width: 20,
                      child: Icon( 
                        Icons.add,
                        color: Colors.white,
                        size:15,
                      ),
                      decoration: BoxDecoration( 
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ],
              ),
              title: Text( 
                "My Status",
                style: TextStyle(fontWeight: FontWeight.bold),             
                 ),
                 subtitle: Text("Tap to add status update"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Viewed updates ",style:  TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
          ),
          Expanded( 
            child: Container( 
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
               child: ListTile( 
              leading: Stack(
                children: <Widget>[ 
                  CircleAvatar( 
                    radius: 30,
                    backgroundImage: NetworkImage( "https://png.pngitem.com/pimgs/s/24-248235_user-profile-avatar-login-account-fa-user-circle.png"),
                  ),
                ],
              ),
              title: Text( 
                "Akhil Majety",
                style: TextStyle(fontWeight: FontWeight.bold),             
                 ),
                 subtitle: Text("Today 20:18 PM"),
                  onTap: () => Navigator.push( 
              context,
              MaterialPageRoute(builder:  
               (context) => StoryPageView()),
            )
            ),
           

            ),
          )
        ],
      ),
    );
  }
}
