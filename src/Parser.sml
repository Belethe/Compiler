local
type t__1__ = (int*int)
type t__2__ = (int*int)
type t__3__ = bool*(int*int)
type t__4__ = (int*int)
type t__5__ = char*(int*int)
type t__6__ = (int*int)
type t__7__ = (int*int)
type t__8__ = (int*int)
type t__9__ = (int*int)
type t__10__ = (int*int)
type t__11__ = (int*int)
type t__12__ = (int*int)
type t__13__ = (int*int)
type t__14__ = (int*int)
type t__15__ = (int*int)
type t__16__ = string*(int*int)
type t__17__ = (int*int)
type t__18__ = (int*int)
type t__19__ = (int*int)
type t__20__ = (int*int)
type t__21__ = (int*int)
type t__22__ = (int*int)
type t__23__ = (int*int)
type t__24__ = (int*int)
type t__25__ = (int*int)
type t__26__ = (int*int)
type t__27__ = (int*int)
type t__28__ = (int*int)
type t__29__ = (int*int)
type t__30__ = int*(int*int)
type t__31__ = (int*int)
type t__32__ = (int*int)
type t__33__ = (int*int)
type t__34__ = (int*int)
type t__35__ = (int*int)
type t__36__ = (int*int)
type t__37__ = (int*int)
type t__38__ = (int*int)
type t__39__ = (int*int)
type t__40__ = (int*int)
type t__41__ = (int*int)
type t__42__ = string*(int*int)
type t__43__ = (int*int)
type t__44__ = (int*int)
type t__45__ = (int*int)
type t__46__ = (int*int)
in
datatype token =
    AND of t__1__
  | BOOL of t__2__
  | BOOLLIT of t__3__
  | CHAR of t__4__
  | CHARLIT of t__5__
  | COMMA of t__6__
  | DEQ of t__7__
  | DIVIDE of t__8__
  | ELSE of t__9__
  | EOF of t__10__
  | EQ of t__11__
  | FALSE of t__12__
  | FILTER of t__13__
  | FN of t__14__
  | FUN of t__15__
  | ID of t__16__
  | IF of t__17__
  | IN of t__18__
  | INT of t__19__
  | IOTA of t__20__
  | LBRACKET of t__21__
  | LCURLY of t__22__
  | LET of t__23__
  | LPAR of t__24__
  | LTH of t__25__
  | MAP of t__26__
  | MINUS of t__27__
  | NEGATE of t__28__
  | NOT of t__29__
  | NUM of t__30__
  | OP of t__31__
  | OR of t__32__
  | PLUS of t__33__
  | RARROW of t__34__
  | RBRACKET of t__35__
  | RCURLY of t__36__
  | READ of t__37__
  | REDUCE of t__38__
  | REPLICATE of t__39__
  | RPAR of t__40__
  | SCAN of t__41__
  | STRINGLIT of t__42__
  | THEN of t__43__
  | TIMES of t__44__
  | TRUE of t__45__
  | WRITE of t__46__
end;

open Obj Parsing;
prim_val vector_ : int -> 'a -> 'a Vector.vector = 2 "make_vect";
prim_val update_ : 'a Vector.vector -> int -> 'a -> unit = 3 "set_vect_item";


(* A parser definition for Fasto, for use with mosmlyac. *)

open Fasto
open Fasto.UnknownTypes

(* Line 12, file Parser.sml *)
val yytransl = #[
  257 (* AND *),
  258 (* BOOL *),
  259 (* BOOLLIT *),
  260 (* CHAR *),
  261 (* CHARLIT *),
  262 (* COMMA *),
  263 (* DEQ *),
  264 (* DIVIDE *),
  265 (* ELSE *),
  266 (* EOF *),
  267 (* EQ *),
  268 (* FALSE *),
  269 (* FILTER *),
  270 (* FN *),
  271 (* FUN *),
  272 (* ID *),
  273 (* IF *),
  274 (* IN *),
  275 (* INT *),
  276 (* IOTA *),
  277 (* LBRACKET *),
  278 (* LCURLY *),
  279 (* LET *),
  280 (* LPAR *),
  281 (* LTH *),
  282 (* MAP *),
  283 (* MINUS *),
  284 (* NEGATE *),
  285 (* NOT *),
  286 (* NUM *),
  287 (* OP *),
  288 (* OR *),
  289 (* PLUS *),
  290 (* RARROW *),
  291 (* RBRACKET *),
  292 (* RCURLY *),
  293 (* READ *),
  294 (* REDUCE *),
  295 (* REPLICATE *),
  296 (* RPAR *),
  297 (* SCAN *),
  298 (* STRINGLIT *),
  299 (* THEN *),
  300 (* TIMES *),
  301 (* TRUE *),
  302 (* WRITE *),
    0];

val yylhs = "\255\255\
\\001\000\002\000\002\000\003\000\003\000\004\000\004\000\004\000\
\\004\000\005\000\005\000\009\000\006\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\007\000\007\000\008\000\008\000\000\000";

val yylen = "\002\000\
\\002\000\003\000\002\000\007\000\006\000\001\000\001\000\001\000\
\\003\000\004\000\002\000\001\000\001\000\001\000\001\000\001\000\
\\001\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\\003\000\003\000\002\000\002\000\006\000\004\000\003\000\004\000\
\\004\000\004\000\006\000\008\000\008\000\006\000\006\000\009\000\
\\003\000\006\000\004\000\003\000\001\000\001\000\007\000\002\000";

val yydefred = "\000\000\
\\000\000\000\000\000\000\048\000\000\000\007\000\008\000\006\000\
\\000\000\000\000\000\000\001\000\000\000\002\000\000\000\009\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\015\000\
\\014\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\013\000\000\000\000\000\000\000\000\000\
\\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\010\000\000\000\
\\000\000\046\000\000\000\000\000\031\000\000\000\000\000\000\000\
\\000\000\018\000\000\000\041\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\043\000\030\000\000\000\
\\034\000\044\000\000\000\000\000\032\000\012\000\000\000\000\000\
\\000\000\000\000\033\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\039\000\000\000\000\000\
\\038\000\000\000\000\000\035\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\036\000\037\000\000\000\040\000";

val yydgoto = "\002\000\
\\004\000\005\000\010\000\019\000\020\000\051\000\052\000\075\000\
\\111\000";

val yysindex = "\008\000\
\\002\255\000\000\001\255\000\000\013\255\000\000\000\000\000\000\
\\001\255\002\255\011\255\000\000\253\254\000\000\009\255\000\000\
\\034\255\026\255\053\255\035\255\133\255\070\255\068\255\000\000\
\\000\000\057\255\044\255\133\255\061\255\133\255\072\255\133\255\
\\062\255\133\255\133\255\000\000\065\255\066\255\071\255\075\255\
\\000\000\078\255\042\001\001\255\133\255\050\255\133\255\102\255\
\\027\255\133\255\076\255\058\255\085\255\064\000\050\255\000\000\
\\219\255\001\255\047\255\133\255\050\255\133\255\133\255\133\255\
\\133\255\133\255\133\255\133\255\133\255\133\255\000\000\042\001\
\\001\255\000\000\098\255\087\000\000\000\073\255\133\255\073\000\
\\133\255\000\000\133\255\000\000\100\255\081\255\083\255\105\255\
\\117\000\117\255\108\000\219\255\023\255\000\000\023\255\252\254\
\\187\255\252\254\000\000\103\255\133\255\000\000\000\000\138\000\
\\000\000\000\000\159\000\133\255\000\000\000\000\123\255\133\255\
\\133\255\133\255\000\000\001\255\168\000\133\255\133\255\182\000\
\\133\255\172\000\210\000\224\000\093\255\000\000\042\001\042\001\
\\000\000\233\000\133\255\000\000\133\255\101\255\133\255\254\000\
\\007\001\133\255\021\001\000\000\000\000\042\001\000\000";

val yyrindex = "\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\124\255\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\097\255\000\000\000\000\
\\000\000\000\000\175\255\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\006\255\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\235\254\000\000\000\000\000\000\000\000\215\255\
\\166\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\015\255\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\185\001\121\001\003\000\153\001\070\001\
\\198\001\108\001\043\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\209\001\233\001\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\139\255\000\000";

val yygindex = "\000\000\
\\000\000\137\000\000\000\255\255\213\255\235\255\226\255\207\255\
\\000\000";

val YYTABLESIZE = 788;
val yytable = "\043\000\
\\071\000\011\000\006\000\065\000\007\000\085\000\049\000\013\000\
\\001\000\088\000\054\000\090\000\056\000\057\000\045\000\005\000\
\\003\000\078\000\045\000\008\000\005\000\009\000\012\000\072\000\
\\004\000\076\000\015\000\063\000\080\000\004\000\065\000\016\000\
\\017\000\064\000\065\000\006\000\021\000\007\000\089\000\070\000\
\\091\000\092\000\093\000\094\000\095\000\096\000\097\000\098\000\
\\099\000\067\000\106\000\066\000\008\000\067\000\009\000\069\000\
\\086\000\104\000\068\000\069\000\073\000\107\000\074\000\073\000\
\\047\000\074\000\070\000\048\000\022\000\079\000\070\000\100\000\
\\125\000\018\000\023\000\044\000\063\000\087\000\045\000\117\000\
\\046\000\081\000\064\000\065\000\050\000\055\000\120\000\053\000\
\\058\000\059\000\122\000\123\000\124\000\082\000\060\000\083\000\
\\127\000\128\000\061\000\130\000\066\000\062\000\067\000\101\000\
\\024\000\108\000\025\000\068\000\069\000\136\000\112\000\137\000\
\\103\000\139\000\026\000\110\000\142\000\027\000\028\000\070\000\
\\109\000\029\000\114\000\030\000\031\000\032\000\116\000\033\000\
\\121\000\034\000\035\000\036\000\134\000\003\000\138\000\024\000\
\\011\000\025\000\037\000\038\000\039\000\077\000\040\000\041\000\
\\047\000\026\000\014\000\042\000\027\000\028\000\000\000\000\000\
\\029\000\000\000\030\000\031\000\032\000\000\000\033\000\000\000\
\\034\000\035\000\036\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\037\000\038\000\039\000\000\000\040\000\041\000\017\000\
\\000\000\000\000\042\000\000\000\017\000\017\000\017\000\017\000\
\\017\000\000\000\000\000\063\000\000\000\017\000\000\000\000\000\
\\017\000\064\000\065\000\000\000\000\000\000\000\000\000\017\000\
\\000\000\017\000\000\000\000\000\000\000\000\000\017\000\017\000\
\\000\000\017\000\017\000\066\000\000\000\067\000\017\000\028\000\
\\000\000\017\000\017\000\069\000\028\000\028\000\028\000\028\000\
\\028\000\064\000\065\000\000\000\000\000\028\000\070\000\000\000\
\\028\000\000\000\000\000\000\000\000\000\000\000\000\000\028\000\
\\000\000\028\000\000\000\066\000\000\000\067\000\028\000\028\000\
\\000\000\028\000\028\000\069\000\000\000\000\000\028\000\000\000\
\\000\000\028\000\028\000\022\000\000\000\000\000\070\000\000\000\
\\022\000\022\000\022\000\022\000\022\000\000\000\000\000\000\000\
\\000\000\022\000\000\000\000\000\022\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\022\000\000\000\022\000\000\000\000\000\
\\000\000\000\000\022\000\022\000\000\000\022\000\022\000\000\000\
\\000\000\000\000\022\000\021\000\000\000\022\000\022\000\000\000\
\\021\000\021\000\021\000\021\000\021\000\000\000\000\000\000\000\
\\000\000\021\000\000\000\000\000\021\000\000\000\000\000\000\000\
\\063\000\000\000\000\000\021\000\000\000\021\000\064\000\065\000\
\\000\000\063\000\021\000\021\000\000\000\021\000\021\000\064\000\
\\065\000\000\000\021\000\000\000\000\000\021\000\021\000\063\000\
\\066\000\000\000\067\000\000\000\000\000\064\000\065\000\068\000\
\\069\000\066\000\000\000\067\000\000\000\000\000\000\000\084\000\
\\068\000\069\000\000\000\070\000\063\000\000\000\000\000\066\000\
\\105\000\067\000\064\000\065\000\070\000\063\000\068\000\069\000\
\\000\000\102\000\113\000\064\000\065\000\000\000\000\000\000\000\
\\000\000\000\000\070\000\000\000\066\000\000\000\067\000\000\000\
\\000\000\000\000\063\000\068\000\069\000\066\000\000\000\067\000\
\\064\000\065\000\118\000\115\000\068\000\069\000\000\000\070\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\063\000\
\\070\000\000\000\066\000\000\000\067\000\064\000\065\000\000\000\
\\063\000\068\000\069\000\000\000\063\000\000\000\064\000\065\000\
\\119\000\131\000\064\000\065\000\000\000\070\000\063\000\066\000\
\\000\000\067\000\000\000\000\000\064\000\065\000\068\000\069\000\
\\066\000\000\000\067\000\000\000\066\000\000\000\067\000\068\000\
\\069\000\000\000\070\000\068\000\069\000\000\000\066\000\126\000\
\\067\000\000\000\063\000\070\000\000\000\068\000\069\000\070\000\
\\064\000\065\000\000\000\000\000\000\000\129\000\000\000\000\000\
\\063\000\070\000\000\000\000\000\000\000\133\000\064\000\065\000\
\\000\000\063\000\066\000\000\000\067\000\000\000\135\000\064\000\
\\065\000\068\000\069\000\000\000\000\000\000\000\000\000\000\000\
\\066\000\132\000\067\000\000\000\000\000\070\000\063\000\068\000\
\\069\000\066\000\000\000\067\000\064\000\065\000\000\000\063\000\
\\068\000\069\000\000\000\070\000\000\000\064\000\065\000\000\000\
\\000\000\000\000\000\000\000\000\070\000\063\000\066\000\000\000\
\\067\000\000\000\000\000\064\000\065\000\068\000\069\000\066\000\
\\000\000\067\000\000\000\000\000\000\000\140\000\068\000\069\000\
\\000\000\070\000\063\000\000\000\000\000\066\000\141\000\067\000\
\\064\000\065\000\070\000\000\000\068\000\069\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\143\000\000\000\000\000\000\000\
\\070\000\000\000\066\000\000\000\067\000\000\000\020\000\000\000\
\\000\000\068\000\069\000\020\000\020\000\000\000\020\000\020\000\
\\000\000\000\000\000\000\000\000\020\000\070\000\000\000\020\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\020\000\000\000\
\\020\000\000\000\000\000\000\000\000\000\020\000\020\000\000\000\
\\020\000\020\000\000\000\000\000\019\000\020\000\000\000\000\000\
\\020\000\019\000\019\000\000\000\019\000\019\000\000\000\000\000\
\\000\000\025\000\019\000\000\000\000\000\019\000\025\000\025\000\
\\000\000\025\000\025\000\000\000\019\000\000\000\019\000\025\000\
\\000\000\000\000\025\000\019\000\019\000\000\000\019\000\019\000\
\\000\000\025\000\000\000\019\000\000\000\000\000\019\000\000\000\
\\025\000\026\000\000\000\025\000\025\000\000\000\026\000\026\000\
\\025\000\026\000\026\000\025\000\000\000\000\000\027\000\026\000\
\\000\000\000\000\026\000\027\000\000\000\000\000\027\000\027\000\
\\000\000\026\000\000\000\000\000\027\000\000\000\000\000\027\000\
\\026\000\023\000\000\000\026\000\026\000\000\000\023\000\000\000\
\\026\000\023\000\023\000\026\000\000\000\027\000\000\000\023\000\
\\027\000\027\000\023\000\024\000\000\000\027\000\024\000\024\000\
\\027\000\000\000\000\000\000\000\024\000\000\000\029\000\024\000\
\\023\000\029\000\029\000\023\000\023\000\000\000\000\000\029\000\
\\023\000\000\000\029\000\023\000\000\000\024\000\000\000\000\000\
\\024\000\024\000\000\000\000\000\000\000\024\000\042\000\000\000\
\\024\000\042\000\042\000\029\000\029\000\000\000\000\000\042\000\
\\029\000\000\000\042\000\029\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\042\000\042\000\000\000\000\000\000\000\
\\042\000\000\000\000\000\042\000";

val yycheck = "\021\000\
\\044\000\003\000\002\001\008\001\004\001\055\000\028\000\009\000\
\\001\000\059\000\032\000\061\000\034\000\035\000\036\001\010\001\
\\015\001\048\000\040\001\019\001\015\001\021\001\010\001\045\000\
\\010\001\047\000\016\001\001\001\050\000\015\001\008\001\035\001\
\\024\001\007\001\008\001\002\001\011\001\004\001\060\000\044\001\
\\062\000\063\000\064\000\065\000\066\000\067\000\068\000\069\000\
\\070\000\027\001\081\000\025\001\019\001\027\001\021\001\033\001\
\\058\000\079\000\032\001\033\001\014\001\083\000\016\001\014\001\
\\021\001\016\001\044\001\024\001\016\001\043\001\044\001\073\000\
\\116\000\040\001\040\001\006\001\001\001\031\001\011\001\101\000\
\\024\001\006\001\007\001\008\001\024\001\024\001\108\000\016\001\
\\024\001\024\001\112\000\113\000\114\000\036\001\024\001\011\001\
\\118\000\119\000\024\001\121\000\025\001\024\001\027\001\006\001\
\\003\001\006\001\005\001\032\001\033\001\131\000\006\001\133\000\
\\040\001\135\000\013\001\033\001\138\000\016\001\017\001\044\001\
\\040\001\020\001\006\001\022\001\023\001\024\001\024\001\026\001\
\\006\001\028\001\029\001\030\001\040\001\010\001\034\001\003\001\
\\040\001\005\001\037\001\038\001\039\001\040\001\041\001\042\001\
\\006\001\013\001\010\000\046\001\016\001\017\001\255\255\255\255\
\\020\001\255\255\022\001\023\001\024\001\255\255\026\001\255\255\
\\028\001\029\001\030\001\255\255\255\255\255\255\255\255\255\255\
\\255\255\037\001\038\001\039\001\255\255\041\001\042\001\001\001\
\\255\255\255\255\046\001\255\255\006\001\007\001\008\001\009\001\
\\010\001\255\255\255\255\001\001\255\255\015\001\255\255\255\255\
\\018\001\007\001\008\001\255\255\255\255\255\255\255\255\025\001\
\\255\255\027\001\255\255\255\255\255\255\255\255\032\001\033\001\
\\255\255\035\001\036\001\025\001\255\255\027\001\040\001\001\001\
\\255\255\043\001\044\001\033\001\006\001\007\001\008\001\009\001\
\\010\001\007\001\008\001\255\255\255\255\015\001\044\001\255\255\
\\018\001\255\255\255\255\255\255\255\255\255\255\255\255\025\001\
\\255\255\027\001\255\255\025\001\255\255\027\001\032\001\033\001\
\\255\255\035\001\036\001\033\001\255\255\255\255\040\001\255\255\
\\255\255\043\001\044\001\001\001\255\255\255\255\044\001\255\255\
\\006\001\007\001\008\001\009\001\010\001\255\255\255\255\255\255\
\\255\255\015\001\255\255\255\255\018\001\255\255\255\255\255\255\
\\255\255\255\255\255\255\025\001\255\255\027\001\255\255\255\255\
\\255\255\255\255\032\001\033\001\255\255\035\001\036\001\255\255\
\\255\255\255\255\040\001\001\001\255\255\043\001\044\001\255\255\
\\006\001\007\001\008\001\009\001\010\001\255\255\255\255\255\255\
\\255\255\015\001\255\255\255\255\018\001\255\255\255\255\255\255\
\\001\001\255\255\255\255\025\001\255\255\027\001\007\001\008\001\
\\255\255\001\001\032\001\033\001\255\255\035\001\036\001\007\001\
\\008\001\255\255\040\001\255\255\255\255\043\001\044\001\001\001\
\\025\001\255\255\027\001\255\255\255\255\007\001\008\001\032\001\
\\033\001\025\001\255\255\027\001\255\255\255\255\255\255\040\001\
\\032\001\033\001\255\255\044\001\001\001\255\255\255\255\025\001\
\\040\001\027\001\007\001\008\001\044\001\001\001\032\001\033\001\
\\255\255\035\001\006\001\007\001\008\001\255\255\255\255\255\255\
\\255\255\255\255\044\001\255\255\025\001\255\255\027\001\255\255\
\\255\255\255\255\001\001\032\001\033\001\025\001\255\255\027\001\
\\007\001\008\001\009\001\040\001\032\001\033\001\255\255\044\001\
\\255\255\255\255\255\255\255\255\255\255\255\255\255\255\001\001\
\\044\001\255\255\025\001\255\255\027\001\007\001\008\001\255\255\
\\001\001\032\001\033\001\255\255\001\001\255\255\007\001\008\001\
\\018\001\006\001\007\001\008\001\255\255\044\001\001\001\025\001\
\\255\255\027\001\255\255\255\255\007\001\008\001\032\001\033\001\
\\025\001\255\255\027\001\255\255\025\001\255\255\027\001\032\001\
\\033\001\255\255\044\001\032\001\033\001\255\255\025\001\040\001\
\\027\001\255\255\001\001\044\001\255\255\032\001\033\001\044\001\
\\007\001\008\001\255\255\255\255\255\255\040\001\255\255\255\255\
\\001\001\044\001\255\255\255\255\255\255\006\001\007\001\008\001\
\\255\255\001\001\025\001\255\255\027\001\255\255\006\001\007\001\
\\008\001\032\001\033\001\255\255\255\255\255\255\255\255\255\255\
\\025\001\040\001\027\001\255\255\255\255\044\001\001\001\032\001\
\\033\001\025\001\255\255\027\001\007\001\008\001\255\255\001\001\
\\032\001\033\001\255\255\044\001\255\255\007\001\008\001\255\255\
\\255\255\255\255\255\255\255\255\044\001\001\001\025\001\255\255\
\\027\001\255\255\255\255\007\001\008\001\032\001\033\001\025\001\
\\255\255\027\001\255\255\255\255\255\255\040\001\032\001\033\001\
\\255\255\044\001\001\001\255\255\255\255\025\001\040\001\027\001\
\\007\001\008\001\044\001\255\255\032\001\033\001\255\255\255\255\
\\255\255\255\255\255\255\255\255\040\001\255\255\255\255\255\255\
\\044\001\255\255\025\001\255\255\027\001\255\255\001\001\255\255\
\\255\255\032\001\033\001\006\001\007\001\255\255\009\001\010\001\
\\255\255\255\255\255\255\255\255\015\001\044\001\255\255\018\001\
\\255\255\255\255\255\255\255\255\255\255\255\255\025\001\255\255\
\\027\001\255\255\255\255\255\255\255\255\032\001\033\001\255\255\
\\035\001\036\001\255\255\255\255\001\001\040\001\255\255\255\255\
\\043\001\006\001\007\001\255\255\009\001\010\001\255\255\255\255\
\\255\255\001\001\015\001\255\255\255\255\018\001\006\001\007\001\
\\255\255\009\001\010\001\255\255\025\001\255\255\027\001\015\001\
\\255\255\255\255\018\001\032\001\033\001\255\255\035\001\036\001\
\\255\255\025\001\255\255\040\001\255\255\255\255\043\001\255\255\
\\032\001\001\001\255\255\035\001\036\001\255\255\006\001\007\001\
\\040\001\009\001\010\001\043\001\255\255\255\255\001\001\015\001\
\\255\255\255\255\018\001\006\001\255\255\255\255\009\001\010\001\
\\255\255\025\001\255\255\255\255\015\001\255\255\255\255\018\001\
\\032\001\001\001\255\255\035\001\036\001\255\255\006\001\255\255\
\\040\001\009\001\010\001\043\001\255\255\032\001\255\255\015\001\
\\035\001\036\001\018\001\006\001\255\255\040\001\009\001\010\001\
\\043\001\255\255\255\255\255\255\015\001\255\255\006\001\018\001\
\\032\001\009\001\010\001\035\001\036\001\255\255\255\255\015\001\
\\040\001\255\255\018\001\043\001\255\255\032\001\255\255\255\255\
\\035\001\036\001\255\255\255\255\255\255\040\001\006\001\255\255\
\\043\001\009\001\010\001\035\001\036\001\255\255\255\255\015\001\
\\040\001\255\255\018\001\043\001\255\255\255\255\255\255\255\255\
\\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\\255\255\255\255\255\255\035\001\036\001\255\255\255\255\255\255\
\\040\001\255\255\255\255\043\001";

val yyact = vector_ 49 (fn () => ((raise Fail "parser") : obj));
(* Rule 1, file Parser.grm, line 48 *)
val _ = update_ yyact 1
(fn () => repr(let
val d__1__ = peekVal 1 : Fasto.UnknownTypes.FunDec list
val d__2__ = peekVal 0 : (int*int)
in
( (d__1__) ) end : Fasto.UnknownTypes.Prog))
;
(* Rule 2, file Parser.grm, line 51 *)
val _ = update_ yyact 2
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : Fasto.UnknownTypes.FunDec
val d__3__ = peekVal 0 : Fasto.UnknownTypes.FunDec list
in
( (d__2__) :: (d__3__) ) end : Fasto.UnknownTypes.FunDec list))
;
(* Rule 3, file Parser.grm, line 52 *)
val _ = update_ yyact 3
(fn () => repr(let
val d__1__ = peekVal 1 : (int*int)
val d__2__ = peekVal 0 : Fasto.UnknownTypes.FunDec
in
( (d__2__) :: [] ) end : Fasto.UnknownTypes.FunDec list))
;
(* Rule 4, file Parser.grm, line 56 *)
val _ = update_ yyact 4
(fn () => repr(let
val d__1__ = peekVal 6 : Fasto.Type
val d__2__ = peekVal 5 : string*(int*int)
val d__3__ = peekVal 4 : (int*int)
val d__4__ = peekVal 3 : Fasto.Param list
val d__5__ = peekVal 2 : (int*int)
val d__6__ = peekVal 1 : (int*int)
val d__7__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( FunDec (#1 (d__2__), (d__1__), (d__4__), (d__7__), #2 (d__2__)) ) end : Fasto.UnknownTypes.FunDec))
;
(* Rule 5, file Parser.grm, line 58 *)
val _ = update_ yyact 5
(fn () => repr(let
val d__1__ = peekVal 5 : Fasto.Type
val d__2__ = peekVal 4 : string*(int*int)
val d__3__ = peekVal 3 : (int*int)
val d__4__ = peekVal 2 : (int*int)
val d__5__ = peekVal 1 : (int*int)
val d__6__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( FunDec (#1 (d__2__), (d__1__), [], (d__6__), #2 (d__2__)) ) end : Fasto.UnknownTypes.FunDec))
;
(* Rule 6, file Parser.grm, line 61 *)
val _ = update_ yyact 6
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( Int ) end : Fasto.Type))
;
(* Rule 7, file Parser.grm, line 62 *)
val _ = update_ yyact 7
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( Bool ) end : Fasto.Type))
;
(* Rule 8, file Parser.grm, line 63 *)
val _ = update_ yyact 8
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( Char ) end : Fasto.Type))
;
(* Rule 9, file Parser.grm, line 64 *)
val _ = update_ yyact 9
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : Fasto.Type
val d__3__ = peekVal 0 : (int*int)
in
( Array (d__2__) ) end : Fasto.Type))
;
(* Rule 10, file Parser.grm, line 67 *)
val _ = update_ yyact 10
(fn () => repr(let
val d__1__ = peekVal 3 : Fasto.Type
val d__2__ = peekVal 2 : string*(int*int)
val d__3__ = peekVal 1 : (int*int)
val d__4__ = peekVal 0 : Fasto.Param list
in
( Param (#1 (d__2__), (d__1__)) :: (d__4__) ) end : Fasto.Param list))
;
(* Rule 11, file Parser.grm, line 68 *)
val _ = update_ yyact 11
(fn () => repr(let
val d__1__ = peekVal 1 : Fasto.Type
val d__2__ = peekVal 0 : string*(int*int)
in
( Param (#1 (d__2__), (d__1__)) :: [] ) end : Fasto.Param list))
;
(* Rule 12, file Parser.grm, line 71 *)
val _ = update_ yyact 12
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( (Lambda
                           (Int, [Param ("x", Int),
                                        Param ("y", Int)],
                            Plus (Var ("x", (d__1__)),
                                        Var ("y", (d__1__)),
                                        (d__1__)) ,(d__1__)))
                        ) end : Fasto.UnknownTypes.FunArg))
;
(* Rule 13, file Parser.grm, line 80 *)
val _ = update_ yyact 13
(fn () => repr(let
val d__1__ = peekVal 0 : int*(int*int)
in
( Constant (IntVal (#1 (d__1__)), #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 14, file Parser.grm, line 81 *)
val _ = update_ yyact 14
(fn () => repr(let
val d__1__ = peekVal 0 : char*(int*int)
in
( Constant (CharVal (#1 (d__1__)), #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 15, file Parser.grm, line 82 *)
val _ = update_ yyact 15
(fn () => repr(let
val d__1__ = peekVal 0 : bool*(int*int)
in
( Constant (BoolVal (#1 (d__1__)), #2 (d__1__))  ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 16, file Parser.grm, line 83 *)
val _ = update_ yyact 16
(fn () => repr(let
val d__1__ = peekVal 0 : string*(int*int)
in
( StringLit (d__1__) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 17, file Parser.grm, line 84 *)
val _ = update_ yyact 17
(fn () => repr(let
val d__1__ = peekVal 0 : string*(int*int)
in
( Var (d__1__) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 18, file Parser.grm, line 85 *)
val _ = update_ yyact 18
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : Fasto.UnknownTypes.Exp list
val d__3__ = peekVal 0 : (int*int)
in
( ArrayLit ((d__2__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 19, file Parser.grm, line 86 *)
val _ = update_ yyact 19
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Plus ((d__1__), (d__3__), (d__2__))  ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 20, file Parser.grm, line 87 *)
val _ = update_ yyact 20
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Minus((d__1__), (d__3__), (d__2__))  ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 21, file Parser.grm, line 88 *)
val _ = update_ yyact 21
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Times((d__1__), (d__3__), (d__2__))  ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 22, file Parser.grm, line 89 *)
val _ = update_ yyact 22
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Divide((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 23, file Parser.grm, line 90 *)
val _ = update_ yyact 23
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( And((d__1__), (d__3__), (d__2__))    ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 24, file Parser.grm, line 91 *)
val _ = update_ yyact 24
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Or((d__1__), (d__3__), (d__2__))     ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 25, file Parser.grm, line 92 *)
val _ = update_ yyact 25
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Equal((d__1__), (d__3__), (d__2__))  ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 26, file Parser.grm, line 93 *)
val _ = update_ yyact 26
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Less ((d__1__), (d__3__), (d__2__))  ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 27, file Parser.grm, line 94 *)
val _ = update_ yyact 27
(fn () => repr(let
val d__1__ = peekVal 1 : (int*int)
val d__2__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Not((d__2__), (d__1__))        ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 28, file Parser.grm, line 95 *)
val _ = update_ yyact 28
(fn () => repr(let
val d__1__ = peekVal 1 : (int*int)
val d__2__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Negate((d__2__), (d__1__))     ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 29, file Parser.grm, line 97 *)
val _ = update_ yyact 29
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : Fasto.UnknownTypes.Exp
val d__3__ = peekVal 3 : (int*int)
val d__4__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__5__ = peekVal 1 : (int*int)
val d__6__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( If ((d__2__), (d__4__), (d__6__), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 30, file Parser.grm, line 99 *)
val _ = update_ yyact 30
(fn () => repr(let
val d__1__ = peekVal 3 : string*(int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.UnknownTypes.Exp list
val d__4__ = peekVal 0 : (int*int)
in
( Apply (#1 (d__1__), (d__3__), #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 31, file Parser.grm, line 101 *)
val _ = update_ yyact 31
(fn () => repr(let
val d__1__ = peekVal 2 : string*(int*int)
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : (int*int)
in
( Apply (#1 (d__1__), [], #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 32, file Parser.grm, line 104 *)
val _ = update_ yyact 32
(fn () => repr(let
val d__1__ = peekVal 3 : (int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.Type
val d__4__ = peekVal 0 : (int*int)
in
( Read ((d__3__), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 33, file Parser.grm, line 106 *)
val _ = update_ yyact 33
(fn () => repr(let
val d__1__ = peekVal 3 : (int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__4__ = peekVal 0 : (int*int)
in
( Write ((d__3__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 34, file Parser.grm, line 108 *)
val _ = update_ yyact 34
(fn () => repr(let
val d__1__ = peekVal 3 : (int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__4__ = peekVal 0 : (int*int)
in
( Iota ((d__3__), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 35, file Parser.grm, line 110 *)
val _ = update_ yyact 35
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : (int*int)
val d__3__ = peekVal 3 : Fasto.UnknownTypes.Exp
val d__4__ = peekVal 2 : (int*int)
val d__5__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__6__ = peekVal 0 : (int*int)
in
( Replicate ((d__3__), (d__5__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 36, file Parser.grm, line 112 *)
val _ = update_ yyact 36
(fn () => repr(let
val d__1__ = peekVal 7 : (int*int)
val d__2__ = peekVal 6 : (int*int)
val d__3__ = peekVal 5 : Fasto.UnknownTypes.FunArg
val d__4__ = peekVal 4 : (int*int)
val d__5__ = peekVal 3 : Fasto.UnknownTypes.Exp
val d__6__ = peekVal 2 : (int*int)
val d__7__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__8__ = peekVal 0 : (int*int)
in
( Reduce ((d__3__), (d__5__), (d__7__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 37, file Parser.grm, line 114 *)
val _ = update_ yyact 37
(fn () => repr(let
val d__1__ = peekVal 7 : (int*int)
val d__2__ = peekVal 6 : (int*int)
val d__3__ = peekVal 5 : Fasto.UnknownTypes.FunArg
val d__4__ = peekVal 4 : (int*int)
val d__5__ = peekVal 3 : Fasto.UnknownTypes.Exp
val d__6__ = peekVal 2 : (int*int)
val d__7__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__8__ = peekVal 0 : (int*int)
in
( Scan ((d__3__), (d__5__), (d__7__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 38, file Parser.grm, line 116 *)
val _ = update_ yyact 38
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : (int*int)
val d__3__ = peekVal 3 : Fasto.UnknownTypes.FunArg
val d__4__ = peekVal 2 : (int*int)
val d__5__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__6__ = peekVal 0 : (int*int)
in
( Map ((d__3__), (d__5__), (), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 39, file Parser.grm, line 118 *)
val _ = update_ yyact 39
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : (int*int)
val d__3__ = peekVal 3 : Fasto.UnknownTypes.FunArg
val d__4__ = peekVal 2 : (int*int)
val d__5__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__6__ = peekVal 0 : (int*int)
in
( Filter ((d__3__), (d__5__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 40, file Parser.grm, line 120 *)
val _ = update_ yyact 40
(fn () => repr(let
val d__1__ = peekVal 8 : (int*int)
val d__2__ = peekVal 7 : (int*int)
val d__3__ = peekVal 6 : (int*int)
val d__4__ = peekVal 5 : Fasto.UnknownTypes.FunArg
val d__5__ = peekVal 4 : (int*int)
val d__6__ = peekVal 3 : Fasto.UnknownTypes.Exp
val d__7__ = peekVal 2 : (int*int)
val d__8__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__9__ = peekVal 0 : (int*int)
in
( Reduce ((d__4__), (d__6__), (d__8__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 41, file Parser.grm, line 121 *)
val _ = update_ yyact 41
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__3__ = peekVal 0 : (int*int)
in
( (d__2__) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 42, file Parser.grm, line 123 *)
val _ = update_ yyact 42
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : string*(int*int)
val d__3__ = peekVal 3 : (int*int)
val d__4__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__5__ = peekVal 1 : (int*int)
val d__6__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Let (Dec (#1 (d__2__), (d__4__), (d__3__)), (d__6__), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 43, file Parser.grm, line 125 *)
val _ = update_ yyact 43
(fn () => repr(let
val d__1__ = peekVal 3 : string*(int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__4__ = peekVal 0 : (int*int)
in
( Index (#1 (d__1__), (d__3__), (), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 44, file Parser.grm, line 128 *)
val _ = update_ yyact 44
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp list
in
( (d__1__) :: (d__3__) ) end : Fasto.UnknownTypes.Exp list))
;
(* Rule 45, file Parser.grm, line 129 *)
val _ = update_ yyact 45
(fn () => repr(let
val d__1__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( (d__1__) :: [] ) end : Fasto.UnknownTypes.Exp list))
;
(* Rule 46, file Parser.grm, line 132 *)
val _ = update_ yyact 46
(fn () => repr(let
val d__1__ = peekVal 0 : string*(int*int)
in
( FunName (#1 (d__1__)) ) end : Fasto.UnknownTypes.FunArg))
;
(* Rule 47, file Parser.grm, line 133 *)
val _ = update_ yyact 47
(fn () => repr(let
val d__1__ = peekVal 6 : (int*int)
val d__2__ = peekVal 5 : Fasto.Type
val d__3__ = peekVal 4 : (int*int)
val d__4__ = peekVal 3 : Fasto.Param list
val d__5__ = peekVal 2 : (int*int)
val d__6__ = peekVal 1 : (int*int)
val d__7__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Lambda ((d__2__), (d__4__), (d__7__), (d__1__)) ) end : Fasto.UnknownTypes.FunArg))
;
(* Entry Prog *)
val _ = update_ yyact 48 (fn () => raise yyexit (peekVal 0));
val yytables : parseTables =
  ( yyact,
    yytransl,
    yylhs,
    yylen,
    yydefred,
    yydgoto,
    yysindex,
    yyrindex,
    yygindex,
    YYTABLESIZE,
    yytable,
    yycheck );
fun Prog lexer lexbuf = yyparse yytables 1 lexer lexbuf;
