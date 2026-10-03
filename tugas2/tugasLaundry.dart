void main () {
  double berat = 1;
  int tarif = 7000;

  if(berat <2){
    print("Berat kurang dari 2 kg");
  }
  else{
    print("Berat 2 kg atau lebih");
  }
  
  //jika berat kurang dari 2 kg, maka berat yang dihitung adalah 2 kg
  double beratHitung = berat < 2 ? 2 :berat;

  //menghitung harga awal
  double total = beratHitung * tarif;
  print("Berat yang dihitung: $beratHitung kg");
  print("Tarif: Rp $tarif");
  
 String layanan = "Express"; 
 switch (layanan) {
   case "Reguler":
      print("Layanan Reguler");
      break;
   case "Express":
   total = total * 0.5;
     print("Layanan Express +50%");
   default:
     print("Layanan tidak tersedia");
 }
 print("Total: Rp $total");
}