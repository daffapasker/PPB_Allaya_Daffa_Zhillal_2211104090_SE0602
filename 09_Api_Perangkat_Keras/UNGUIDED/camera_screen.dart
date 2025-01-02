import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  Uint8List? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    _controller = CameraController(
      firstCamera,
      ResolutionPreset.high,
    );
    _initializeControllerFuture = _controller.initialize();
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _pickImageFromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      final Uint8List imageBytes = await image.readAsBytes();
      setState(() {
        _selectedImage = imageBytes;
      });
    }
  }

  Future<void> _captureImageFromCamera() async {
    try {
      await _initializeControllerFuture;

      final XFile image = await _controller.takePicture();
      final Uint8List imageBytes = await image.readAsBytes();

      setState(() {
        _selectedImage = imageBytes;
      });
    } catch (e) {
      print(e);
    }
  }

  void _clearImage() {
    setState(() {
      _selectedImage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker & Camera'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent[600],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: _selectedImage != null
                  ? Image.memory(_selectedImage!)
                  : const Text('No Image Selected',
                      style: TextStyle(fontSize: 16)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: _pickImageFromGallery,
                icon: const Icon(Icons.photo),
                label: const Text('Gallery'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent[400]),
              ),
              ElevatedButton.icon(
                onPressed: _captureImageFromCamera,
                icon: const Icon(Icons.camera_alt),
                label: const Text('Camera'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent[400]),
              ),
              ElevatedButton.icon(
                onPressed: _clearImage,
                icon: const Icon(Icons.delete),
                label: const Text('Clear'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

