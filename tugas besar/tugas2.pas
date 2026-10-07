program sistemlogin;
uses crt;

const
  sandi_rahasia = 'utstugasnumpuk';
var
  input_password: string;
  kesempatan: integer;

begin
  clrscr;
  kesempatan := 0;

  // Menggunakan perulangan repeat-until
  repeat
    kesempatan := kesempatan + 1;
    write('Masukkan kata sandi (Kesempatan ke-', kesempatan, ' dari 3): ');
    readln(input_password);

   
    if input_password = sandi_rahasia then
    begin
      writeln;
      writeln('Login Berhasil! Selamat Datang');
      break;
    end
    
    else
    begin
      writeln('Kata sandi salah.');
    end;

    
    if kesempatan >= 3 then
    begin
      writeln;
      writeln('Akses Ditolak! Akun Terkunci.');
      break; 
    end;

    
  until false; 

end.