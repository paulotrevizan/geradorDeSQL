unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfPrincipal = class(TForm)
    lbColunas: TLabel;
    meColunas: TMemo;
    lbTabelas: TLabel;
    meTabelas: TMemo;
    lbCondicoes: TLabel;
    meCondicoes: TMemo;
    btGerarSQL: TButton;
    lbSQL: TLabel;
    meSQL: TMemo;
    procedure btGerarSQLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

uses GeradorDeSQLClass;

{$R *.dfm}

procedure TfPrincipal.btGerarSQLClick(Sender: TObject);
var
  GeradorDeSQLClass: TGeradorDeSQLClass;
  I: Integer;
begin
  if (Trim(meColunas.Lines.Text) = '') then
    raise Exception.Create('Informe ao menos uma coluna!');

  if (Trim(meTabelas.Lines.Text) = '') then
    raise Exception.Create('Informe ao menos uma tabela!');

  if (Trim(meCondicoes.Lines.Text) = '') then
    raise Exception.Create('Informe ao menos uma condição!');

  try
    GeradorDeSQLClass := TGeradorDeSQLClass.Create;

    for I := 0 to meColunas.Lines.Count - 1 do
      GeradorDeSQLClass.AdicionarColuna(meColunas.Lines[I]);
    for I := 0 to meTabelas.Lines.Count - 1 do
      GeradorDeSQLClass.AdicionarTabela(meTabelas.Lines[I]);
    for I := 0 to meCondicoes.Lines.Count - 1 do
      GeradorDeSQLClass.AdicionarCondicao(meCondicoes.Lines[I]);

    meSQL.Text := GeradorDeSQLClass.GerarSQL;
  finally
    if (GeradorDeSQLClass <> nil) then
      FreeAndNil(GeradorDeSQLClass);
  end;
end;

end.
