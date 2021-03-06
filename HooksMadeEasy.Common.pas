{**********************************************************************************************
  MIT License

  Copyright (c) 2019 Fred Schetterer (fschetterer@outlook.com)

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all
  copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  SOFTWARE.
**********************************************************************************************}

/// <summary>
///   Helpers and Constants
/// </summary>
unit HooksMadeEasy.Common;

interface

uses
  Winapi.Windows, Winapi.Messages;

const
  MSGFLT_ALLOW    = 1;
  MSGFLT_DISALLOW = 2;
  MSGFLT_RESET    = 0;

type
 {$MINENUMSIZE 4 DWORD}
 PCHANGEFILTERSTRUCT = ^CHANGEFILTERSTRUCT;
 CHANGEFILTERSTRUCT = record
  cbSize : DWORD;
  ExtStatus {DWORD} : (MSGFLTINFO_NONE, MSGFLTINFO_ALREADYALLOWED_FORWND, MSGFLTINFO_ALREADYDISALLOWED_FORWND, MSGFLTINFO_ALLOWED_HIGHER);
end;

/// <remarks>
///   Windows 7 and up
/// </remarks>
function ChangeWindowMessageFilterEx(hWnd : THandle; Msg : UINT; dwFlag: DWORD; lpChangeFilterStruct : PCHANGEFILTERSTRUCT): BOOL; stdcall; external user32;

implementation


end.
