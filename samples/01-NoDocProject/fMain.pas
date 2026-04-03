(* C2PP
  ***************************************************************************

  FMX Tools Starter Kit
  Copyright (c) 2024-2026 Patrick PREMARTIN

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU Affero General Public License as
  published by the Free Software Foundation, either version 3 of the
  License, or (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU Affero General Public License for more details.

  You should have received a copy of the GNU Affero General Public License
  along with this program.  If not, see <https://www.gnu.org/licenses/>.

  ***************************************************************************

  A starter kit for your FireMonkey projects in Delphi.

  ***************************************************************************

  Author(s) :
  Patrick PREMARTIN

  Site :
  https://fmxtoolsstarterkit.developpeur-pascal.fr/

  Project site :
  https://github.com/DeveloppeurPascal/FMX-Tools-Starter-Kit

  ***************************************************************************
  File last update : 2025-07-14T17:13:34.000+02:00
  Signature : b8dee0fcaef662569ed88f9640f9283130b82281
  ***************************************************************************
*)

unit fMain;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Graphics,
  FMX.Controls,
  FMX.Forms,
  FMX.Dialogs,
  FMX.StdCtrls,
  _MainFormAncestor,
  System.Actions,
  FMX.ActnList,
  FMX.Menus,
  FMX.Controls.Presentation,
  Olf.FMX.AboutDialogForm;

type
  TfrmMain = class(T__MainFormAncestor)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  protected
    function DoGetLanguageName(const ISOCode: string): string; override;
    function AboutBoxTranslateTexts(const Language: string;
      const TxtID: TOlfAboutDialogTxtID): string;
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

uses
  uStyleManager;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  // showmessage(tprojectstyle.current.stylename);
  // tprojectstyle.current.stylename := 'impressive dark';
  // TProjectStyle.Current.StyleName:='dark';
  DoStyleChangeAction(Sender);
end;

function TfrmMain.AboutBoxTranslateTexts(const Language: string;
  const TxtID: TOlfAboutDialogTxtID): string;
begin
  if TxtID = TOlfAboutDialogTxtID.Version then
    result := 'MyVersion '
  else
    result := '';
end;

function TfrmMain.DoGetLanguageName(const ISOCode: string): string;
begin
  if ISOCode = 'fr' then
    result := 'Français'
  else if ISOCode = 'it' then
    result := 'Italiano';
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  inherited;
  OnAboutBoxTranslateTexts := AboutBoxTranslateTexts;
end;

end.
