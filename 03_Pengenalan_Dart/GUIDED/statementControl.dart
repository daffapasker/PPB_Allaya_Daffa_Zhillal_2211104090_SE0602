void main() {
   var openHours = 8; 
  var closedHours = 21; 
  var now = 17; 
  
  if (now > openHours && now < closedHours) { 
    print("Oooyy, wis bukak kie ndan !"); 
  } else { 
    print("Ngapurane yak, anu wis tutup je.."); 
  } 
}


void main() { 
 var day = 'b'; // Misalkan 1 = Senin, 2 = Selasa, dst. 
  
  switch (day) { 
    case 'a': 
      print("nilai sangat bagus"); 
      break; 
    case 'b': 
      print("nilai bagus"); 
      break; 
    case 'c': 
      print("nilai cukup"); 
      break; 
    default: 
      print("nilai tidak tersedia"); 
  } 

}
