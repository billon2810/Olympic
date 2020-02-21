uses crt;
var     g,dem,i,j,N:integer;
        b:array[1..168] of integer;
begin
        clrscr;
        {TAO MANG CHUA CAC PHAN TU NGUYEN TO}
        g:=1;
        for i:=2 to 1000 do
                begin
                dem:=0;
                for j:=1 to i do if i mod j=0 then inc(dem);
                if dem=2 then
                        begin
                        b[g]:=i;{MANG CHUA PHAN TU NGUYEN TO}
                        inc(g);
                        end;
                end;
        {LAY N DEM CHIA LAN LUOT CHO CAC PHAN TU NGUYEN TO}
        readln(N);
        while N <> 1 do
                for i:=1 to g-1 do if N mod b[i]=0 then
                        begin
                        N:=N div b[i];
                        write(b[i],#32);
                        end;
        readln;
end.