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
  File last update : 2026-04-03T17:09:10.362+02:00
  Signature : fa29adfe4ce40a8aab936f4acfa89ebcf8e0f096
  ***************************************************************************
*)

unit _TFormAncestor;

interface

// If you want to be able to update the template files in your project,
// we recommend that you don't modify this file. Its operation should support
// all standard use cases. Save the file in your project and work on the copy.
// In this case, we suggest you open a ticket on the code repository to explain
// your needs and the changes to be made to the template.
//
// All forms in your project must inherits from this class or its descendants.

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  System.Messaging;

type
  /// <summary>
  /// Should be used as your TForm ancestor.
  /// </summary>
  T__TFormAncestor = class(TForm)
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: WideChar;
      Shift: TShiftState);
  private
  protected
    procedure DoTranslateTexts(const Sender: TObject; const Msg: TMessage);
    procedure DoShow; override;
    procedure DoHide; override;
  public
    /// <summary>
    /// This method is called each time a global translation broadcast is sent
    /// with current language as argument.
    /// </summary>
    procedure TranslateTexts(const Language: string); virtual;
  end;

implementation

{$R *.fmx}

uses
  uTranslate,
  uConfig,
  uConsts,
  uDMAboutBox;

{ T__TFormAncestor }

procedure T__TFormAncestor.DoHide;
begin
  inherited;
  TMessageManager.DefaultManager.Unsubscribe(TTranslateTextsMessage,
    DoTranslateTexts, true);
end;

procedure T__TFormAncestor.DoShow;
begin
  inherited;
  TranslateTexts(tconfig.Current.Language);
  TMessageManager.DefaultManager.SubscribeToMessage(TTranslateTextsMessage,
    DoTranslateTexts);
end;

procedure T__TFormAncestor.DoTranslateTexts(const Sender: TObject;
  const Msg: TMessage);
begin
  if not assigned(self) then
    exit;

  if assigned(Msg) and (Msg is TTranslateTextsMessage) then
    TranslateTexts((Msg as TTranslateTextsMessage).Language);
end;

procedure T__TFormAncestor.FormKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: WideChar; Shift: TShiftState);
begin
  if CShowAboutBoxWithF1 and (KeyChar = #0) and (Key = vkF1) then
  begin
    Key := 0;
    TAboutBox.Current.ShowModal;
  end
  else if CExitWithEscapeKey and (KeyChar = #0) and (Key = vkEscape) then
  begin
    Key := 0;
    Close;
  end;
end;

procedure T__TFormAncestor.TranslateTexts(const Language: string);
begin
  // nothing to do here at this level
end;

end.
