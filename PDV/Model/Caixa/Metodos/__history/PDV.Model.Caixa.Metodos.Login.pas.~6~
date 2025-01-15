unit PDV.Model.Caixa.Metodos.Login;

interface

uses
  PDV.Model.Caixa.Interfaces, PDV.Model.Usuario.Interfaces;

type

  TModelCaixaMetodosLogin = class(TInterfacedObject, iModelCaixaMetodosLogin)
  private

  public
    constructor Create(Parent: iModelCaixa);
    destructor Destroy; override;
    class function New: iModelCaixaMetodosLogin;
    function Usuario(Value: iModelUsuario): iModelCaixaMetodosLogin;
    function &End: iModelCaixa;
  end;

implementation

{ TModelCaixaMetodosLogin }

constructor TModelCaixaMetodosLogin.Create;
begin

end;

destructor TModelCaixaMetodosLogin.Destroy;
begin

  inherited;
end;

class function TModelCaixaMetodosLogin.New: iModelCaixaMetodosLogin;
begin
  Result := Self.Create;
end;

end.
