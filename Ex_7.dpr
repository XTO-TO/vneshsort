program Ex_7;

uses
  Forms,
  Uex7 in 'Uex7.pas' {Form1},
  USort in 'USort.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
