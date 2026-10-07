program tarifparkir;
uses crt;

var
  kodeKendaraan: char;
  lamaParkir: integer;
  tarifJamPertama, tarifPerJamBerikutnya, tarifMaksimal, totalTarif: longint;

begin
  clrscr;
  Write('Masukkan kode kendaraan (M=Mobil, K=Motor, B=Bus): ');
  ReadLn(kodeKendaraan);
  kodeKendaraan := UpCase(kodeKendaraan);

  while (kodeKendaraan <> 'M') and
        (kodeKendaraan <> 'K') and
        (kodeKendaraan <> 'B') do
  begin
    Write('Kode tidak valid. Masukkan M, K, atau B: ');
    ReadLn(kodeKendaraan);
    kodeKendaraan := UpCase(kodeKendaraan);
  end;

  Write('Masukkan lama parkir dalam jam (minimal 1): ');
  ReadLn(lamaParkir);
  while lamaParkir < 1 do
  begin
    Write('Lama parkir harus minimal 1 jam. Masukkan kembali: ');
    ReadLn(lamaParkir);
  end;

  //Menentukan tarif berdasarkan kode kendaraan menggunakan case-of
  case kodeKendaraan of
    'M':
      begin
        tarifJamPertama := 5000;
        tarifPerJamBerikutnya := 3000;
        tarifMaksimal := 30000;
      end;
    'K':
      begin
        tarifJamPertama := 2000;
        tarifPerJamBerikutnya := 1000;
        tarifMaksimal := 10000;
      end;
    'B':
      begin
        tarifJamPertama := 10000;
        tarifPerJamBerikutnya := 5000;
        tarifMaksimal := 50000;
      end;
  end;

  //lama parkir lebih dari 10 jam dikenakan tarif maksimal flat
  if lamaParkir > 10 then
    totalTarif := tarifMaksimal
  else
    totalTarif := tarifJamPertama +
                  (lamaParkir - 1) * tarifPerJamBerikutnya;

  WriteLn;
  WriteLn('Total tarif parkir: Rp', totalTarif);
end.