{=====================================================}
{          Developer: Rafael Gustavo Dal Bosco        }
{           2023 - All Rights Reserved  ™ ®           }
{=====================================================}
unit Frm.Report.Abastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frm.System.Ancestral, Vcl.Buttons,
  Vcl.ExtCtrls, RLReport, Data.DB, Datasnap.DBClient, Vcl.StdCtrls;

type
  TFrmSystemAncestral1 = class(TFrmSystemAncestral)
    RLReport1: TRLReport;
    RLLabel1: TRLLabel;
    DataSource: TDataSource;
    ClientDataSet: TClientDataSet;
    ClientDataSetID_COMBUSTIVEL: TIntegerField;
    ClientDataSetVALOR: TCurrencyField;
    Label1: TLabel;
    RLDBText1: TRLDBText;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Teste;
  end;

var
  FrmSystemAncestral1: TFrmSystemAncestral1;

implementation

{$R *.dfm}

{ TFrmSystemAncestral1 }

procedure TFrmSystemAncestral1.FormShow(Sender: TObject);
begin
  inherited;
   Teste;
end;

procedure TFrmSystemAncestral1.Teste;
begin
   ClientDataSet.FieldDefs.Add('VALOR', ftCurrency);
   ClientDataSet.CreateDataSet;
end;

end.
