unit PDV.Model.Usuario.Factory.Interfaces;

interface

uses
  PDV.Model.Usuario.Interfaces, PDV.Model.Usuario.Tipos.Interfaces;

type

  iModelUsuarioFactory = interface
    ['{BC00A457-ABAB-4E4D-89D1-134405EDD565}']
    function Usuario: iModelUsuario;
    function Tipos: imodelusuariotiposfactory;
  end;

implementation

end.
