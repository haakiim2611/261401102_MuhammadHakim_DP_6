program HitungGajiKaryawan;

var
  golongan: Char;
  totalJamKerja: Real;
  gajiPokok, lembur, bonus, totalGaji: Real;

begin
  WriteLn('-- hitung gaji karyawan --');

  repeat
    Write('Masukkan golongan (A/B/C): ');
    ReadLn(golongan);
    golongan := UpCase(golongan);
    if not (golongan in ['A', 'B', 'C']) then
      WriteLn('Golongan tidak valid. Masukkan A, B, atau C.');
  until golongan in ['A', 'B', 'C'];

  repeat
    Write('Masukkan total jam kerja per minggu: ');
    ReadLn(totalJamKerja);
    if totalJamKerja < 0 then
      WriteLn('Jam kerja tidak boleh kurang dari 0.');
  until totalJamKerja >= 0;
    // Menentukan gaji pokok berdasarkan golongan
  case golongan of
    'A': gajiPokok := 1500000;
    'B': gajiPokok := 2000000;
    'C': gajiPokok := 2500000;
  end;

  if totalJamKerja > 40 then
    lembur := (totalJamKerja - 40) * 20000
  else
    lembur := 0;

  if (golongan = 'C') and (totalJamKerja > 50) then
    bonus := 100000
  else
    bonus := 0;

  totalGaji := gajiPokok + lembur + bonus;

  writeln('rincian gaji');
  WriteLn('Golongan        : ', golongan);
  WriteLn('Gaji Pokok      : Rp', gajiPokok:0:0);
  WriteLn('Lembur          : Rp', lembur:0:2);
  WriteLn('Bonus           : Rp', bonus:0:0);
  WriteLn('Total Gaji Akhir: Rp', totalGaji:0:2);
end.