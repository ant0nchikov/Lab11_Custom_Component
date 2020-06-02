unit CrazyLabel;


interface

uses
  Windows, Messages, SysUtils, Classes, Controls, StdCtrls,Graphics,

  ExtCtrls, StrUtils;// добавляем


type
  TCrazyLabel = class(TCustomLabel)
  private
    FTimer: TTimer;
    FFontColor:TColor;
    FOnFontChange: TNotifyEvent;
    procedure MoveText(Sender: TObject);
    function GetSpeed: Integer;
    procedure SetSpeed(MSec: Integer);

  protected
  procedure SetFontColor (AValue:TColor); virtual;
    function GetFontColor:TColor; virtual;
    Procedure Paint; Override;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property AutoSize;
    property Alignment;
    property Transparent;
    property Wordwrap;
    property Caption;
    property Font;
    property Speed: Integer read GetSpeed write SetSpeed;
    property FontColor:TColor read GetFontColor write SetFontColor;
    property OnFontChange:TNotifyEvent read FOnFontChange write FOnFontChange;
end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [TCrazyLabel]);
end;

constructor TCrazyLabel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FTimer := TTimer.Create(Self);
  FTimer.OnTimer := MoveText;
  FTimer.Interval :=45;
  FTimer.Enabled := True;
  Font.Name:='Arial';
  Font.Size:=30;
  Caption:=' Crazy LABEL!!! ';
end;

procedure TCrazyLabel.MoveText(Sender: TObject);
begin
  Caption := RightStr(Caption, Length(Caption)-1) + Caption[1];
end;

function TCrazyLabel.GetSpeed: Integer;
begin
  Result := FTimer.Interval;
end ;

procedure TCrazyLabel.SetSpeed(MSec: Integer);
begin
  FTimer.Interval := MSec;
end;

function TCrazyLabel.GetFontColor:TColor;
begin
  Result:= FFontColor;
end;

procedure TCrazyLabel.SetFontColor (AValue:TColor);
begin
  FFontColor:= AValue;
  Repaint;
  if Assigned(FOnFontChange) then OnFontChange(Self);
end;

procedure TCrazyLabel.Paint;
Begin
 Font.Color:=FFontColor;
 Inherited;
End;

end.
