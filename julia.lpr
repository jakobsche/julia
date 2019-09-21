program Julia;

type
  tst = string[80]; {first 80 characters of a line in a text file}

var
  f: Text;
  str: tst;
  k: Integer;
  p: Integer;

procedure test2(str: tst; var k, p: Integer);
var
  j: Integer;
  S1, S2: string[2];
  S3: string[3];
  S4, S5: string[4];
  S6: string[5];
begin
  k := 0;
  S1 := Copy(str, 1, 2);
  S2 := Copy(str, Length(str) - 1, 2);
  if S1 = 'i ' then k := k + 1;
  if S2 = ' i' then k := k + 1;
  for j := 1 to Length(str) - 2 do begin
    S3 := Copy(str, j, 3);
    if S3 = ' i ' then k := k + 1;
  end;
  p := 0;
  S4 := Copy(str, 1, 4);
  S5 := Copy(str, Length(str) - 3, 4);
  if S4 = 'and ' then p := p + 1; if S5 = ' and' then p := p + 1;
  for j := 1 to Length(str) - 5 do begin
    S6 := Copy(str, j, 5);
    if S6 = ' and ' then p := p + 1;
  end;
end;

begin
  Assign(f, 'D:\Fl_21_2019\YYI\mytext.txt');
  Reset(f);
  while not EoF(f) do begin
    ReadLn(f, str);
    test2(str, k, p);
    WriteLn('k = ', k, ', p = ', p);
  end;
  Close(f)
end.

