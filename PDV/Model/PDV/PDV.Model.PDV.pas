unit PDV.Model.PDV;

interface

uses
  PDV.Model.PDV.Interfaces, PDV.Model.PDV.Metodos.Interfaces;

type

  TModelPDV = class(TInterfacedObject, iModelPDV, iModelPDVMetodos)
  private
    FMetodos: iModelPDVMetodosFactory;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelPDV;
    function Metodos: iModelPDVMetodos;

    { Metodos }
    function Login: iModelPDVMetodosLogin;

  end;

implementation

uses
  PDV.Model.PDV.Metodos.Factory;

{ TModelPDV }

constructor TModelPDV.Create;
begin
  FMetodos := TModelPDVMetodosFactory.New;
end;

destructor TModelPDV.Destroy;
begin

  inherited;
end;

function TModelPDV.Login: iModelPDVMetodosLogin;
begin
  Result := FMetodos.Login(Self);
end;

function TModelPDV.Metodos: iModelPDVMetodos;
begin
  Result := Self;
end;

class function TModelPDV.New: iModelPDV;
begin
  Result := Self.Create;
end;

end.
