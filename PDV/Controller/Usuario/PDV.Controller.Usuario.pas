unit PDV.Controller.Usuario;

interface

uses
  PDV.Controller.Usuario.Interfaces,
  PDV.Controller.Usuario.Operacoes.Interfaces, PDV.Model.Usuario.Interfaces;

type

  TControllerUsuario = class(TInterfacedObject, iControllerUsuario,
    iControllerUsuarioMetodos)
  private
    FModelUsuarioMetodos: iModelUsuarioMetodos;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerUsuario;
    function Metodos: iControllerUsuarioMetodos;
    function Operacoes: iControllerUsuarioOperacoes;

    { iControllerUsuarioMetodos }
    function Caixa: iModelUsuarioMetodos;
    function Fiscal: iModelUsuarioMetodos;
    function Gerente: iModelUsuarioMetodos;

  end;

implementation

uses
  PDV.Controller.Usuario.Operacoes, PDV.Model.Facade;

{ TControllerUsuario }

function TControllerUsuario.Caixa: iModelUsuarioMetodos;
begin

end;

constructor TControllerUsuario.Create;
begin
   FModelUsuarioMetodos := tmodelfacade.New.Usuario.Usuario;
end;

destructor TControllerUsuario.Destroy;
begin

  inherited;
end;

function TControllerUsuario.Fiscal: iModelUsuarioMetodos;
begin

end;

function TControllerUsuario.Gerente: iModelUsuarioMetodos;
begin

end;

function TControllerUsuario.Metodos: iControllerUsuarioMetodos;
begin
  Result := Self;
end;

class function TControllerUsuario.New: iControllerUsuario;
begin
  Result := Self.Create;
end;

function TControllerUsuario.Operacoes: iControllerUsuarioOperacoes;
begin
  Result := TControllerUsuarioOperacoes.New;
end;

end.
