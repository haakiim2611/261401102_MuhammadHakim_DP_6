program KalkulatorSederhana;
uses crt;

var
  pilihan: Integer;
  angka1, angka2, hasil: Real;
  bilangan1, bilangan2: LongInt;
  ulang: Char;

begin
    clrscr;
  //Gunakan Repeat dan Pilih Macam Pengoperasian
  repeat
    WriteLn('=== Kalkulator Sederhana ===');
    WriteLn('1. Penjumlahan');
    WriteLn('2. Pengurangan');
    WriteLn('3. Perkalian');
    WriteLn('4. Pembagian Real');
    WriteLn('5. DIV & MOD');
    Write('Pilih operasi (1-5): ');
    ReadLn(pilihan);

    //Gunakan Case Of
    case pilihan of
      1:
        begin
          Write('Masukkan angka pertama: ');
          ReadLn(angka1);
          Write('Masukkan angka kedua: ');
          ReadLn(angka2);
          hasil := angka1 + angka2;
          WriteLn('Hasil penjumlahan: ', hasil:0:0);
        end;
      2:
        begin
          Write('Masukkan angka pertama: ');
          ReadLn(angka1);
          Write('Masukkan angka kedua: ');
          ReadLn(angka2);
          hasil := angka1 - angka2;
          WriteLn('Hasil pengurangan: ', hasil:0:0);
        end;
      3:
        begin
          Write('Masukkan angka pertama: ');
          ReadLn(angka1);
          Write('Masukkan angka kedua: ');
          ReadLn(angka2);
          hasil := angka1 * angka2;
          WriteLn('Hasil perkalian: ', hasil:0:0);
        end;
      4:
        begin
          Write('Masukkan angka pertama: ');
          ReadLn(angka1);
          Write('Masukkan angka kedua: ');
          ReadLn(angka2);
          if angka2 = 0 then
            WriteLn('Error: pembagian dengan nol tidak dapat dilakukan.')
          else
          begin
            hasil := angka1 / angka2;
            WriteLn('Hasil pembagian: ', hasil:0:0);
          end;
        end;
      5:
        begin
          Write('Masukkan bilangan bulat pertama: ');
          ReadLn(bilangan1);
          Write('Masukkan bilangan bulat kedua: ');
          ReadLn(bilangan2);
          if bilangan2 = 0 then
            WriteLn('Error: DIV dan MOD dengan nol tidak dapat dilakukan.')
          else
          begin
            WriteLn('Hasil DIV: ', bilangan1 div bilangan2);
            WriteLn('Hasil MOD: ', bilangan1 mod bilangan2);
          end;
        end;
    else
      WriteLn('Pilihan tidak valid. Silakan pilih angka 1 sampai 5.');
    end;

    Write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    ReadLn(ulang);
  until (ulang = 'T') or (ulang = 't');
end.