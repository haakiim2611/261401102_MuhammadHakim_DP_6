program penilaianmatkul;
uses crt;

var
  tugas, uts, uas, kehadiran, nilai_akhir: real;
  indeks: char;
  status: string;

begin
  clrscr;
  writeln('-- program penilaian matkul --');
  
  
  write('Masukkan Nilai Tugas (0-100)      : ');
  readln(tugas);
  write('Masukkan Nilai UTS (0-100)        : ');
  readln(uts);
  write('Masukkan Nilai UAS (0-100)        : ');
  readln(uas);
  write('Masukkan Persentase Kehadiran (%) : ');
  readln(kehadiran);

  // Hitung Nilai Akhir (Tugas 30%, UTS 30%, UAS 40%) 
  nilai_akhir := (0.30 * tugas) + (0.30 * uts) + (0.40 * uas);

  
  if nilai_akhir >= 85 then
    indeks := 'A'
  else if nilai_akhir >= 75 then
    indeks := 'B'
  else if nilai_akhir >= 60 then
    indeks := 'C'
  else if nilai_akhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  
  if (nilai_akhir >= 60) and (kehadiran >= 80) then
    status := 'LULUS'
  else
    status := 'TIDAK LULUS';

  writeln('-- hasil penilaian --');
  writeln('Nilai Tugas       : ', tugas:0:0);
  writeln('Nilai Akhir       : ', nilai_akhir:0:0);
  writeln('indeks huruf      : ', indeks);
  writeln('Kehadiran         : ', kehadiran:0:0, '%');
  writeln('Status Kelulusan  : ', status);

  
end.