unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ColorGrd, StdCtrls, ComCtrls, CrazyLabel;

type
  TForm1 = class(TForm)
    CG1: TColorGrid;
    Time: TTimer;
    Button1: TButton;
    Button2: TButton;
    Button5: TButton;
    Label1: TLabel;
    TrackBar1: TTrackBar;
    CrazyLabel1: TCrazyLabel;
    Label2: TLabel;
    CrazyLabel2: TCrazyLabel;
    Button6: TButton;
    procedure TimeTimer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure CrazyLabel1FontChange(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure CrazyLabel2FontChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  CountStart:integer;

implementation

{$R *.dfm}

procedure TForm1.TimeTimer(Sender: TObject);
begin
CG1.BackgroundIndex:=CG1.BackgroundIndex+1;
    if CG1.BackgroundIndex=16 then
      CG1.BackgroundIndex:=0;
      CG1.ForegroundIndex:=CG1.ForegroundIndex+1;
    if CG1.ForegroundIndex=16 then
      CG1.ForegroundIndex:=0;
CrazyLabel1.FontColor:=CG1.BackgroundColor;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Time.Enabled:=True;
CrazyLabel1.OnFontChange:=CG1.OnChange;
CrazyLabel1.Speed:=CountStart;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 CrazyLabel1.Speed:=0;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
CountStart:=500;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
CountStart:=CountStart-10;
CrazyLabel1.Speed:=CountStart;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
CountStart:=CountStart+10;
CrazyLabel1.Speed:=CountStart;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin

case TrackBar1.Position of
0: CountStart:=0;
1:CountStart:=250;
2:CountStart:=150;
3:CountStart:=50;
4:CountStart:=5;
end;
CrazyLabel1.Speed:=CountStart;
end;

procedure TForm1.CrazyLabel1FontChange(Sender: TObject);
begin
   Label2.Font.Color:=RGB(255,0,0);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
CrazyLabel2.FontColor:=RGB(255,122,12);
end;

procedure TForm1.CrazyLabel2FontChange(Sender: TObject);
begin
  Label2.Font.Color:=RGB(255,0,0);
  Label2.Visible:=True;
end;

end.
