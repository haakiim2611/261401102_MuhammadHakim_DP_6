program jumlahharidalambulan;
uses crt;

var
  tahun, bulan, jumlahHari: Integer;
  tahunKabisat: Boolean;

begin
  clrscr;
  Write('Masukkan tahun: ');
  ReadLn(tahun);
  while tahun <= 0 do
  begin
    Write('Tahun harus lebih besar dari 0. Masukkan kembali: ');
    ReadLn(tahun);
  end;

  Write('Masukkan nomor bulan (1-12): ');
  ReadLn(bulan);
  while (bulan < 1) or (bulan > 12) do
  begin
    Write('Nomor bulan harus antara 1 dan 12. Masukkan kembali: ');
    ReadLn(bulan);
  end;

  //Tahun kabisat habis dibagi 400, atau habis dibagi 4 tetapi tidak 100
  tahunKabisat := (tahun mod 400 = 0) or
                  ((tahun mod 4 = 0) and (tahun mod 100 <> 0));

  //Menentukan jumlah hari berdasarkan nomor bulan
  case bulan of
    1, 3, 5, 7, 8, 10, 12:
      jumlahHari := 31;
    4, 6, 9, 11:
      jumlahHari := 30;
    2:
      if tahunKabisat then
        jumlahHari := 29
      else
        jumlahHari := 28;
  end;

  WriteLn('Jumlah hari pada bulan ', bulan, ' tahun ', tahun,
          ' adalah ', jumlahHari, ' hari.');
  if tahunKabisat then
    WriteLn('Tahun tersebut merupakan tahun kabisat.')
  else
    WriteLn('Tahun tersebut bukan tahun kabisat.');
end.