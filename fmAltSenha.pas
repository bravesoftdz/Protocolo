unit fmAltSenha;

interface

uses
  MainModule,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fmAltSenhaPatterns, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, uniLabel, uniEdit, uniGUIClasses, uniDBEdit,
  uniGroupBox, uniButton, uniBitBtn, uniGUIBaseClasses, uniPanel;

type
  TfrmAltSenha = class(TfrmAltSenhaPatterns)
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function frmAltSenha: TfrmAltSenha;

implementation

{$R *.dfm}
function frmAltSenha: TfrmAltSenha;
begin
  Result := TfrmAltSenha(UniMainModule.GetFormInstance(TfrmAltSenha));
end;

procedure TfrmAltSenha.btOkClick(Sender: TObject);
begin
  inherited;
  UniMainModule.Log(Caption,5); // Consulta
end;

end.
