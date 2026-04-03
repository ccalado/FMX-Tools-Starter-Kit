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
  File last update : 2025-05-25T16:28:32.406+02:00
  Signature : 6318c8c6ffdbb252af4bd96eed9fdd1d8f443595
  ***************************************************************************
*)

unit uMyconfig;

interface

uses
  uConfig;

Type
  /// <summary>
  /// A sample TConfig extension with a new setting saved the same way than
  /// starterkit's settings.
  /// </summary>
  TMyConfig = class helper for TConfig
  private
    procedure SetMySampleParam(const Value: integer);
    function getMySampleParam: integer;
  protected
  public
    property MySampleParam: integer read getMySampleParam
      write SetMySampleParam;
  end;

implementation

const
  CMySettingsPrefix = 'MyParamSetting.';

  { TMyConfig }

function TMyConfig.getMySampleParam: integer;
begin
  result := GetParams.getValue(CMySettingsPrefix + 'MyParam1', 0);
end;

procedure TMyConfig.SetMySampleParam(const Value: integer);
begin
  GetParams.setValue(CMySettingsPrefix + 'MyParam1', Value);
  GetParams.Save;
end;

end.
