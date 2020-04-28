{Написать программу, которая иллюстрирует работу метода Шелла
с одной из формул вычисления шага сортировки:
в) 2k - 1;}
unit Uex7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    inputPnl: TGroupBox;
    btnPanel: TPanel;
    memoPnl: TPanel;
    inputMemo: TMemo;
    checkBtn: TButton;
    clearBtn: TButton;
    resulPnl: TGroupBox;
    resultMemo: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure ApplicationIdle(Sender: TObject; var done: Boolean);
    procedure MainBtnClick(Sender: TObject);
    procedure edtInputKeyPress(Sender: TObject; var Key: Char);
    procedure clearBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Usort;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Application.OnIdle:=ApplicationIdle;
end;

procedure  TForm1.ApplicationIdle(Sender: TObject; var done: Boolean);
var isNotEmpty: Boolean;
begin
  isNotEmpty:=inputMemo.Text <> '';
  clearBtn.Enabled:=isNotEmpty;
  checkBtn.Enabled:=isNotEmpty;
end;

Function NextWord(str:string; var i:integer):string;
var
  len:integer;
begin
  len:=length(str);
  //пропуск пробелов
  while (i<=len) and (str[i]=' ') do
    inc(i);
  //формирование слова
  result:='';
  while (i<=len) and (str[i]<>' ') do
    begin
      result:=result+str[i];
      inc(i);
    end;
end;

procedure TForm1.MainBtnClick(Sender: TObject);
var
  i,j,k,cnt,code:integer;
  mas:Tmas;
  s,st:string;
  strings:TStringList;
begin
  resultMemo.lines.clear;
  cnt:=0;
  for i:=0 to inputMemo.lines.Count-1 do
    begin
      k:=1;
      if trim(inputMemo.Lines[i])<>'' then
        while k<=length(trim(inputMemo.Lines[i])) do
          begin
            val(NextWord(inputMemo.Lines[i],k),mas[cnt+1],code);
            inc(cnt);
          end
    end;
  strings:=TStringList.Create;
  st:='';
  strings.Add('Исходный массив: ');
  for j:=1 to cnt do
    begin
      st:=st+intToStr(mas[j])+' ';
    end;
  strings.Add(st);
  sort(strings,mas,cnt );
  st:='';
  strings.Add('Результат: ');
  for j:=1 to cnt do
    begin
      st:=st+intToStr(mas[j])+' ';
    end;
  strings.Add(st);
  resultMemo.Lines.AddStrings(strings);
end;

procedure TForm1.edtInputKeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in['0'..'9']) and (Ord(Key)>32) then
     Key:=#0;
end;

procedure TForm1.clearBtnClick(Sender: TObject);
begin
  resultMemo.lines.clear;
  inputMemo.lines.clear;
end;

end.
