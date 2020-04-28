{Ќаписать программу, котора€ иллюстрирует работу метода Ўелла
с одной из формул вычислени€ шага сортировки:
в) 2k - 1;}
unit USort;

interface

uses
  Classes;

  const
    N = 100;

  type
      TMas = Array[1 .. N] Of integer;

  procedure sort(var Strings : TStringList; var arr:TMas;cnt:integer);

implementation

function IntToStr(k:integer):string;
begin
  str(k,result);
end;

function CountStep(j:integer):Integer;
var i,st:Integer;
begin
  st:=1;
  for i:=1 to j do
    st:=2*st;
  Result:=st - 1;
end;

procedure sort(var Strings : TStringList; var arr:TMas;cnt:integer);
var
  i,j,k,step,p,l,T,el:Integer;
  s:string;
begin
  T:=Trunc(Ln(Cnt)/(Ln(2)));
  for j:=T downto 1 do
    begin
      step:=CountStep(j);
      for p:=1 to step do
        begin
          i:=step+p;
          while i<=Cnt do
            begin

              el:=arr[i];
              l:=i-step;
              while (l>=1) and (el<arr[l]) do
                begin
                
                  s:='';
            
                  Strings.Add('Ёлемент ' + IntToStr(arr[l]) + ' становитс€ на место элемента ' + IntToStr(arr[l+step]));

                  arr[l+step]:=arr[l];
                  for k:=1 to cnt do
                    s:=s+IntToStr(arr[k])+' ';
                  Strings.Add(s);
                  l:=l-step;
                end;

              if el<>arr[l+step] then
                begin
                  s:='';
                  Strings.Add('Ёлемент ' + IntToStr(el) + ' становитс€ на место элемента ' + IntToStr(arr[l+step]));
                  arr[l+step]:=el;
                  for k:=1 to cnt do
                      s:=s+IntToStr(arr[k])+' ';
                  Strings.Add(s);
                end;

              i:=i+step;
            end;
        end;
    end;
end;

end.
