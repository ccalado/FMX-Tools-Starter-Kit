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
  File last update : 2025-05-25T16:28:32.565+02:00
  Signature : 79acc80df2b16f85e713c64718af239998e15e91
  ***************************************************************************
*)

unit uStyleManagerHelpers;

interface

uses
  uStyleManager;

// TODO -oDeveloppeurPascal : add XML doc comments
type
  TProjectStyleHelpers = class helper for TProjectStyle
  public
    procedure EnableDefaultStyle;
  end;

implementation

uses
  System.SysUtils,
  System.Classes,
  uConfig,
  uConsts,
  Olf.RTL.SystemAppearance;

procedure TProjectStyleHelpers.EnableDefaultStyle;
var
  StyleMode: TStyleMode;
begin
  StyleMode := tconfig.Current.StyleMode;
  if StyleMode = TStyleMode.System then
    if isSystemThemeInLightMode then
      StyleMode := TStyleMode.light
    else if isSystemThemeInDarkMode then
      StyleMode := TStyleMode.dark
    else
      StyleMode := TStyleMode.custom;
  case StyleMode of
    TStyleMode.light:
      StyleName := tconfig.Current.LightStyleName;
    TStyleMode.dark:
      StyleName := tconfig.Current.DarkStyleName;
    TStyleMode.custom:
      StyleName := tconfig.Current.CustomStyleName;
  else
    raise Exception.Create('Unknow style.');
  end;
end;

end.
