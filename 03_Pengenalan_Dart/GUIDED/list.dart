void main() { 
  // Membuat fixed-length list dengan panjang 3 
  List<int> fixedList = List.filled(3, 0); // List dengan 3 elemen, semua diinisialisasi ke 0 
   
  // Mengubah elemen dalam list 
  fixedList[0] = 100; 
  fixedList[1] = 200; 
  fixedList[2] = 300; 
  
  print('Fixed Length List: $fixedList'); 
} 

void main() { 
  // Membuat growable list (panjangnya bisa berubah) 
  List<int> growableList = []; 
  
  // Menambahkan elemen baru ke dalam list 
  growableList.add(100); 
  growableList.add(200); 
  growableList.add(300); 
  
  print('Growable List setelah menambah elemen: $growableList'); 
  
  // Menambahkan lebih banyak elemen 
  growableList.add(400); 
  growableList.add(500); 
  
  print(growableList); 
  
  // Menghapus elemen dari list 
  growableList.remove(200); 
  
  print('Growable List setelah menghapus elemen: $growableList'); 
}
