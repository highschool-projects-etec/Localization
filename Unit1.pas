unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Sensors,
  System.Sensors.Components, FMX.ListBox, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.WebBrowser, FMX.Layouts;

type
  TForm1 = class(TForm)
    lbMenu: TListBox;
    wbMapa: TWebBrowser;
    ListBoxHeader1: TListBoxHeader;
    Label1: TLabel;
    swGPS: TSwitch;
    ListBoxGroupHeader1: TListBoxGroupHeader;
    ListBoxItemLatitude: TListBoxItem;
    ListBoxItemLongitude: TListBoxItem;
    ListBoxGroupHeader2: TListBoxGroupHeader;
    ListBoxItemAdminArea: TListBoxItem;
    ListBoxItemPaisCod: TListBoxItem;
    ListBoxItemPais: TListBoxItem;
    ListBoxItemCaracteristica: TListBoxItem;
    ListBoxItemLocalidade: TListBoxItem;
    ListBoxItemSubAdminArea: TListBoxItem;
    ListBoxItemSubLocalidade: TListBoxItem;
    ListBoxItemSubLogradouro: TListBoxItem;
    ListBoxItemLogradouro: TListBoxItem;
    lsGPS: TLocationSensor;
    procedure swGPSSwitch(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.swGPSSwitch(Sender: TObject);
begin
// Ativa a leitura do sensor de geolocalização
lsGPS.Active := swGPS.IsChecked;
end;

end.
