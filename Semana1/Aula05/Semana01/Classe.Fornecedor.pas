unit Classe.Fornecedor;

interface

uses Classe.Pessoa;

type
  TFornecedor = class(TPessoa)
    RazaoSocial : String;
    function Tipo : String; override;
  end;

implementation

{ TFornecedor }

function TFornecedor.Tipo: String;
begin
     Result := 'Fornecedor';
end;

end.
