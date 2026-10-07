program tokoBuku;
uses crt;

var 
    i, N, harga, total : longint;
     diskon, hargaAkhir : real;

begin 
    clrscr;

    writeln('Masukkan Jumlah Barang: ');
    readln(N);

    for i := 1 to N do 

    begin
        writeln('Masukkan Harga Barang ke-', i, ': ');
        readln(harga);

        total := total + harga;
    end;

writeln(total);

    if total < 100000 then
    diskon := 0.0
    else if (total >= 100000) and (total < 500000) then
    diskon := 0.1
    else
    diskon := 0.2;

hargaAkhir := total - (total * diskon);

writeln('Jumlah Barang: ', N, ' ,Total: ', total, ', Diskon: ', diskon * 100: 0:0,'%,',' Harga Akhir: ', hargaAkhir: 0:0);
writeln ('-- terima kasih --');

end.
