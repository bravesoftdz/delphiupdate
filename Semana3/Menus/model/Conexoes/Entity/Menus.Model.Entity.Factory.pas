unit Menus.Model.Entity.Factory;

interface

uses Menus.Model.Entity.Interfaces, Menu.Model.Conexoes.Interfaces,
  Menus.Model.Entity.Produtos, Menus.Model.Entity.Clientes;

type
  TModelEntityFactory = class(TInterfacedObject, iModelEntityFactory)
       private
       public
         constructor Create;
         destructor Destroy; override;
         class function New: iModelEntityFactory;
         function Produtos(DataSet : iModelDataSet): iModelEntity;
         function Clientes(DataSet : iModelDataSet): iModelEntity;
  end;

implementation

{ TModelEntityFactory }

function TModelEntityFactory.Clientes(DataSet: iModelDataSet): iModelEntity;
begin
     Result := TModelEntityCliente.New(DataSet);
end;

constructor TModelEntityFactory.Create;
begin

end;

destructor TModelEntityFactory.Destroy;
begin

  inherited;
end;

class function TModelEntityFactory.New: iModelEntityFactory;
begin
     Result := Self.Create;
end;

function TModelEntityFactory.Produtos(DataSet: iModelDataSet): iModelEntity;
begin
     Result := TModelEntityProdutos.New(DataSet);
end;

end.
