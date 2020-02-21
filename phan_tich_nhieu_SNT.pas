
var     i,j,N,a,luu,max:integer;
        dem,g:byte;
        b:array[1..168] of integer;
        T:array[1..1000] of integer;
begin
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
        for j:=1 to 1000 do
                begin
                a:=j;
                while a <> 1 do
                        for i:=1 to g-1 do if a mod b[i]=0 then
                                begin
                                a:=a div b[i];
                                inc(T[j]);
                                end;
                end;
        readln(N);
        max:=T[1];
        for i:=2 to N do
                if T[i] > max then
                        begin
                        max:=T[i];
                        luu:=i;
                        end;
        writeln(luu);
        while luu <> 1 do
                for i:=1 to g-1 do if luu mod b[i]=0 then
                        begin
                        luu:=luu div b[i];
                        write(b[i],#32);
                        end;
        readln;
end.
