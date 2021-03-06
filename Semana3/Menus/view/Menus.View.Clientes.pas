unit Menus.View.Clientes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, Menus.Controller.Entity.Interfaces,
  Data.DB, System.Rtti, FMX.Grid.Style,
  FMX.ScrollBox, FMX.Grid, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, Menus.Controller.Facade;

type
  TFrmCliente = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    Layout1: TLayout;
    dsListaDados: TDataSource;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FEntity : iControllerEntity;
    procedure PreencherDados;
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.fmx}

procedure TFrmCliente.FormCreate(Sender: TObject);
begin
     {TControllerListaBoxFactory.New.Clientes(Layout1).Exibir;
     FEntity :=  TControllerEntityFactory.New.Cliente;
     FEntity.Lista(dsListaDados);}
     FEntity :=  TControllerFacade.New.Entity.Entity.Cliente.Lista(dsListaDados);
     TControllerFacade.New.Menu.ListBox.Clientes(Layout1).Exibir;
end;

procedure TFrmCliente.PreencherDados;
begin
///
end;

initialization
  RegisterFmxClasses([TFrmCliente]);

end.
