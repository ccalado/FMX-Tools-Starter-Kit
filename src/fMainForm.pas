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
  https://codeberg.org/DeveloppeurPascal/FMX-Tools-Starter-Kit

  ***************************************************************************
  File last update : 2026-04-03T17:09:10.309+02:00
  Signature : 13c3771067c1180f047edd7f75b763c71ba1c1da
  ***************************************************************************
*)

unit fMainForm;

interface

{$MESSAGE WARN 'Save this file to your project directory. It''s your main form.'}
// TODO : Save this file to your project directory. It's your main form.

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
  uDocumentsAncestor;

type
  TMainForm = class(T__MainFormAncestor)
  private
  protected
    function GetNewDoc(const FileName: string = ''): TDocumentAncestor;
      override;
  public

  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}
{ TMainForm }

function TMainForm.GetNewDoc(const FileName: string): TDocumentAncestor;
begin
{$MESSAGE WARN 'Create an instance of your document and remove this comment.'}
  // TODO : Create an instance of your document and remove this comment
  // result := TYourDocumentType.Create;
  result := nil;
end;

end.
