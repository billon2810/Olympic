BAI 7.1
uses crt;
var N,i:integer;dem:byte;
begin
        clrscr;
        readln(N);
        repeat
        inc(N);
        dem:=0;
        for i:=1 to N do if N mod i= 0 then inc(dem);
        until dem=2;
        writeln(N);
        readln;
end.
