program Fortes;

uses
  Vcl.Forms,
  App.System.Connection.Params in '..\Source\Units\System\Connection\App.System.Connection.Params.pas',
  App.System.Connection in '..\Source\Units\System\Connection\App.System.Connection.pas',
  App.System.Connection.Transaction in '..\Source\Units\System\Connection\App.System.Connection.Transaction.pas',
  App.System.Types in '..\Source\Units\System\Types\App.System.Types.pas',
  App.Consts.Messages in '..\Source\Units\Consts\App.Consts.Messages.pas',
  App.System.Vars in '..\Source\Units\System\Vars\App.System.Vars.pas',
  App.Common.Utils in '..\Source\Units\Common\App.Common.Utils.pas',
  App.System.Log in '..\Source\Units\System\Log\App.System.Log.pas',
  App.System.Wrapper in '..\Source\Units\System\Wrapper\App.System.Wrapper.pas',
  App.Consts.Common in '..\Source\Units\Consts\App.Consts.Common.pas',
  App.Objects.DTO in '..\Source\Units\Objects\App.Objects.DTO.pas',
  App.Objects.DAO in '..\Source\Units\Objects\App.Objects.DAO.pas',
  Frm.System.Ancestral in '..\Source\Forms\System\Ancestral\Frm.System.Ancestral.pas' {FrmSystemAncestral},
  Frm.System.Ancestral.Cadastro in '..\Source\Forms\System\Ancestral\Frm.System.Ancestral.Cadastro.pas' {FrmSystemAncestralCadastro},
  App.System.Engine in '..\Source\Units\System\Engine\App.System.Engine.pas',
  Frm.Cadastro.Bomba in '..\Source\Forms\Cadastro\Frm.Cadastro.Bomba.pas' {FrmCadastroBomba},
  Frm.Cadastro.Combustivel in '..\Source\Forms\Cadastro\Frm.Cadastro.Combustivel.pas' {FrmCadastroCombustivel},
  App.System.Engine.DataBase in '..\Source\Units\System\Engine\App.System.Engine.DataBase.pas',
  Frm.System.Main in '..\Source\Forms\System\Frm.System.Main.pas' {FrmSystemMain},
  Frm.Cadastro.Tanque in '..\Source\Forms\Cadastro\Frm.Cadastro.Tanque.pas' {FrmCadastroTanque},
  Frm.System.Ancestral.CRUD in '..\Source\Forms\System\Ancestral\Frm.System.Ancestral.CRUD.pas' {FrmSystemAncestralCRUD},
  Frm.CRUD.Combustivel in '..\Source\Forms\CRUD\Frm.CRUD.Combustivel.pas' {FrmCRUDCombustivel},
  Frm.Report.Abastecimento in '..\Source\Forms\Report\Frm.Report.Abastecimento.pas' {FrmSystemAncestral1},
  Frm.CRUD.Tanque in '..\Source\Forms\CRUD\Frm.CRUD.Tanque.pas' {FrmCRUDTanques},
  Frm.CRUD.Bomba in '..\Source\Forms\CRUD\Frm.CRUD.Bomba.pas' {FrmCRUDBombas},
  Frm.Abastecimento in '..\Source\Forms\Abastecimento\Frm.Abastecimento.pas' {FrmAbastecimento},
  Frm.Cadastro.Abastecimento in '..\Source\Forms\Cadastro\Frm.Cadastro.Abastecimento.pas' {FrmCadastroAbastecimento},
  Frm.Cadastro.View in '..\Source\Forms\Cadastro\Frm.Cadastro.View.pas' {FrmCadastrosView};

{$R *.res}

var
   LEngine: TSystemEngine;
begin
   ReportMemoryLeaksOnShutdown := True;

   Application.Initialize;
   Application.MainFormOnTaskbar := True;

   LEngine := TSystemEngine.Create;
   try
      if LEngine.StartApplication then
      begin
         Application.Initialize;
         Application.MainFormOnTaskbar := True;
         Application.CreateForm(TFrmSystemMain, FrmSystemMain);
  Application.Run;
      end;
   finally
      LEngine.Free;
   end;
end.
