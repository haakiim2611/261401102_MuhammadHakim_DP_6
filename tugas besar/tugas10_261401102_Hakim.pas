program namanamahari;
uses crt;
var
  nomorHari: Integer;

begin
  clrscr;
  //Masukkan Nomor 
  Write('Masukkan nomor hari (1-7): ');
  ReadLn(nomorHari);

  case nomorHari of
    //dengan menggunakan case of, pilih opsi sesuai yang ada
    1: WriteLn('Hari Senin');
    2: WriteLn('Hari Selasa');
    3: WriteLn('Hari Rabu');
    4: WriteLn('Hari Kamis');
    5: WriteLn('Hari Jumat');
    6: WriteLn('Hari Sabtu');
    7: WriteLn('Hari Minggu');
  else
    //jika pilihan tidak ada dalam list, maka tidak valid
    WriteLn('Nomor hari tidak valid. Masukkan angka 1 sampai 7.');
  end;
end.