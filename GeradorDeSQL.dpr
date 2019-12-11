program GeradorDeSQL;

uses
  Forms,
  Principal in 'Principal.pas' {fPrincipal},
  GeradorDeSQLClass in 'GeradorDeSQLClass.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
