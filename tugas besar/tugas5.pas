program rekapitulasinilaimahasiswa;
uses crt;

var
  jumlahMahasiswa, jumlahTugas: Integer;
  mahasiswa, tugas: Integer;
  nilai, totalNilai, rataRata: Real;
  jumlahLulus, jumlahTidakLulus: Integer;

begin
  clrscr;

 
  Write('Masukkan jumlah mahasiswa (M): ');
  ReadLn(jumlahMahasiswa);
  while jumlahMahasiswa <= 0 do
  begin
    Write('Jumlah mahasiswa harus lebih dari 0. Masukkan kembali: ');
    ReadLn(jumlahMahasiswa);
  end;


  Write('Masukkan jumlah nilai tugas (N): ');
  ReadLn(jumlahTugas);
  while jumlahTugas <= 0 do
  begin
    Write('Jumlah tugas harus lebih dari 0. Masukkan kembali: ');
    ReadLn(jumlahTugas);
  end;

  //Menginisialisasi penghitung kelulusan sebelum memproses data
  jumlahLulus := 0;
  jumlahTidakLulus := 0;

  //Perulangan luar memproses setiap mahasiswa
  for mahasiswa := 1 to jumlahMahasiswa do
  begin
    WriteLn;
    WriteLn('Input nilai mahasiswa ke-', mahasiswa, ':');
    totalNilai := 0;

    //Perulangan dalam meminta nilai dari setiap tugas mahasiswa
    for tugas := 1 to jumlahTugas do
    begin
      Write('  Nilai tugas ke-', tugas, ': ');
      ReadLn(nilai);
      //Menambahkan nilai tugas ke total nilai mahasiswa
      totalNilai := totalNilai + nilai;
    end;

    
    rataRata := totalNilai / jumlahTugas;
    Write('Rata-rata mahasiswa ke-', mahasiswa, ': ', rataRata:0:2);

    
    if rataRata >= 65 then
    begin
      WriteLn(' - LULUS');
      jumlahLulus := jumlahLulus + 1;
    end
    else
    begin
      WriteLn(' - TIDAK LULUS');
      jumlahTidakLulus := jumlahTidakLulus + 1;
    end;
  end;

  
  WriteLn;
  WriteLn('Rekapitulasi Hasil Nilai Mahasiswa');
  WriteLn('Total mahasiswa LULUS: ', jumlahLulus);
  WriteLn('Total mahasiswa TIDAK LULUS: ', jumlahTidakLulus);
end.