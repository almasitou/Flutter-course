import 'package:flutter/material.dart';

void main() {
  runApp(Downloader());
}

class Downloader extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DownloaderState();
  }
}

class _DownloaderState extends State<Downloader> {
  bool _isDownloading = false;
  double _progress = 0;

  initState() {
    super.initState();
    _isDownloading = false;
    _progress = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Downloader', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: _isDownloading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LinearProgressIndicator(value: _progress / 100),
                      Text('$_progress%'),
                      Text('Downloading...'),
                    ],
                  )
                : Text('Press button to start downloading'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _isDownloading = true;
              _progress = 0;
              _updateProgress();
            });

            // Simulate a download process
          },
          child: Icon(Icons.download, color: Colors.white),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }

  void _updateProgress() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _progress += 20;
        if (_progress < 100) {
          _updateProgress();
        } else {
          _isDownloading = false;
          _progress = 100;
        }
      });
    });
  }
}
