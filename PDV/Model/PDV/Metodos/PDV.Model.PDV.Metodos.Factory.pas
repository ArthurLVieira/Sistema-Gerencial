unit PDV.Model.PDV.Metodos.Factory;

interface

uses
  PDV.Model.PDV.Metodos.Interfaces, PDV.Model.PDV.Interfaces;

type

  TModelPDVMetodosFactory = class(TInterfacedObject, iModelPDVMetodosFactory)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelPDVMetodosFactory;
    function Login(Parent: iModelPDV): iModelPDVMetodosLogin;
  end;

implementation

uses
  PDV.Model.PDV.Metodos.Login;

{ TModelPDVMetodosFactory }

constructor TModelPDVMetodosFactory.Create;
begin

end;

destructor TModelPDVMetodosFactory.Destroy;
begin

  inherited;
end;

function TModelPDVMetodosFactory.Login(Parent: iModelPDV)
  : iModelPDVMetodosLogin;
begin
  Result := TModelPDVMetodosLogin.New(Parent);
end;

class function TModelPDVMetodosFactory.New: iModelPDVMetodosFactory;
begin
  Result := Self.Create;
end;

end.
