unit PDV.Model.Usuario;

interface

uses
  PDV.Model.Usuario.Interfaces, PDV.Model.Usuario.Funcoes.Interfaces;

type

  TModelUsuario = class(TInterfacedObject, iModelUsuario)
  private
    FTipoUsuario: iModelUsuarioMetodos;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelUsuario;
    function Metodos(Usuario: iModelUsuarioMetodos): iModelUsuarioMetodos;
    function Funcoes: iModelUsuarioFuncoes;
  end;

implementation

uses
  PDV.Model.Usuario.Funcoes;

{ TModelUsuario }

constructor TModelUsuario.Create;
begin

end;

destructor TModelUsuario.Destroy;
begin

  inherited;
end;

function TModelUsuario.Funcoes: iModelUsuarioFuncoes;
begin
  Result := TModelUsuarioFuncoes.New(Self);
end;

function TModelUsuario.Metodos(Usuario: iModelUsuarioMetodos)
  : iModelUsuarioMetodos;
begin
  FTipoUsuario := Usuario;
  Result := FTipoUsuario;
end;

class function TModelUsuario.New: iModelUsuario;
begin
  Result := Self.Create;
end;

end.
