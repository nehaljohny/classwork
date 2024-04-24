import 'package:classwork/MusicApp!/MusicApp1.dart';
import 'package:classwork/MusicApp!/NowPlaying.dart';
import 'package:flutter/material.dart';

class Playlist extends StatefulWidget {
  @override
  _PlaylistState createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            "Playlists",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Color(0xFFF376A1),
            ),
          ),
        ),
      ),
      body: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Add search functionality here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                    side: BorderSide(color: Color(0xFFF376A1)),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            hintStyle:
                            TextStyle(color: Color(0xFFF376A1), fontSize: 22),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        size: 40,
                        color: Color(0xFFF376A1),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  List<String> playlists = [
                    'https://c.saavncdn.com/220/Car-Music-2023-English-2023-20240315175315-500x500.jpg',
                    'https://i.scdn.co/image/ab67616d0000b2738c6346271a3b8036518f56b5',
                    'https://cdn.dribbble.com/users/2668870/screenshots/17241400/media/bcde9fc43db9b72424273a138abec75b.jpg?resize=400x0',
                    'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTkfF9Wev5L-4bTUMQ1bMYCrxgpevptdLO9Gn94P2llAnFhMNdP',
                    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT9cIdO78JUZKIuPvRoaz7h8Hu8FEp0Ioyur_554lczMIux2YPY',
                    'https://images.squarespace-cdn.com/content/v1/5d5d57d1c5261d0001977a67/9c746d49-9e7c-43e6-b18c-fa32ab398a4c/KSCo_SpotifyAlbumCover_SongsToMakeYouSmile_Shop_SqUnder250.jpg',
                    'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSXTdqPsAhA-6FAICYr_5DwAgTS1ffTqcUX9MTPYP8Lz5hDoHnr',
                    'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRVPqkTqVJo5CLoXL2mK_2XO_Xq9RFsiCiAmrGOChdtk86XO5z8',
                  ];

                  return Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Image.network(
                        playlists[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFF376A1),
        onTap: (tappedIndex) {
          if (tappedIndex == 0) {
            // Navigate to the Playlist screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Musify1()),
            );
          }else if (tappedIndex == 3) {
          // Navigate to the Playlist screen
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NowPlaying()),
          );
        };
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Search'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_add),
              label: 'Playlist'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz_outlined),
              label: 'More'
          ),
        ],
      ),
    );
  }
}
