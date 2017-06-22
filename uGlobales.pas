unit uGlobales;

interface

uses
    SysUtils;

type
    TGlobales = record
       Empresa : Integer;
       EmpresaDescripcion : string;
       Usuario : String;
    end;

Const
     _VERSION = '3.8';

        function LlenaCerosIzq(cad: String; tam : Integer; carac : String): String;
        function LlenaCerosDer(cad: String; tam: Integer; carac: String): String;
        function CentrarTexto(cad: String; tam: Integer): String;
        function Espacios(num : Integer; car : String) : String;
        function QuitaComas(valor : String) : String;

var
   _Globales : TGlobales;
   EmpleadoSeleccionado : Integer;
   NombreEmpleadoSeleccionado : String;
   EquipoSeleccionado : Integer;
   NombreEquipoSeleccionado, TipoEquipoSeleccionado : String;

implementation

function LlenaCerosIzq(cad: String; tam : Integer; carac : String): String;
var
   k : Integer;
   cadtmp : String;
   cad2 : PChar;
begin
     cadtmp := '';
     cad2 := pchar(cad);
     if StrLen(cad2) > tam then
        StrLCopy(cad2,pchar(cad),tam);
     for k := StrLen(cad2) to tam - 1 do
         cadtmp := cadtmp + carac;
     Result := cadtmp + cad2;
end;

function LlenaCerosDer(cad: String; tam: Integer; carac: String): String;
var
   k : Integer;
   cadtmp : String;
   cad2 : PChar;
begin
     cadtmp := '';
     cad2 := pchar(cad);
     if StrLen(cad2) > tam then
        StrLCopy(cad2,pchar(cad),tam);
     for k := StrLen(cad2) to tam - 1 do
         cadtmp := cadtmp + carac;
     Result := cad2 + cadtmp;
end;

function CentrarTexto(cad: String; tam: Integer): String;
var
   pcad : PChar;
   x, m : Integer;
begin
     pcad := PChar(cad);
     x := (tam - StrLen(pcad)) div 2;
     m := tam - x - StrLen(pcad);
     Result := Espacios(x,' ') + cad + Espacios(m,' ');
end;

function Espacios(num : Integer; car : String) : String;
var
   k : Integer;
begin
     Result := '';
     for k := 0 to num - 1 do
         Result := Result + car;
end;

function QuitaComas(valor : String) : String;
begin
     Result := StringReplace(valor,',','',[rfReplaceAll,rfIgnoreCase]);
end;


end.
