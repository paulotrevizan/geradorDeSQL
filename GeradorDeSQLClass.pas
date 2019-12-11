unit GeradorDeSQLClass;

interface

uses
  Classes, SysUtils;

type
  TGeradorDeSQLClass = class
  private
    FListaDeColunas: TStringList;
    FListaDeTabelas: TStringList;
    FListaDeCondicoes: TStringList;
  public
    constructor Create;
    destructor Destroy; override;
    function AdicionarColuna(Coluna: String): String;
    function AdicionarTabela(Tabela: String): String;
    function AdicionarCondicao(Condicao: String): String;
    function GerarSQL: String;
  end;


implementation

{ TGeradorDeSQLClass }

function TGeradorDeSQLClass.AdicionarColuna(Coluna: String): String;
begin
  FListaDeColunas.Add(Coluna);
end;

function TGeradorDeSQLClass.AdicionarCondicao(Condicao: String): String;
begin
  FListaDeCondicoes.Add(Condicao);
end;

function TGeradorDeSQLClass.AdicionarTabela(Tabela: String): String;
begin
  FListaDeTabelas.Add(Tabela);
end;

constructor TGeradorDeSQLClass.Create;
begin
  FListaDeColunas := TStringList.Create;
  FListaDeTabelas := TStringList.Create;
  FListaDeCondicoes := TStringList.Create;

  FListaDeColunas.Delimiter := #13;
  FListaDeTabelas.Delimiter := #13;
  FListaDeCondicoes.Delimiter := #13;

  Flistadecolunas.StrictDelimiter := True;
end;

destructor TGeradorDeSQLClass.Destroy;
begin
  if (FListaDeColunas <> nil) then
    FreeAndNil(FListaDeColunas);

  if (FListaDeTabelas <> nil) then
    FreeAndNil(FListaDeTabelas);

  if (FListaDeCondicoes <> nil) then
    FreeAndNil(FListaDeCondicoes);

  inherited;
end;

function TGeradorDeSQLClass.GerarSQL: String;
var
  Colunas, Tabelas, Condicoes: String;
  I: Integer;
begin
  try
    Colunas := '';
    for I := 0 to FListaDeColunas.Count -1 do
    begin
      if (Trim(Colunas) = '') then
        Colunas := 'SELECT ' + FListaDeColunas[I]
      else
        Colunas := Colunas + ', ' + FListaDeColunas[I];
    end;

    Tabelas := '';
    for I := 0 to FListaDeTabelas.Count -1 do
    begin
      if (Trim(Tabelas) = '') then
        Tabelas := 'FROM ' + FListaDeTabelas[I]
      else
        Tabelas := Tabelas + ', ' + FListaDeTabelas[I];
    end;

    Condicoes := '';
    for I := 0 to FListaDeCondicoes.Count -1 do
    begin
      if (Trim(Condicoes) = '') then
        Condicoes := 'WHERE ' + FListaDeCondicoes[I]
      else
        Condicoes := Condicoes + ' AND ' + FListaDeCondicoes[I];
    end;
  finally
    result := Colunas + #13+#10 + Tabelas + #13#10 + Condicoes;
  end;
end;

end.
