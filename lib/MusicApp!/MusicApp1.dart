import 'package:carousel_slider/carousel_slider.dart';
import 'package:classwork/MusicApp!/Playlist.dart';
import 'package:flutter/material.dart';

import 'NowPlaying.dart';

class Song {
  final String image;
  final String name;
  final String artist;

  Song({
    required this.image,
    required this.name,
    required this.artist,
  });
}

class Musify1 extends StatefulWidget {
  @override
  State<Musify1> createState() => _Musify1State();
}

class _Musify1State extends State<Musify1> {
  List<Song> songList = [
    Song(
      image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQqP_Rp3q9W4-Dm4QAbSMsaiFFzzCjSEAtGw&s',
      name: 'Hero',
      artist: 'Taylor Swift',
    ),
    Song(
      image: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcStUbBfYRibv3XfOeORQMznzVYuMC147oInDqF34yQCgjOY66qe',
      name: 'Unholy',
      artist: 'Sam Smith, Kim Petras',
    ),
    Song(
      image:
      'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQzU4vZi1CnQ88qc6LWlSh9F-r3_7TSmq7i4GRgQ-2F5OoRkY5X',
      name: 'Lift Me Up',
      artist: 'Rihanna',
    ),
    Song(
      image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoHeQnpSBP9BFXi_CG0eqWvwvkv0gtzbL7moiCTeTnI1iibMyq',
      name: '"Depression"',
      artist: 'Dax',
    ),
    Song(
      image:
      'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSl3e76TX98HlPM1KIfJq0OjkTZ3rtO5QJJzuon2nLm6poQoeO1',
      name: "'I'm Good'",
      artist: 'David Guetta & Bebe Rexha',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Musify.',
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF376A1)),
          ),
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFFF376A1),
          onTap: (tappedIndex) {
            if (tappedIndex == 2) {
              // Navigate to the Playlist screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Playlist()),
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

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Suggested playlists',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF376A1)),
              ),
            ),
            CarouselSlider(
              items: [
                Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://c.saavncdn.com/220/Car-Music-2023-English-2023-20240315175315-500x500.jpg')),
                    )),
                Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://i.scdn.co/image/ab67616d0000b2738c6346271a3b8036518f56b5')),
                    )),
                Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://cdn.dribbble.com/users/2668870/screenshots/17241400/media/bcde9fc43db9b72424273a138abec75b.jpg?resize=400x0')),
                    )),
              ],
              options: CarouselOptions(
                height: 300,
                aspectRatio: 16 / 9,
                viewportFraction: 0.9,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: true,
                enlargeFactor: 0.001,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Recommended for you',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF376A1)),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: songList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                          image: DecorationImage(
                            image: NetworkImage(songList[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        songList[index].name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color(0xFFF376A1),
                        ),
                      ),
                      subtitle: Text(songList[index].artist),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.star_border_outlined,
                              color: Color(0xFFF376A1)),
                          SizedBox(width: 8),
                          IconButton(
                            onPressed: () {
                              // Implement download functionality
                            },
                            icon: const Icon(Icons.download_outlined,
                                color: Color(0xFFF376A1)),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                  ],
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
