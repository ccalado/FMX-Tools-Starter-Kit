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
  File last update : 2026-04-03T17:09:10.313+02:00
  Signature : 9dbd1b5ddea4625a4f0623bb5f0f41b8bf1b4b83
  ***************************************************************************
*)

program FMXToolsStarterKit;

uses
  System.StartUpCopy,
  FMX.Forms,
  uConfig in 'uConfig.pas',
  uConsts in 'uConsts.pas',
  uDMAboutBox in 'uDMAboutBox.pas' {AboutBox: TDataModule},
  uDMAboutBoxLogoStorrage in 'uDMAboutBoxLogoStorrage.pas' {dmAboutBoxLogo: TDataModule},
  uTranslate in 'uTranslate.pas',
  uTxtAboutDescription in 'uTxtAboutDescription.pas',
  uTxtAboutLicense in 'uTxtAboutLicense.pas',
  Olf.FMX.AboutDialog in '..\lib-externes\AboutDialog-Delphi-Component\src\Olf.FMX.AboutDialog.pas',
  Olf.FMX.AboutDialogForm in '..\lib-externes\AboutDialog-Delphi-Component\src\Olf.FMX.AboutDialogForm.pas' {OlfAboutDialogForm},
  Olf.FMX.SelectDirectory in '..\lib-externes\Delphi-FMXExtend-Library\src\Olf.FMX.SelectDirectory.pas',
  Olf.RTL.CryptDecrypt in '..\lib-externes\librairies\src\Olf.RTL.CryptDecrypt.pas',
  Olf.RTL.Language in '..\lib-externes\librairies\src\Olf.RTL.Language.pas',
  Olf.RTL.Params in '..\lib-externes\librairies\src\Olf.RTL.Params.pas',
  u_urlOpen in '..\lib-externes\librairies\src\u_urlOpen.pas',
  _TFrameAncestor in '_TFrameAncestor.pas' {__TFrameAncestor: TFrame},
  _TFormAncestor in '_TFormAncestor.pas' {__TFormAncestor},
  _MainFormAncestor in '_MainFormAncestor.pas' {__MainFormAncestor},
  uDocumentsAncestor in 'uDocumentsAncestor.pas',
  Olf.RTL.Streams in '..\lib-externes\librairies\src\Olf.RTL.Streams.pas',
  Olf.RTL.Maths.Conversions in '..\lib-externes\librairies\src\Olf.RTL.Maths.Conversions.pas',
  uStyleManagerHelpers in 'uStyleManagerHelpers.pas',
  Olf.RTL.SystemAppearance in '..\lib-externes\librairies\src\Olf.RTL.SystemAppearance.pas',
  fToolsStylesDialog in 'fToolsStylesDialog.pas' {frmToolsStylesDialog},
  fToolsLanguagesDialog in 'fToolsLanguagesDialog.pas' {frmToolsLanguagesDialog},
  Olf.CilTseg.ClientLib in '..\lib-externes\CilTseg4Delphi\src\Olf.CilTseg.ClientLib.pas',
  Olf.RTL.Checksum in '..\lib-externes\librairies\src\Olf.RTL.Checksum.pas',
  u_md5 in '..\lib-externes\librairies\src\u_md5.pas',
  fCiltsegRegisterOrShowLicense in '..\lib-externes\CilTseg4Delphi\src\FMX\fCiltsegRegisterOrShowLicense.pas' {frmCilTsegRegisterOrShowLicense},
  fMainForm in 'fMainForm.pas' {MainForm},
  _StyleContainerAncestor in '..\lib-externes\FMX-Styles-Utils\src\_StyleContainerAncestor.pas' {__StyleContainerAncestor: TDataModule},
  uStyleManager in '..\lib-externes\FMX-Styles-Utils\src\uStyleManager.pas',
  uStyleDarkByDefault in '..\lib-externes\FMX-Styles-Utils\samples\DarkLightSampleProject\uStyleDarkByDefault.pas' {StyleDarkByDefault: TDataModule},
  uStyleLightByDefault in '..\lib-externes\FMX-Styles-Utils\samples\DarkLightSampleProject\uStyleLightByDefault.pas' {StyleLightByDefault: TDataModule},
  uGetDeviceName in '..\lib-externes\librairies\src\uGetDeviceName.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
