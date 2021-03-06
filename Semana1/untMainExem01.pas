unit untMainExem01;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ScrollBox, FMX.Memo;

type
  TConfiguracao = record
    Host : String;
    Path : String;
    Usuario : String;
    Senha   : String;
  end;

  TCaneca = class

  end;

  TGarrafa = class
    Private
      Cor : String;
      Modelo : String;
      Tampa  : String;
      Caneca : TCaneca;
    public
      constructor Create;
      destructor Destroy; override;
      procedure ArmazenarLiquido(Liquido : String);
  end;

  TRoda = class
    Tamanho : Integer;
    Material : String;
  end;

  TMotor = class
    Potencia : Integer;
    Combustivel : String;
  end;

  TCarro = class
    Cor : String;
    Marca : String;
    Modelo : String;
    Roda : TRoda;
    Motor : TMotor;
    constructor Create;
    destructor Destroy; override;
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure ExibeMemo(Configuracao: TConfiguracao);
    { Private declarations }
  public
    { Public declarations }
  end;

  TLivro = class
  public
    Titulo: String;
    Autor: String;
    function Paginacao(Pagina: Integer): String;
  end;

  TAutor = class
  public
    Livro: untMainExem01.TLivro;
  end;

  TGibi = class(TLivro)
  end;



var
  Form1: TForm1;

implementation

{$R *.fmx}

function TLivro.Paginacao(Pagina: Integer): String;
begin
end;

{ TGarrafa }

procedure TGarrafa.ArmazenarLiquido(Liquido: String);
begin
  //
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  MinhaGarrafa : TGarrafa;
begin
     MinhaGarrafa := nil;

     if Assigned(MinhaGarrafa) then
         ShowMessage('Estou Instanciado')
     Else
         MinhaGarrafa := TGarrafa.Create;
     Try
         MinhaGarrafa.Modelo := 'Vidro';
         MinhaGarrafa.Cor    := 'Vermelha';
     Finally
         FreeAndNil(MinhaGarrafa);
     End;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Configuracao : TConfiguracao;
begin
     Configuracao.Host    := 'teste';
     Configuracao.Path    := 'novo';
     Configuracao.Usuario := 'Roney';
     Configuracao.Senha   := 'Delphi';
     ExibeMemo(Configuracao);
end;

procedure TForm1.ExibeMemo(Configuracao: TConfiguracao);
begin
    Memo1.Lines.Clear;
    Memo1.Lines.Add(Configuracao.Host);
    Memo1.Lines.Add(Configuracao.Path);
    Memo1.Lines.Add(Configuracao.Usuario);
    Memo1.Lines.Add(Configuracao.Senha);
end;

constructor TGarrafa.Create;
begin
     Caneca := TCaneca.Create;
end;

destructor TGarrafa.Destroy;
begin
     FreeAndNil(Caneca);
  inherited;
end;

{ TCarro }

constructor TCarro.Create;
begin
     Roda := TRoda.Create;
     Motor := TMotor.Create;
end;

destructor TCarro.Destroy;
begin
     Motor.Free;
     Roda.Free;
  inherited;
end;

end.
