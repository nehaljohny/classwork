import 'package:flutter/material.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({Key? key}) : super(key: key);

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  double _currentSliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Now playing',
            style: TextStyle(
              fontSize: 43,
              fontWeight: FontWeight.bold,
              color: Color(0xFFF376A1),
            ),
          ),
        ),
        leading: const Icon(
          Icons.keyboard_arrow_down_outlined,
          size: 48,
          color: Color(0xFFF376A1),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 8,),
              Container(
                width: 350,
                height: 400,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQRF933ycmBdfJ9HWYoKvlk_hxLj4vRuD19HqVa2cDvofpPSw4z',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // Top padding
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),

                  /// Song title and artist
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'Flowers ',
                            style: TextStyle(
                              color: Color(0xFFF376A1),
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Center(
                          child: Text(
                            'Miley Cyrus',
                            style: TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// Seek bar with time indicators
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '0:00', // Start time
                          style: TextStyle(color: Colors.white),
                        ),
                        Expanded(
                          child: Slider(
                            value: _currentSliderValue,
                            min: 0,
                            max: 100,
                            onChanged: (double value) {
                              setState(() {
                                _currentSliderValue = value;
                              });
                            },
                            activeColor: Color(0xFFF376A1),
                            inactiveColor: Colors.white,
                          ),
                        ),
                        Text(
                          '3:30', // End time
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),

                  // Playback controls
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.download_rounded,
                          color: Colors.white,
                          size: 18,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.shuffle_rounded,
                          color: Colors.white,
                          size: 18,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.skip_previous_rounded,
                          color: Colors.grey,
                          size: 48,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.pause_circle_rounded,
                            color: Color(0xFFF376A1), size: 58),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.skip_next_rounded,
                          color: Colors.grey,
                          size: 48,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.repeat_one,
                          color: Colors.white,
                          size: 18,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.star_border_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),

                  // Bottom controls
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.volume_off_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.queue_music,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Playlist ",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFF376A1),
                          ),
                        ),
                        Text(
                          " | ",
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          " Lyrics",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFFF376A1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
