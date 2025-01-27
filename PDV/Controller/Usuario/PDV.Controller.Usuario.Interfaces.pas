unit PDV.Controller.Usuario.Interfaces;

interface

uses
  PDV.Model.Usuario.Interfaces, PDV.Controller.Usuario.Operacoes.Interfaces;

type
  iControllerUsuarioMetodos = interface;

  iContrllerUsuario = interface
    ['{C3B04A66-5562-42C0-A5CB-B6A9822F6495}']
    function Metodos: iControllerUsuarioMetodos;
    function Operacoes: iControllerUsuarioOperacoes;
  end;

  iControllerUsuarioMetodos = interface
    ['{2D3FF670-7E33-41ED-A149-6EF8CDC8836E}']
    function Caixa: iModelUsuarioMetodos;
    function Fiscal: iModelUsuarioMetodos;
    function Gerente: iModelUsuarioMetodos;
  end;

implementation

end.
