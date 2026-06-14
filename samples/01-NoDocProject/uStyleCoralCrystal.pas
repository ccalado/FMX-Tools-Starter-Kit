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
  File last update : 2026-04-03T17:09:10.287+02:00
  Signature : b4259a5416bf369f98a331c04278dfdbe67a6c0e
  ***************************************************************************
*)

unit uStyleCoralCrystal;

interface

uses
  System.SysUtils,
  System.Classes,
  _StyleContainerAncestor,
  FMX.Types,
  FMX.Controls,
  uStyleManager;

type
  TdmStyleCoralCrystal = class(T__StyleContainerAncestor)
  private
  public
    class function GetStyleType: TProjectStyleType; override;
    class function GetStyleName: string; override;
  end;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}
{ TdmStyleCoralCrystal }

class function TdmStyleCoralCrystal.GetStyleName: string;
begin
  result := 'Coral Crystal';
end;

class function TdmStyleCoralCrystal.GetStyleType: TProjectStyleType;
begin
  result := TProjectStyleType.light;
end;

initialization

TdmStyleCoralCrystal.RegisterStyle;

end.
