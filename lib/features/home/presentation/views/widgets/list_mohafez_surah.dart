import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:olly_el3zm/core/utlis/colors.dart';
import 'package:olly_el3zm/core/utlis/styles.dart';
import 'package:olly_el3zm/features/home/data/model/mohafez.dart';

class ListMohafezSurah extends StatefulWidget {
  const ListMohafezSurah({super.key, required this.data});
  final Reciters data;

  @override
  State<ListMohafezSurah> createState() => _ListMohafezSurahState();
}

class _ListMohafezSurahState extends State<ListMohafezSurah> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  String? _currentPlayingUrl;
  bool _isPlaying = false;
  late List<int> surahNumbers;

  @override
  void initState() {
    super.initState();

    surahNumbers = widget.data.moshaf![0].surahList!
        .split(',')
        .map((surah) => int.parse(surah))
        .toList();
  }

  void _playSurah(int surahNumber) async {
    final String? baseUrl = widget.data.moshaf![0].server;
    final String surahUrl =
        '$baseUrl${surahNumber.toString().padLeft(3, '0')}.mp3';

    if (_currentPlayingUrl == surahUrl && _isPlaying) {
      await _audioPlayer.pause();
      setState(() {
        _isPlaying = false;
      });
    } else {
      try {
        await _audioPlayer.setUrl(surahUrl);
        await _audioPlayer.play();
        setState(() {
          _currentPlayingUrl = surahUrl;
          _isPlaying = true;
        });
      } catch (e) {
        print('Audio error: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to play audio: $e')),
        );
        setState(() {
          _isPlaying = false;
        });
      }
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final moshaf = widget.data.moshaf!.first;

    return Scaffold(
      backgroundColor: Appcolors.background,
      appBar: AppBar(
        backgroundColor: Appcolors.brawn700,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Appcolors.background,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.data.name ?? '',
          style: Styles.textsty20.copyWith(color: Textcolor.white),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: surahNumbers.length,
        itemBuilder: (context, index) {
          final surahNumber = surahNumbers[index];

          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Appcolors.background,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 8,
                  color: Colors.black26,
                  offset: Offset(4, 4),
                ),
              ],
            ),
            child: ListTile(
              title: Text(
                'Surah $surahNumber',
                style: Styles.textsty20.copyWith(color: Textcolor.black),
              ),
              trailing: Icon(
                _currentPlayingUrl ==
                            '${moshaf.server}${surahNumber.toString().padLeft(3, '0')}.mp3' &&
                        _isPlaying
                    ? Icons.pause
                    : Icons.play_arrow,
                color: Appcolors.brawn700,
              ),
              onTap: () => _playSurah(surahNumber),
            ),
          );
        },
      ),
    );
  }
}
