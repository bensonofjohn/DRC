
(* lexical analyzer template (TP Lex V3.0), V1.0 3-2-91 AG *)

(* global definitions: *)
//This is the Lex (TPLex) lex file, the tokenizer





function yylex : Integer;

procedure yyaction ( yyruleno : Integer );
  (* local definitions: *)
begin
  (* actions: *)
  case yyruleno of
  1:
     			BEGIN  AddToken(TokenList, T_SECTION_CTL, yytext, MaxLongInt, yylineno, yycolno);  END;
  2:
     			BEGIN  AddToken(TokenList, T_SECTION_STX, yytext, MaxLongInt, yylineno, yycolno);  END;
  3:
     			BEGIN  AddToken(TokenList, T_SECTION_CON, yytext, MaxLongInt, yylineno, yycolno); END;
  4:
     			BEGIN  AddToken(TokenList, T_SECTION_MTX, yytext, MaxLongInt, yylineno, yycolno); END;
  5:
     			BEGIN  AddToken(TokenList, T_SECTION_LTX, yytext, MaxLongInt, yylineno, yycolno); END;
  6:
     			BEGIN  AddToken(TokenList, T_SECTION_OTX, yytext, MaxLongInt, yylineno, yycolno); END;
  7:
     			BEGIN  AddToken(TokenList, T_SECTION_OBJ, yytext, MaxLongInt, yylineno, yycolno); END;
  8:
     			BEGIN  AddToken(TokenList, T_SECTION_VOC, yytext, MaxLongInt, yylineno, yycolno); END;
  9:
     			BEGIN  AddToken(TokenList, T_SECTION_PRO, yytext, MaxLongInt, yylineno, yycolno); END;
  10:
     			BEGIN  AddToken(TokenList, T_SECTION_END, yytext, MaxLongInt, yylineno, yycolno); END;
  11:
       			BEGIN  AddToken(TokenList, T_DEFINE, yytext, MaxLongInt, yylineno, yycolno); END;
  12:
      			BEGIN  AddToken(TokenList, T_IFDEF, yytext, MaxLongInt, yylineno, yycolno); END;
  13:
       			BEGIN  AddToken(TokenList, T_IFNDEF, yytext, MaxLongInt, yylineno, yycolno); END;
  14:
      			BEGIN  AddToken(TokenList, T_ENDIF, yytext, MaxLongInt, yylineno, yycolno); END;
  15:
                BEGIN  AddToken(TokenList, T_ELSE, yytext, MaxLongInt, yylineno, yycolno); END;
  16:
   				BEGIN  AddToken(TokenList, T_DB, yytext, MaxLongInt, yylineno, yycolno); END;
  17:
       			BEGIN  AddToken(TokenList, T_EXTERN, yytext, MaxLongInt, yylineno, yycolno); END;
  18:
       			BEGIN  AddToken(TokenList, T_INCBIN, yytext, MaxLongInt, yylineno, yycolno); END;
  19:
                BEGIN  AddToken(TokenList, T_CLASSIC, yytext, MaxLongInt, yylineno, yycolno); END;
  20:
      			BEGIN  AddToken(TokenList, T_STRING, yytext, MaxLongInt, yylineno, yycolno); END;
  21:
       			BEGIN  AddToken(TokenList, T_STRING, UTF8Encode(yytext), MaxLongInt, yylineno, yycolno); END;
  22:
 				BEGIN  AddToken(TokenList, T_UNDERSCORE, yytext, MaxLongInt, yylineno, yycolno); END;
  23:
        		BEGIN  AddToken(TokenList, T_LIST_ENTRY, yytext, StrToInt(Copy(yytext,2,Length(yytext)-1)), yylineno, yycolno); END;
  24:
      			BEGIN  END;
  25:
                BEGIN  AddToken(TokenList, T_NUMBER, yytext, StrToInt(yytext), yylineno, yycolno); END;
  26:
                               BEGIN  AddToken(TokenList, T_IDENTIFIER, yytext, MaxLongInt, yylineno, yycolno); END;
  27:
  				BEGIN  AddToken(TokenList, T_INDIRECT, yytext, MaxLongInt, yylineno, yycolno); END;
  28:
                BEGIN  END;
  29:
                BEGIN yyerror('Unexpected character'); Halt(1); END;
  end;
end(*yyaction*);

(* DFA table: *)

type YYTRec = record
                cc : set of Char;
                s  : Integer;
              end;

const

yynmarks   = 47;
yynmatches = 47;
yyntrans   = 124;
yynstates  = 95;

yyk : array [1..yynmarks] of Integer = (
  { 0: }
  { 1: }
  { 2: }
  29,
  { 3: }
  29,
  { 4: }
  29,
  { 5: }
  29,
  { 6: }
  22,
  26,
  29,
  { 7: }
  29,
  { 8: }
  29,
  { 9: }
  25,
  26,
  29,
  { 10: }
  26,
  29,
  { 11: }
  27,
  29,
  { 12: }
  28,
  { 13: }
  28,
  29,
  { 14: }
  29,
  { 15: }
  { 16: }
  { 17: }
  { 18: }
  { 19: }
  { 20: }
  { 21: }
  { 22: }
  { 23: }
  23,
  { 24: }
  { 25: }
  { 26: }
  { 27: }
  { 28: }
  { 29: }
  20,
  { 30: }
  { 31: }
  { 32: }
  26,
  { 33: }
  { 34: }
  24,
  { 35: }
  25,
  { 36: }
  25,
  26,
  { 37: }
  { 38: }
  { 39: }
  { 40: }
  { 41: }
  { 42: }
  { 43: }
  { 44: }
  { 45: }
  { 46: }
  { 47: }
  { 48: }
  16,
  { 49: }
  { 50: }
  { 51: }
  { 52: }
  { 53: }
  { 54: }
  { 55: }
  21,
  { 56: }
  1,
  { 57: }
  3,
  { 58: }
  2,
  { 59: }
  4,
  { 60: }
  5,
  { 61: }
  6,
  { 62: }
  7,
  { 63: }
  8,
  { 64: }
  9,
  { 65: }
  10,
  { 66: }
  { 67: }
  { 68: }
  { 69: }
  { 70: }
  { 71: }
  { 72: }
  { 73: }
  { 74: }
  { 75: }
  { 76: }
  { 77: }
  { 78: }
  { 79: }
  15,
  { 80: }
  { 81: }
  { 82: }
  { 83: }
  12,
  { 84: }
  { 85: }
  { 86: }
  14,
  { 87: }
  { 88: }
  { 89: }
  11,
  { 90: }
  13,
  { 91: }
  18,
  { 92: }
  17,
  { 93: }
  { 94: }
  19
);

yym : array [1..yynmatches] of Integer = (
{ 0: }
{ 1: }
{ 2: }
  29,
{ 3: }
  29,
{ 4: }
  29,
{ 5: }
  29,
{ 6: }
  22,
  26,
  29,
{ 7: }
  29,
{ 8: }
  29,
{ 9: }
  25,
  26,
  29,
{ 10: }
  26,
  29,
{ 11: }
  27,
  29,
{ 12: }
  28,
{ 13: }
  28,
  29,
{ 14: }
  29,
{ 15: }
{ 16: }
{ 17: }
{ 18: }
{ 19: }
{ 20: }
{ 21: }
{ 22: }
{ 23: }
  23,
{ 24: }
{ 25: }
{ 26: }
{ 27: }
{ 28: }
{ 29: }
  20,
{ 30: }
{ 31: }
{ 32: }
  26,
{ 33: }
{ 34: }
  24,
{ 35: }
  25,
{ 36: }
  25,
  26,
{ 37: }
{ 38: }
{ 39: }
{ 40: }
{ 41: }
{ 42: }
{ 43: }
{ 44: }
{ 45: }
{ 46: }
{ 47: }
{ 48: }
  16,
{ 49: }
{ 50: }
{ 51: }
{ 52: }
{ 53: }
{ 54: }
{ 55: }
  21,
{ 56: }
  1,
{ 57: }
  3,
{ 58: }
  2,
{ 59: }
  4,
{ 60: }
  5,
{ 61: }
  6,
{ 62: }
  7,
{ 63: }
  8,
{ 64: }
  9,
{ 65: }
  10,
{ 66: }
{ 67: }
{ 68: }
{ 69: }
{ 70: }
{ 71: }
{ 72: }
{ 73: }
{ 74: }
{ 75: }
{ 76: }
{ 77: }
{ 78: }
{ 79: }
  15,
{ 80: }
{ 81: }
{ 82: }
{ 83: }
  12,
{ 84: }
{ 85: }
{ 86: }
  14,
{ 87: }
{ 88: }
{ 89: }
  11,
{ 90: }
  13,
{ 91: }
  18,
{ 92: }
  17,
{ 93: }
{ 94: }
  19
);

yyt : array [1..yyntrans] of YYTrec = (
{ 0: }
  ( cc: [ #1..#8,#11..#31,'!','$'..'&','('..'+','.',
            ':','<'..'?','['..'^','`','{'..#192,#194..#198,
            #200,#202..#204,#206..#208,#210,#212..#217,
            #219,#221..#224,#226..#230,#232,#234..#236,
            #238..#240,#242,#244..#249,#251,#253..#255 ]; s: 14),
  ( cc: [ #9,' ' ]; s: 13),
  ( cc: [ #10 ]; s: 12),
  ( cc: [ '"' ]; s: 4),
  ( cc: [ '#' ]; s: 3),
  ( cc: [ '''' ]; s: 5),
  ( cc: [ ',','A'..'Z','a'..'z',#193,#199,#201,#205,
            #209,#211,#218,#220,#225,#231,#233,#237,#241,
            #243,#250,#252 ]; s: 10),
  ( cc: [ '-' ]; s: 8),
  ( cc: [ '/' ]; s: 2),
  ( cc: [ '0'..'9' ]; s: 9),
  ( cc: [ ';' ]; s: 7),
  ( cc: [ '@' ]; s: 11),
  ( cc: [ '_' ]; s: 6),
{ 1: }
  ( cc: [ #1..#8,#11..#31,'!','$'..'&','('..'+','.',
            ':','<'..'?','['..'^','`','{'..#192,#194..#198,
            #200,#202..#204,#206..#208,#210,#212..#217,
            #219,#221..#224,#226..#230,#232,#234..#236,
            #238..#240,#242,#244..#249,#251,#253..#255 ]; s: 14),
  ( cc: [ #9,' ' ]; s: 13),
  ( cc: [ #10 ]; s: 12),
  ( cc: [ '"' ]; s: 4),
  ( cc: [ '#' ]; s: 3),
  ( cc: [ '''' ]; s: 5),
  ( cc: [ ',','A'..'Z','a'..'z',#193,#199,#201,#205,
            #209,#211,#218,#220,#225,#231,#233,#237,#241,
            #243,#250,#252 ]; s: 10),
  ( cc: [ '-' ]; s: 8),
  ( cc: [ '/' ]; s: 2),
  ( cc: [ '0'..'9' ]; s: 9),
  ( cc: [ ';' ]; s: 7),
  ( cc: [ '@' ]; s: 11),
  ( cc: [ '_' ]; s: 6),
{ 2: }
  ( cc: [ '0'..'9' ]; s: 23),
  ( cc: [ 'C' ]; s: 15),
  ( cc: [ 'E' ]; s: 22),
  ( cc: [ 'L' ]; s: 18),
  ( cc: [ 'M' ]; s: 17),
  ( cc: [ 'O' ]; s: 19),
  ( cc: [ 'P' ]; s: 21),
  ( cc: [ 'S' ]; s: 16),
  ( cc: [ 'V' ]; s: 20),
{ 3: }
  ( cc: [ 'c' ]; s: 27),
  ( cc: [ 'd' ]; s: 24),
  ( cc: [ 'e' ]; s: 26),
  ( cc: [ 'i' ]; s: 25),
{ 4: }
  ( cc: [ #1..#9,#11..'!','#'..#255 ]; s: 28),
  ( cc: [ '"' ]; s: 29),
{ 5: }
  ( cc: [ #1..#9,#11..'&','('..#255 ]; s: 30),
  ( cc: [ '''' ]; s: 31),
{ 6: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 32),
{ 7: }
  ( cc: [ #1..#9,#11..#255 ]; s: 33),
  ( cc: [ #10 ]; s: 34),
{ 8: }
  ( cc: [ '0'..'9' ]; s: 35),
{ 9: }
  ( cc: [ ',','A'..'Z','_','a'..'z',#193,#199,#201,
            #205,#209,#211,#218,#220,#225,#231,#233,#237,
            #241,#243,#250,#252 ]; s: 32),
  ( cc: [ '0'..'9' ]; s: 36),
{ 10: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 32),
{ 11: }
{ 12: }
{ 13: }
{ 14: }
{ 15: }
  ( cc: [ 'O' ]; s: 38),
  ( cc: [ 'T' ]; s: 37),
{ 16: }
  ( cc: [ 'T' ]; s: 39),
{ 17: }
  ( cc: [ 'T' ]; s: 40),
{ 18: }
  ( cc: [ 'T' ]; s: 41),
{ 19: }
  ( cc: [ 'B' ]; s: 43),
  ( cc: [ 'T' ]; s: 42),
{ 20: }
  ( cc: [ 'O' ]; s: 44),
{ 21: }
  ( cc: [ 'R' ]; s: 45),
{ 22: }
  ( cc: [ 'N' ]; s: 46),
{ 23: }
  ( cc: [ '0'..'9' ]; s: 23),
{ 24: }
  ( cc: [ 'b' ]; s: 48),
  ( cc: [ 'e' ]; s: 47),
{ 25: }
  ( cc: [ 'f' ]; s: 49),
  ( cc: [ 'n' ]; s: 50),
{ 26: }
  ( cc: [ 'l' ]; s: 52),
  ( cc: [ 'n' ]; s: 51),
  ( cc: [ 'x' ]; s: 53),
{ 27: }
  ( cc: [ 'l' ]; s: 54),
{ 28: }
  ( cc: [ #1..#9,#11..'!','#'..#255 ]; s: 28),
  ( cc: [ '"' ]; s: 29),
{ 29: }
  ( cc: [ #1..#9,#11..'!','#'..#255 ]; s: 28),
  ( cc: [ '"' ]; s: 29),
{ 30: }
  ( cc: [ #1..#9,#11..'&','('..#255 ]; s: 30),
  ( cc: [ '''' ]; s: 31),
{ 31: }
  ( cc: [ #1..#9,#11..'&','('..#255 ]; s: 30),
  ( cc: [ '''' ]; s: 55),
{ 32: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 32),
{ 33: }
  ( cc: [ #1..#9,#11..#255 ]; s: 33),
  ( cc: [ #10 ]; s: 34),
{ 34: }
{ 35: }
  ( cc: [ '0'..'9' ]; s: 35),
{ 36: }
  ( cc: [ ',','A'..'Z','_','a'..'z',#193,#199,#201,
            #205,#209,#211,#218,#220,#225,#231,#233,#237,
            #241,#243,#250,#252 ]; s: 32),
  ( cc: [ '0'..'9' ]; s: 36),
{ 37: }
  ( cc: [ 'L' ]; s: 56),
{ 38: }
  ( cc: [ 'N' ]; s: 57),
{ 39: }
  ( cc: [ 'X' ]; s: 58),
{ 40: }
  ( cc: [ 'X' ]; s: 59),
{ 41: }
  ( cc: [ 'X' ]; s: 60),
{ 42: }
  ( cc: [ 'X' ]; s: 61),
{ 43: }
  ( cc: [ 'J' ]; s: 62),
{ 44: }
  ( cc: [ 'C' ]; s: 63),
{ 45: }
  ( cc: [ 'O' ]; s: 64),
{ 46: }
  ( cc: [ 'D' ]; s: 65),
{ 47: }
  ( cc: [ 'f' ]; s: 66),
{ 48: }
{ 49: }
  ( cc: [ 'd' ]; s: 67),
  ( cc: [ 'n' ]; s: 68),
{ 50: }
  ( cc: [ 'c' ]; s: 69),
{ 51: }
  ( cc: [ 'd' ]; s: 70),
{ 52: }
  ( cc: [ 's' ]; s: 71),
{ 53: }
  ( cc: [ 't' ]; s: 72),
{ 54: }
  ( cc: [ 'a' ]; s: 73),
{ 55: }
  ( cc: [ #1..#9,#11..'&','('..#255 ]; s: 30),
  ( cc: [ '''' ]; s: 55),
{ 56: }
{ 57: }
{ 58: }
{ 59: }
{ 60: }
{ 61: }
{ 62: }
{ 63: }
{ 64: }
{ 65: }
{ 66: }
  ( cc: [ 'i' ]; s: 74),
{ 67: }
  ( cc: [ 'e' ]; s: 75),
{ 68: }
  ( cc: [ 'd' ]; s: 76),
{ 69: }
  ( cc: [ 'b' ]; s: 77),
{ 70: }
  ( cc: [ 'i' ]; s: 78),
{ 71: }
  ( cc: [ 'e' ]; s: 79),
{ 72: }
  ( cc: [ 'e' ]; s: 80),
{ 73: }
  ( cc: [ 's' ]; s: 81),
{ 74: }
  ( cc: [ 'n' ]; s: 82),
{ 75: }
  ( cc: [ 'f' ]; s: 83),
{ 76: }
  ( cc: [ 'e' ]; s: 84),
{ 77: }
  ( cc: [ 'i' ]; s: 85),
{ 78: }
  ( cc: [ 'f' ]; s: 86),
{ 79: }
{ 80: }
  ( cc: [ 'r' ]; s: 87),
{ 81: }
  ( cc: [ 's' ]; s: 88),
{ 82: }
  ( cc: [ 'e' ]; s: 89),
{ 83: }
{ 84: }
  ( cc: [ 'f' ]; s: 90),
{ 85: }
  ( cc: [ 'n' ]; s: 91),
{ 86: }
{ 87: }
  ( cc: [ 'n' ]; s: 92),
{ 88: }
  ( cc: [ 'i' ]; s: 93),
{ 89: }
{ 90: }
{ 91: }
{ 92: }
{ 93: }
  ( cc: [ 'c' ]; s: 94)
{ 94: }
);

yykl : array [0..yynstates-1] of Integer = (
{ 0: } 1,
{ 1: } 1,
{ 2: } 1,
{ 3: } 2,
{ 4: } 3,
{ 5: } 4,
{ 6: } 5,
{ 7: } 8,
{ 8: } 9,
{ 9: } 10,
{ 10: } 13,
{ 11: } 15,
{ 12: } 17,
{ 13: } 18,
{ 14: } 20,
{ 15: } 21,
{ 16: } 21,
{ 17: } 21,
{ 18: } 21,
{ 19: } 21,
{ 20: } 21,
{ 21: } 21,
{ 22: } 21,
{ 23: } 21,
{ 24: } 22,
{ 25: } 22,
{ 26: } 22,
{ 27: } 22,
{ 28: } 22,
{ 29: } 22,
{ 30: } 23,
{ 31: } 23,
{ 32: } 23,
{ 33: } 24,
{ 34: } 24,
{ 35: } 25,
{ 36: } 26,
{ 37: } 28,
{ 38: } 28,
{ 39: } 28,
{ 40: } 28,
{ 41: } 28,
{ 42: } 28,
{ 43: } 28,
{ 44: } 28,
{ 45: } 28,
{ 46: } 28,
{ 47: } 28,
{ 48: } 28,
{ 49: } 29,
{ 50: } 29,
{ 51: } 29,
{ 52: } 29,
{ 53: } 29,
{ 54: } 29,
{ 55: } 29,
{ 56: } 30,
{ 57: } 31,
{ 58: } 32,
{ 59: } 33,
{ 60: } 34,
{ 61: } 35,
{ 62: } 36,
{ 63: } 37,
{ 64: } 38,
{ 65: } 39,
{ 66: } 40,
{ 67: } 40,
{ 68: } 40,
{ 69: } 40,
{ 70: } 40,
{ 71: } 40,
{ 72: } 40,
{ 73: } 40,
{ 74: } 40,
{ 75: } 40,
{ 76: } 40,
{ 77: } 40,
{ 78: } 40,
{ 79: } 40,
{ 80: } 41,
{ 81: } 41,
{ 82: } 41,
{ 83: } 41,
{ 84: } 42,
{ 85: } 42,
{ 86: } 42,
{ 87: } 43,
{ 88: } 43,
{ 89: } 43,
{ 90: } 44,
{ 91: } 45,
{ 92: } 46,
{ 93: } 47,
{ 94: } 47
);

yykh : array [0..yynstates-1] of Integer = (
{ 0: } 0,
{ 1: } 0,
{ 2: } 1,
{ 3: } 2,
{ 4: } 3,
{ 5: } 4,
{ 6: } 7,
{ 7: } 8,
{ 8: } 9,
{ 9: } 12,
{ 10: } 14,
{ 11: } 16,
{ 12: } 17,
{ 13: } 19,
{ 14: } 20,
{ 15: } 20,
{ 16: } 20,
{ 17: } 20,
{ 18: } 20,
{ 19: } 20,
{ 20: } 20,
{ 21: } 20,
{ 22: } 20,
{ 23: } 21,
{ 24: } 21,
{ 25: } 21,
{ 26: } 21,
{ 27: } 21,
{ 28: } 21,
{ 29: } 22,
{ 30: } 22,
{ 31: } 22,
{ 32: } 23,
{ 33: } 23,
{ 34: } 24,
{ 35: } 25,
{ 36: } 27,
{ 37: } 27,
{ 38: } 27,
{ 39: } 27,
{ 40: } 27,
{ 41: } 27,
{ 42: } 27,
{ 43: } 27,
{ 44: } 27,
{ 45: } 27,
{ 46: } 27,
{ 47: } 27,
{ 48: } 28,
{ 49: } 28,
{ 50: } 28,
{ 51: } 28,
{ 52: } 28,
{ 53: } 28,
{ 54: } 28,
{ 55: } 29,
{ 56: } 30,
{ 57: } 31,
{ 58: } 32,
{ 59: } 33,
{ 60: } 34,
{ 61: } 35,
{ 62: } 36,
{ 63: } 37,
{ 64: } 38,
{ 65: } 39,
{ 66: } 39,
{ 67: } 39,
{ 68: } 39,
{ 69: } 39,
{ 70: } 39,
{ 71: } 39,
{ 72: } 39,
{ 73: } 39,
{ 74: } 39,
{ 75: } 39,
{ 76: } 39,
{ 77: } 39,
{ 78: } 39,
{ 79: } 40,
{ 80: } 40,
{ 81: } 40,
{ 82: } 40,
{ 83: } 41,
{ 84: } 41,
{ 85: } 41,
{ 86: } 42,
{ 87: } 42,
{ 88: } 42,
{ 89: } 43,
{ 90: } 44,
{ 91: } 45,
{ 92: } 46,
{ 93: } 46,
{ 94: } 47
);

yyml : array [0..yynstates-1] of Integer = (
{ 0: } 1,
{ 1: } 1,
{ 2: } 1,
{ 3: } 2,
{ 4: } 3,
{ 5: } 4,
{ 6: } 5,
{ 7: } 8,
{ 8: } 9,
{ 9: } 10,
{ 10: } 13,
{ 11: } 15,
{ 12: } 17,
{ 13: } 18,
{ 14: } 20,
{ 15: } 21,
{ 16: } 21,
{ 17: } 21,
{ 18: } 21,
{ 19: } 21,
{ 20: } 21,
{ 21: } 21,
{ 22: } 21,
{ 23: } 21,
{ 24: } 22,
{ 25: } 22,
{ 26: } 22,
{ 27: } 22,
{ 28: } 22,
{ 29: } 22,
{ 30: } 23,
{ 31: } 23,
{ 32: } 23,
{ 33: } 24,
{ 34: } 24,
{ 35: } 25,
{ 36: } 26,
{ 37: } 28,
{ 38: } 28,
{ 39: } 28,
{ 40: } 28,
{ 41: } 28,
{ 42: } 28,
{ 43: } 28,
{ 44: } 28,
{ 45: } 28,
{ 46: } 28,
{ 47: } 28,
{ 48: } 28,
{ 49: } 29,
{ 50: } 29,
{ 51: } 29,
{ 52: } 29,
{ 53: } 29,
{ 54: } 29,
{ 55: } 29,
{ 56: } 30,
{ 57: } 31,
{ 58: } 32,
{ 59: } 33,
{ 60: } 34,
{ 61: } 35,
{ 62: } 36,
{ 63: } 37,
{ 64: } 38,
{ 65: } 39,
{ 66: } 40,
{ 67: } 40,
{ 68: } 40,
{ 69: } 40,
{ 70: } 40,
{ 71: } 40,
{ 72: } 40,
{ 73: } 40,
{ 74: } 40,
{ 75: } 40,
{ 76: } 40,
{ 77: } 40,
{ 78: } 40,
{ 79: } 40,
{ 80: } 41,
{ 81: } 41,
{ 82: } 41,
{ 83: } 41,
{ 84: } 42,
{ 85: } 42,
{ 86: } 42,
{ 87: } 43,
{ 88: } 43,
{ 89: } 43,
{ 90: } 44,
{ 91: } 45,
{ 92: } 46,
{ 93: } 47,
{ 94: } 47
);

yymh : array [0..yynstates-1] of Integer = (
{ 0: } 0,
{ 1: } 0,
{ 2: } 1,
{ 3: } 2,
{ 4: } 3,
{ 5: } 4,
{ 6: } 7,
{ 7: } 8,
{ 8: } 9,
{ 9: } 12,
{ 10: } 14,
{ 11: } 16,
{ 12: } 17,
{ 13: } 19,
{ 14: } 20,
{ 15: } 20,
{ 16: } 20,
{ 17: } 20,
{ 18: } 20,
{ 19: } 20,
{ 20: } 20,
{ 21: } 20,
{ 22: } 20,
{ 23: } 21,
{ 24: } 21,
{ 25: } 21,
{ 26: } 21,
{ 27: } 21,
{ 28: } 21,
{ 29: } 22,
{ 30: } 22,
{ 31: } 22,
{ 32: } 23,
{ 33: } 23,
{ 34: } 24,
{ 35: } 25,
{ 36: } 27,
{ 37: } 27,
{ 38: } 27,
{ 39: } 27,
{ 40: } 27,
{ 41: } 27,
{ 42: } 27,
{ 43: } 27,
{ 44: } 27,
{ 45: } 27,
{ 46: } 27,
{ 47: } 27,
{ 48: } 28,
{ 49: } 28,
{ 50: } 28,
{ 51: } 28,
{ 52: } 28,
{ 53: } 28,
{ 54: } 28,
{ 55: } 29,
{ 56: } 30,
{ 57: } 31,
{ 58: } 32,
{ 59: } 33,
{ 60: } 34,
{ 61: } 35,
{ 62: } 36,
{ 63: } 37,
{ 64: } 38,
{ 65: } 39,
{ 66: } 39,
{ 67: } 39,
{ 68: } 39,
{ 69: } 39,
{ 70: } 39,
{ 71: } 39,
{ 72: } 39,
{ 73: } 39,
{ 74: } 39,
{ 75: } 39,
{ 76: } 39,
{ 77: } 39,
{ 78: } 39,
{ 79: } 40,
{ 80: } 40,
{ 81: } 40,
{ 82: } 40,
{ 83: } 41,
{ 84: } 41,
{ 85: } 41,
{ 86: } 42,
{ 87: } 42,
{ 88: } 42,
{ 89: } 43,
{ 90: } 44,
{ 91: } 45,
{ 92: } 46,
{ 93: } 46,
{ 94: } 47
);

yytl : array [0..yynstates-1] of Integer = (
{ 0: } 1,
{ 1: } 14,
{ 2: } 27,
{ 3: } 36,
{ 4: } 40,
{ 5: } 42,
{ 6: } 44,
{ 7: } 45,
{ 8: } 47,
{ 9: } 48,
{ 10: } 50,
{ 11: } 51,
{ 12: } 51,
{ 13: } 51,
{ 14: } 51,
{ 15: } 51,
{ 16: } 53,
{ 17: } 54,
{ 18: } 55,
{ 19: } 56,
{ 20: } 58,
{ 21: } 59,
{ 22: } 60,
{ 23: } 61,
{ 24: } 62,
{ 25: } 64,
{ 26: } 66,
{ 27: } 69,
{ 28: } 70,
{ 29: } 72,
{ 30: } 74,
{ 31: } 76,
{ 32: } 78,
{ 33: } 79,
{ 34: } 81,
{ 35: } 81,
{ 36: } 82,
{ 37: } 84,
{ 38: } 85,
{ 39: } 86,
{ 40: } 87,
{ 41: } 88,
{ 42: } 89,
{ 43: } 90,
{ 44: } 91,
{ 45: } 92,
{ 46: } 93,
{ 47: } 94,
{ 48: } 95,
{ 49: } 95,
{ 50: } 97,
{ 51: } 98,
{ 52: } 99,
{ 53: } 100,
{ 54: } 101,
{ 55: } 102,
{ 56: } 104,
{ 57: } 104,
{ 58: } 104,
{ 59: } 104,
{ 60: } 104,
{ 61: } 104,
{ 62: } 104,
{ 63: } 104,
{ 64: } 104,
{ 65: } 104,
{ 66: } 104,
{ 67: } 105,
{ 68: } 106,
{ 69: } 107,
{ 70: } 108,
{ 71: } 109,
{ 72: } 110,
{ 73: } 111,
{ 74: } 112,
{ 75: } 113,
{ 76: } 114,
{ 77: } 115,
{ 78: } 116,
{ 79: } 117,
{ 80: } 117,
{ 81: } 118,
{ 82: } 119,
{ 83: } 120,
{ 84: } 120,
{ 85: } 121,
{ 86: } 122,
{ 87: } 122,
{ 88: } 123,
{ 89: } 124,
{ 90: } 124,
{ 91: } 124,
{ 92: } 124,
{ 93: } 124,
{ 94: } 125
);

yyth : array [0..yynstates-1] of Integer = (
{ 0: } 13,
{ 1: } 26,
{ 2: } 35,
{ 3: } 39,
{ 4: } 41,
{ 5: } 43,
{ 6: } 44,
{ 7: } 46,
{ 8: } 47,
{ 9: } 49,
{ 10: } 50,
{ 11: } 50,
{ 12: } 50,
{ 13: } 50,
{ 14: } 50,
{ 15: } 52,
{ 16: } 53,
{ 17: } 54,
{ 18: } 55,
{ 19: } 57,
{ 20: } 58,
{ 21: } 59,
{ 22: } 60,
{ 23: } 61,
{ 24: } 63,
{ 25: } 65,
{ 26: } 68,
{ 27: } 69,
{ 28: } 71,
{ 29: } 73,
{ 30: } 75,
{ 31: } 77,
{ 32: } 78,
{ 33: } 80,
{ 34: } 80,
{ 35: } 81,
{ 36: } 83,
{ 37: } 84,
{ 38: } 85,
{ 39: } 86,
{ 40: } 87,
{ 41: } 88,
{ 42: } 89,
{ 43: } 90,
{ 44: } 91,
{ 45: } 92,
{ 46: } 93,
{ 47: } 94,
{ 48: } 94,
{ 49: } 96,
{ 50: } 97,
{ 51: } 98,
{ 52: } 99,
{ 53: } 100,
{ 54: } 101,
{ 55: } 103,
{ 56: } 103,
{ 57: } 103,
{ 58: } 103,
{ 59: } 103,
{ 60: } 103,
{ 61: } 103,
{ 62: } 103,
{ 63: } 103,
{ 64: } 103,
{ 65: } 103,
{ 66: } 104,
{ 67: } 105,
{ 68: } 106,
{ 69: } 107,
{ 70: } 108,
{ 71: } 109,
{ 72: } 110,
{ 73: } 111,
{ 74: } 112,
{ 75: } 113,
{ 76: } 114,
{ 77: } 115,
{ 78: } 116,
{ 79: } 116,
{ 80: } 117,
{ 81: } 118,
{ 82: } 119,
{ 83: } 119,
{ 84: } 120,
{ 85: } 121,
{ 86: } 121,
{ 87: } 122,
{ 88: } 123,
{ 89: } 123,
{ 90: } 123,
{ 91: } 123,
{ 92: } 123,
{ 93: } 124,
{ 94: } 124
);


var yyn : Integer;

label start, scan, action;

begin

start:

  (* initialize: *)

  yynew;

scan:

  (* mark positions and matches: *)

  for yyn := yykl[yystate] to     yykh[yystate] do yymark(yyk[yyn]);
  for yyn := yymh[yystate] downto yyml[yystate] do yymatch(yym[yyn]);

  if yytl[yystate]>yyth[yystate] then goto action; (* dead state *)

  (* get next character: *)

  yyscan;

  (* determine action: *)

  yyn := yytl[yystate];
  while (yyn<=yyth[yystate]) and not (yyactchar in yyt[yyn].cc) do inc(yyn);
  if yyn>yyth[yystate] then goto action;
    (* no transition on yyactchar in this state *)

  (* switch to new state: *)

  yystate := yyt[yyn].s;

  goto scan;

action:

  (* execute action: *)

  if yyfind(yyrule) then
    begin
      yyaction(yyrule);
      if yyreject then goto action;
    end
  else if not yydefault and yywrap() then
    begin
      yyclear;
      return(0);
    end;

  if not yydone then goto start;

  yylex := yyretval;

end(*yylex*);


