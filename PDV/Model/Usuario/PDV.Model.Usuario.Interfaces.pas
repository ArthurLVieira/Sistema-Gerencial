unit PDV.Model.Usuario.Interfaces;

interface

uses
  PDV.Model.Usuario.Metodos.Interfaces;

type

  iModelUsuario = interface
    ['{E712E7C7-929E-4CC3-BD55-DB3EE563012F}']
    function Metodos(Usuario: iModelUsuarioMetodos): iModelUsuarioMetodos;
  end;

implementation

end.
