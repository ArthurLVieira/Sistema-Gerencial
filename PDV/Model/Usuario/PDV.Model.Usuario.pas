unit PDV.Model.Usuario;

interface

uses
  PDV.Model.Usuario.Interfaces, PDV.Model.Usuario.Metodos.Interfaces;

type

  TModelUsuario = class(TInterfacedObject, iModelUsuario)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelUsuario;
    function Metodos(Usuario: iModelUsuarioMetodos): iModelUsuarioMetodos;
  end;

implementation

{ TModelUsuario }

constructor TModelUsuario.Create;
begin

end;

destructor TModelUsuario.Destroy;
begin

  inherited;
end;

function TModelUsuario.Metodos(
  Usuario: iModelUsuarioMetodos): iModelUsuarioMetodos;
begin

end;

class function TModelUsuario.New: iModelUsuario;
begin
  Result := Self.Create;
end;

end.
