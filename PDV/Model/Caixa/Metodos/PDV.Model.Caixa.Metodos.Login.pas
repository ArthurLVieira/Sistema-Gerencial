unit PDV.Model.Caixa.Metodos.Login;

interface

uses
  PDV.Model.Caixa.Interfaces, PDV.Model.Usuario.Interfaces;

type

  TModelCaixaMetodosLogin = class(TInterfacedObject, iModelCaixaMetodosLogin)
  private
    FParent: iModelCaixa;
    FUsuario: iModelUsuario;
  public
    constructor Create(Parent: iModelCaixa);
    destructor Destroy; override;
    class function New(Parent: iModelCaixa): iModelCaixaMetodosLogin;
    function Usuario(Value: iModelUsuario): iModelCaixaMetodosLogin;
    function &End: iModelCaixaMetodos;
  end;

implementation

{ TModelCaixaMetodosLogin }

function TModelCaixaMetodosLogin.&End: iModelCaixaMetodos;
begin
  Result := FParent.Metodos;
end;

constructor TModelCaixaMetodosLogin.Create(Parent: iModelCaixa);
begin

end;

destructor TModelCaixaMetodosLogin.Destroy;
begin

  inherited;
end;

class function TModelCaixaMetodosLogin.New(Parent: iModelCaixa)
  : iModelCaixaMetodosLogin;
begin
  Result := Self.Create(Parent);
end;

function TModelCaixaMetodosLogin.Usuario(Value: iModelUsuario)
  : iModelCaixaMetodosLogin;
begin

end;

end.
