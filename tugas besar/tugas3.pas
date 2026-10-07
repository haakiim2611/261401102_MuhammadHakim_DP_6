program deretangka;
uses crt;

var
  N, kategori, angka: integer;

begin
  clrscr;
  
  write('Masukkan nilai N batas akhir: ');
  readln(N);
  
  writeln('Pilih kategori deret:');
  writeln('1: Ganjil');
  writeln('2: Genap');
  write('Masukkan pilihan (1/2): ');
  readln(kategori);
  
  writeln;
  writeln('Deret angka hasil penyaringan:');
  
  // Gunakan 'while loop' dari 1 hingga N
  angka := 0;
  while angka < N do
  begin
    angka := angka + 1; // Tambahkan 1 di awal agar tidak terjadi infinite loop saat continue
    
    
    if (kategori = 1) and (angka mod 2 = 0) then
      continue;
      
    if (kategori = 2) and (angka mod 2 <> 0) then
      continue;
      
    
    if angka mod 5 = 0 then
      continue;
      
    
    write(angka, ' ');
  end; 
end.