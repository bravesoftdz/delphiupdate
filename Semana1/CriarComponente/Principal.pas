unit Principal;

interface

Uses System.Classes;

procedure register;

type
  TNotifyEvent = procedure (Sender : TObject) of Object;


  TEventos = class(TComponent)
    private
    FNome: String;
    FStatus: TNotifyEvent;
    procedure SetNome(const Value: String);
    procedure SetStatus(const Value: TNotifyEvent);

    public
       Function TamanhoString(Value : String): Integer;
       procedure OnStatus;
    published
       property Nome : String read FNome write SetNome;
       property Status : TNotifyEvent read FStatus write SetStatus;
  end;

implementation

{ TEventos }

procedure register;
begin
    RegisterComponents('DelphiUpdate', [TEventos]);
end;


procedure TEventos.OnStatus;
begin
     if Assigned(Status) then
        Status(Self);
end;

procedure TEventos.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TEventos.SetStatus(const Value: TNotifyEvent);
begin
  FStatus := Value;
end;

function TEventos.TamanhoString(Value: String): Integer;
begin
     Nome   := Value;
     Result := Length(Value);
     OnStatus;
end;

end.
