unit PDV.Model.PDV.Metodos.Login;

interface

uses
  PDV.Model.PDV.Interfaces, PDV.Model.Usuario.Interfaces;

type

  TModelPDVMetodosLogin = class(TInterfacedObject, iModelPDVMetodosLogin)
  private
    FParent: iModelPDV;
  public
    constructor Create(Parent: iModelPDV);
    destructor Destroy; override;
    class function New(Parent: iModelPDV): iModelPDVMetodosLogin;
    function SetOperador(Value: iModelUsuario): iModelPDVMetodosLogin;
    function &End: iModelPDVMetodos;
  end;

implementation

{ TModelPDVMetodosLogin }

function TModelPDVMetodosLogin.&End: iModelPDVMetodos;
begin
  Result := FParent.Metodos;
end;

constructor TModelPDVMetodosLogin.Create(Parent: iModelPDV);
begin

end;

destructor TModelPDVMetodosLogin.Destroy;
begin

  inherited;
end;

class function TModelPDVMetodosLogin.New(Parent: iModelPDV)
  : iModelPDVMetodosLogin;
begin
  Result := Self.Create(Parent);
end;

function TModelPDVMetodosLogin.SetOperador(
  Value: iModelUsuario): iModelPDVMetodosLogin;
begin

end;

end.
