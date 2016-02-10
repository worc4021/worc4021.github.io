(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 9.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1063,         20]
NotebookDataLength[    476814,      10211]
NotebookOptionsPosition[    476094,      10168]
NotebookOutlinePosition[    476646,      10191]
CellTagsIndexPosition[    476603,      10188]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"Unprotect", "[", 
   RowBox[{"LessEqual", ",", "GreaterEqual", ",", "Equal"}], "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SetAttributes", "[", 
   RowBox[{"LessEqual", ",", "Listable"}], "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SetAttributes", "[", 
   RowBox[{"Equal", ",", "Listable"}], "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SetAttributes", "[", 
   RowBox[{"GreaterEqual", ",", "Listable"}], "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Protect", "[", 
   RowBox[{"LessEqual", ",", "GreaterEqual", ",", "Equal"}], "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"zero", "[", "m_", "]"}], ":=", " ", 
  RowBox[{"ConstantArray", "[", 
   RowBox[{"0", ",", 
    RowBox[{"{", "m", "}"}]}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ListAnd", "[", 
    RowBox[{"list_", "?", "ListQ"}], "]"}], ":=", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"res", " ", "=", " ", 
        RowBox[{"list", "[", 
         RowBox[{"[", "1", "]"}], "]"}]}], ",", "i"}], "}"}], ",", 
     RowBox[{
      RowBox[{"For", "[", 
       RowBox[{
        RowBox[{"i", "=", "2"}], ",", 
        RowBox[{"i", "\[LessEqual]", 
         RowBox[{"Length", "[", "list", "]"}]}], ",", 
        RowBox[{"i", "=", 
         RowBox[{"i", "+", "1"}]}], ",", 
        RowBox[{"res", " ", "=", " ", 
         RowBox[{"res", "&&", 
          RowBox[{"list", "[", 
           RowBox[{"[", "i", "]"}], "]"}]}]}]}], " ", "]"}], ";", 
      RowBox[{"Return", "[", "res", "]"}]}]}], "]"}]}], ";"}]}], "Input", \
"PluginEmbeddedContent",
 InitializationCell->True],

Cell[TextData[{
 "We want to take a look at the set defined by ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["G", "ini"], "(", 
     RowBox[{
      SubscriptBox["x", "1"], ",", 
      SubscriptBox["x", "2"]}], ")"}], " ", "=", " ", 
    RowBox[{
     RowBox[{"P", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{
          SubscriptBox["w", "1"], "+", 
          SubscriptBox["w", "2"]}], "\[LessEqual]", " ", 
         RowBox[{"1", "+", " ", 
          RowBox[{"2", 
           SubscriptBox["x", "1"]}], "-", 
          SubscriptBox["x", "2"]}]}], "\[And]", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SubscriptBox["w", "1"]}], "+", 
          SubscriptBox["w", "2"]}], "\[LessEqual]", " ", 
         RowBox[{"1", "+", 
          RowBox[{
           FractionBox["1", "2"], 
           SubscriptBox["x", "1"]}], "+", 
          RowBox[{"2", 
           SubscriptBox["x", "2"]}]}]}]}], "}"}]}], "\[GreaterEqual]", " ", 
     "p"}]}], TraditionalForm]]],
 " \nby looking at its positive transformations (transformations with \
posititve matrices).\n\nWe assume that ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["w", "i"], "\[Element]", 
    RowBox[{"[", 
     RowBox[{
      RowBox[{"-", "2"}], ",", "2"}], "]"}]}], TraditionalForm]]],
 " with a uniform distribution and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["x", "i"], "\[Element]", 
    RowBox[{"[", 
     RowBox[{
      RowBox[{"-", "5"}], ",", "5"}], "]"}]}], TraditionalForm]]],
 ".\n\nThe first obvious thing to try out is to look at the set defined by \
one of the original inequalities and the sum of both, which corresponds to a \
transformation with ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", GridBox[{
      {"1", "0"},
      {"1", "1"}
     }], ")"}], TraditionalForm]]],
 " (i.e. a positive matrix). \nThis leads to the transformed probabilistic \
set \n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["G", "trans"], "(", 
     RowBox[{
      SubscriptBox["x", "1"], ",", 
      SubscriptBox["x", "2"]}], ")"}], " ", "=", " ", 
    RowBox[{
     RowBox[{"P", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{
          SubscriptBox["w", "1"], "+", 
          SubscriptBox["w", "2"]}], "\[LessEqual]", " ", 
         RowBox[{"1", "+", " ", 
          RowBox[{"2", 
           SubscriptBox["x", "1"]}], "-", 
          SubscriptBox["x", "2"]}]}], "\[And]", 
        RowBox[{
         SubscriptBox["w", "2"], "\[LessEqual]", " ", 
         RowBox[{"1", "+", 
          RowBox[{
           FractionBox["5", "4"], 
           SubscriptBox["x", "1"]}], "+", 
          RowBox[{
           FractionBox["1", "2"], 
           SubscriptBox["x", "2"]}]}]}]}], "}"}]}], "\[GreaterEqual]", " ", 
     "p"}]}], TraditionalForm]]],
 ",\nboth sets ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["G", "ini"], TraditionalForm]]],
 "and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["G", "trans"], TraditionalForm]]],
 " are illustrated below.\n\nIt seems obvious by looking at the plot below it \
seems obvious to evaluate the probability by solving for ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["w", "2"], TraditionalForm]]],
 " and then integrating the function max{-2,min{first facet,second facet, 2}} \
from -2 to 2, which I do here:"
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"pTrans", " ", "=", 
   RowBox[{
    FractionBox["1", "16"], " ", 
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{"2", "+", 
       RowBox[{"Max", "[", 
        RowBox[{
         RowBox[{"-", "2"}], ",", 
         RowBox[{"Min", "[", 
          RowBox[{
           RowBox[{"1", "+", 
            RowBox[{
             FractionBox["5", "4"], "x1"}], "+", 
            RowBox[{
             FractionBox["1", "2"], "x2"}]}], ",", 
           RowBox[{"1", "+", 
            RowBox[{"2", "x1"}], "-", "x2", "-", "w1"}], ",", "2"}], "]"}]}], 
        "]"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"w1", ",", 
        RowBox[{"-", "2"}], ",", "2"}], "}"}]}], "]"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"pIni", " ", "=", 
   RowBox[{
    FractionBox["1", "16"], " ", 
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{"2", "+", 
       RowBox[{"Max", "[", 
        RowBox[{
         RowBox[{"-", "2"}], ",", 
         RowBox[{"Min", "[", 
          RowBox[{
           RowBox[{"1", "+", 
            RowBox[{"2", "x1"}], "-", "x2", "-", "w1"}], ",", "2", ",", 
           RowBox[{"1", "+", 
            RowBox[{
             FractionBox["1", "2"], "x1"}], "+", 
            RowBox[{"2", "x2"}], "+", "w1"}]}], "]"}]}], "]"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"w1", ",", 
        RowBox[{"-", "2"}], ",", "2"}], "}"}]}], "]"}]}]}], ";"}]}], "Input", \
"PluginEmbeddedContent",
 InitializationCell->True],

Cell["We can look at the plot of the probability plotted over x.", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Plot3D", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"Evaluate", "[", 
      RowBox[{"pIni", "/.", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"x1", "\[Rule]", "t1"}], ",", 
         RowBox[{"x2", "\[Rule]", "t2"}]}], "}"}]}], "]"}], ",", 
     RowBox[{"Evaluate", "[", 
      RowBox[{"pTrans", "/.", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"x1", "\[Rule]", "t1"}], ",", 
         RowBox[{"x2", "\[Rule]", "t2"}]}], "}"}]}], "]"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"t1", ",", 
     RowBox[{"-", "5"}], ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"t2", ",", 
     RowBox[{"-", "5"}], ",", "5"}], "}"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 Graphics3DBox[GraphicsComplex3DBox[CompressedData["
1:eJzFnXl8FMXW9wcYkEEdEKPicmUREfGqcAWuXMHuC7iAykWDihtyxQWRIKIC
LkhEBDcEAwoqsisIuIDsWzciu2LYwioEGBJCAok4oAJO3umqOqfmnJp6Ht/n
8yzzT9NfKtXVv66uPnWq6lTdR56+67GKoVBoQ7VQqFLy2Gx6jdzy8nN9OIbU
z781Wien/jkG/2DDBfm35pxl8JlnnpudtauKwb8V+VQw+Fci/QmP8zmCFxhc
/rYs4XyCTO9w/qnM3+BLZXlczqfJ8hs8R96vwZdJfQyuzm3cB125zpyDzpyD
zpyDzpyDzpyDzpyDzpyDzpyDzpyDzpyDzpyDzpyDzpyDzhbug35cZ87hnHPQ
mXPQmXPQmXPQmXPQmXPQmXPQmXPQmXPQmXPQmXPQmXD/nFagM/LvK7z8cWZv
fK9AJ64z5/D3nMM556Az56Az56Az56Az56Az56Az5TVbgc7If5Q6gM74Xq65
uvOHmSMc0Bl51e/mntllkgM6A++6uc3NYzK/Bj2R997beMwngxaizqAH15lz
0JlzyJdzOOccdKa8ZivQGfkGqQPoDHyC0gF0Rq50AJ2Bd1c6gM7AuyodQGfg
dUZ1OlSty7eoM/Cq9+b1C4XWos7A/7q7w9LRmbmoM/AaD9792/rPt6DOcN9c
Z85BZ85BZ87hepzDORzd+S8OrBAa4YDOwAdWrDT22WrzUWfgtZQOoDPw0/dI
HUBn4KAD6AwcdACdgTeekSgZO2gH6gz8nbXtP662Zw/qDHzEuPuW3dh0P+oM
/PzX3h+2alEMdYb74zpzDjpzDjpzDjpzDuUAXu1fm7Z+Mmgq6gzHhx988Ifu
f12DOgM/ND1zyMzqeagz8E53OZeE3D2oM3DQAXQGnqF0AJ2Bny4PfgWoM/Cb
z/vwvOJKRagz8GPfdt0wdNVh1Bl4OHJvo7xbSpjds2UJ15lz+j3QnLaDmtN2
YcuSgqK/PBfv86JD6/eWJedf8UezTmXzHPo8tiy5c8C9D1QuzXVovluW/CZ0
2Is6A89ed03hxPcKUGfgGbVad+qw/DDqDLyS0gF0Bt638KUr84YeQZ2B397l
x/VDhxxFnYEPybrznOI2pagz8HrnVTxZ7iH3aXm1zpyDzpyDzpxju5nK/1Kz
FegM/GHVfoLOwONrh7x80VM/ol7Ajy75tOfM4fmoMxz/WbfxR9XvKEKdgZ+5
a1K9vKFHUWfgoAPojPzufa+vOlmKOtP7KkOdOQedLdynz1/rzDnozDnozDno
zDnoDDxbfddAZ+D1VDsMOgP/u2o/4X6AJ9T7Dudw7KfqJ+iM+Ss9QWdazjLU
mXPQmXPQ2cJ9+j5pnTkHnTkHnTkHnTkHnQkvOwftDeCPqnoOOgNvrL5roDPw
UaodhvsEfly1n3AOR3jfQWdaTq0z56Az56Czhfu0fdI6cw46cw46cw46cw46
cw46A++t6jnoDLwOszeAN1X1HHQGDvUc7h94f1XP4RyOvN2g5dQ6cw46W7hP
23utM+egM+egM+egM+egM+egM+E1arYCnYFDvwB0Bg71HHQGPpLZG8BPqHoO
ugCHeg7ntJxaZ85BZwv36fdT68w56Mw56Mw56Mw56Mw56Mw56Aw8m/VTgEM9
B52Bgz0MOgOHeg46A+f2Buav6jmc03JqnS3cp/aI4a8zdOac+esMnTln/jpD
Z85BZ8prtmL+Ore3qufMX+c2ZP0UrHeqnjN/nRtX9Zz567CeM3+doTPnL75Q
/bdbc2r6cIQ7Av05V+euJb3BWf6uJX/Xkj8vp7X83A/J0hvl4c+RlR/z335O
jUfrtzvXhyOkV+euhUN615KePxdr/rz8kM5Wfp4/S288L35dVh6j/Fx/eczw
6TEUapdTv53uf2leX/zHWQafl7Vrnu5/aX6ryKeCweeI9ND/0nyW4AUGl781
LYFXFUffWSrT4318IAqY5yyS+SMfJfh+5zZZHhf4HlHwImehLD9y0OcKeb8G
by/1Mbg6t3Gf6qp15hx05hx05hx05hx05hx05hx0Bh4TF1yPOgMPi3S7UWfg
Ut+DqDPw98UNlaDO9LpaZ85BZ85BZwv3aT3VOnMO55yDzpyDzpyDzpyDzsCv
F8c5DugMPF9ccDPqDFzqlY86A68o/v4Q6gz8dnFeijrT8midOQedOQedLdyn
773WmXP4e87hnHPQmXPQmXPQGXj/4DBvJeoMvIPIdwfqDLy3SH8AdQYudTyM
OtPrlqHOnIPOnIPOnIPOFu7TdlTrzDnozDnkyzmccw46A18gMp7kgM7AG4nr
5aLOwJeIdHtQZ+BSlwLUGbjU/wjqTMujdeYcdOYcdOYcdLZwn36XtM6cg86c
g86cw/U4h3M4NhP5LkKdgX9/Mrdz7ZNbUWfg76vvGugMHL5roDO9bhnqzDno
zDnozDnozDnobOE+/c5rnTkHnTkHnTkHnTmHcgBv3L9F5Wun+qgzHE9OnHVj
03nbUGfgnyZx3i0x1Bn4V9WHHZ9YtwR1ptfVOnMOOnMOOnMOOnMOOlu4D/fB
deactu+a0/ZIc/r+rGn5WVKeoauGsHq2puXpQM+8pUyXNS13Dl11Mvd6XZ/h
KL9rMWbXrWl5c7cB3WeWlzC7bk1Lcdlk/5TadZBfGbPrNKd2nebUrtMcdLZw
n5ZX68w56Mw56Mw56Mw56Az8oiVjB41O9k9BZ+DCHgjr9hl4SZukoD33oc5w
nC0EPYw6A9/UufZFQf8UdKbl0TpzDjpzDjpzDjpbuE+fv9aZc9CZc9CZc9CZ
c9AZeB2h8wjUGfjYzLI+2q++piXw2MGMJcIPo+4HeAWRrhDP4Tg5eF2G6u8g
cFfVc9CZllPrzDnozDnobOE+fZ+0zpyDzpyDzpyDzpyDzpyDzsBrqXoOOgM/
X/Bc1Bn4u8eDBmg/6gsc6jmcwxHqOehMy6N15hx05hx0tnCftk9aZ85pf0Bz
0Jlz0Jlz0Jlz0Bk41HPQGTjUc9AZONRz0Bk41HO4f+CTVD2Hczg6qp6DzrSc
WmfOQWcL92l7r3XmHHTmHHTmnNq1Kf5zpTPnoDPnoDPwOqqeg87Aa6l6DjoD
h3oOOgOHeg66AN+s6jmc0/JonTkHnS3cp99PrTPnoDPnoDPnoDPnoDPnoDPn
oDNwqOegM/Axqp6DzsDzVT0HnWn+hagz8M9UPQe9gLdW9RzOaT5aZwv34f+5
zpxTu05zatdpzvx1hs6cM3+doTPnzF/n1lD1nPnrsJ4zf52bo+o589e581Q9
Z/46bM+Zv04dDX8dcqlbTR+O9L4yDH6zyP9nj/MZopx5yEcEp/O+cKSdG3aB
y/7aUUf2gyMuzafMuVyeGxzKzTmUR2SXVd0oD/Bl4vxbp6H4+9MOcKnXYSwn
zacM02fJ8ip/1BFMDxzS15PpPTH8VF7J0A34FHEjizA9HHl64NcGx0FrpJ1b
/2f8O1m+YiwnzacM00N+oD+kB87rAzwHXh84h3PK9XOE58bzh/wgH+o/1PWK
+vfMekLzKUN7FZ4j+HPg/QLO/TD8OUI7wJ8jcND5zaB73fUbfK+Bg38SuE1n
qg/qbOgp/rzduT4cIaU6dyk30ruW9Jg/6GjLn+tM05nl5/mz9L4lPebPymOU
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
9Ij5Sz3ncR72hW4p44+q/J7QuWYNxuNS5yzOY177QOe1nIdCnsXvKu+Llz/u
dO9Ud0J5OecJJ/OCBqE05Xdv3Nmoq1n+iNTZKH9U6pwsP/e/ifIkyz+z1pPE
//bXF4O1E2fwfJT+Vfl1fXrEcir9OVf1Nqsa10HWz/pnMh7zZH3jPBQaZfFz
Ss7LH1f6VzX8b08K/av6PQueIf63TkL/iP/olgt6fITf04jSv5p/1V+rjswY
9ja2Aw0/udZ/L1n+7n4Q12UEtrc1uzatE5S/4rHat38+6E3UufX8n/dm7TL9
b1L/ioxHlP6VGId+dJjxhCf1Dxv+t61C/8r++HEXEP+b1L+K34Z916Yr/+Er
T494rH3NEWBvOJJX8IcIPgHbW6l/Rf/0wvuPPYr9moQzUOhfyQ/fcoNz84Gv
UOceQv9K/i2vfV86LX826iz1D/vltS9vUvOOuaiz1L+yP+eFqQf2NJ+POkv9
q/j/GpF5RvVxC1Dnrw7tKK/f7jfDL/RarwNeMJ7Gde4cLxmYU/+U4ReSz+U0
4+CvSBj+N6lzubfx2Wcv7FNtNOosechfVesnL7PsfdTZV/7DMmY/SN1+83o8
8kiiQ91VqLPU53evafXKP7SdvBZ1vlLocMrr+1HLTiUHvkedE/VaZN+aLH+z
cGTUTQd+RJ23TGvtlpf/4f2jQbObp3XciDpPu+b2UFD++auOLajz4ibUWeof
8k90/GPHtn6bUec5KycM3D2vyND5wY3flAfjilznyj+tGjg/q9TQ+R6h/8+G
zlcJ/Y8Z/jc4tqrasOiJv37JdD7uNWx/dP/Jxh6rzye8RqzfIfUs8h4a3eOX
/E92oc5StxKv0lNrRnTptUf3O4Q+pd7X88/c1T2cjzo3Evr/7C189v7uz07P
R53LRT7HvI8Wzp/d7v59qPNmof8vXuaOt14uaIv+TKX/cW/xnpXO7L4HUOeO
uVmn++2aZ+i85vzXEs/sWmXoPG/SE+Uj6280dK6yaFh5r115Hve/dRbPa7d3
4a6dZ9zYFP3qnnwu+7xD8xdNKPcWos5wrHnJVV13NfiB6VzgHWN+zo4PjQn1
TJb/9KL8t7rX0f4KyVd5bzV/9ZeT2wtR5z9u6hN6L1n+Tx5tNXFA9iHU+S6R
Ps/LWf7gpx3qFqHOU59bFrolWf6igntueHZTEep8WuSzz5u45apuxSPRn+l+
dufr2YnyA96Ct3ZdMv+xYtR5guSGX+g3mY/hFxonr2v4hTrIchr+N1mejc41
N97U6L7xY1FnpYPTI2fO3oPP+aiz0s3pPafe59WPcz8n/LT/DY7Thj+1KOsy
7X9Tz9Fp8HWjZu3eKkGd75XP3bml9OaXBuRrf0VFWU+cRl9d1q9DXd2P/kLW
K2f2FZt+Ofic7ncskvXQearJk8UHY9rPeZmst07nO8oWZj2g7eRPZT03dN4o
3wtD59PyPTJ0lu3/z4wnPPWeOivWUP+beq+d06L/NRd1Vu2AM7L4ndrXYpwl
rM/Oz8zPqdoZ59ZB5318vEkB6gzH4c8+Prr+C1pn1Y45b322+smZT2v/m2r3
nCVFF5aX79V+oZBsJw0/p3xPIV/dj/5StsOc+61ku+1ynT+T7byh8yb5XTB0
Vt8RQ2f13XG4/019p5xLvjnxYvucsaiz+q45a+tNe/DaK75jOp9wWjI/p/pu
um8sXu/nv74P9VXfWeeDV8YdPriF++0TTtnNt93U7ZOjqHMj+R03/Jx3y+8+
1S2p86vSTjB0nintCkNnZYcYOiu7hfGIr+wcxsO+sosYTyjdOI9770u7y111
jPrflJ3mzitb8f1UtK/Q3nCbMj+n5FXcw5fddv+SB7ejznnSbnQnnvpmRfUf
DqK+xdLOdA/Wmbq988AS1BmO99w+emPn8Vrn86Qd63Kd5XtRkfKkzv+UdjLn
vrKrDZ2VHW7orOx2Q2dl5xs6S/2rGjpL/asa/jep/xnu2lY5RT/3+YDbz24D
Zm9Ifqa78sr2Vc7cswF1lvqf6fbf3mrFoG35qLOs59Xcxx9c+lvGg0Wos+pn
uctiv8zIf0y3z3Dk7Ybqxxk6q36fobPqJxo6q36lobPqhxo6q36robPUP8p4
3JP9srMZh3bjbHfkDW1JP0X1B90nmZ9T9dPd7NczLn/tguWs3ajhjhk7evWu
5ttQ567SD+A+8/uwT0dfdxB1Vn4D95s91c699go93qf8DG69dYMfHfCG1pke
tc7Kj8G5f/zYpWXvTTH9b9nSH8J4xK8m/SeMh31ZDzlPeHWkf4bxuGofTD9n
M+n/Mfxvyr/hvs/6Kculf8m9uefWNoNHf4E63yb9UW6tj0+8V5DxA+qcJ/1X
7hPHv1pZ/0ptP3eV/i636T92V2l74BDqXCz9Y+7bg8bW7HKNtjf6Sn8a93OC
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
e2forN5Tw/8jvzsl6j3W8+VUO+AsDboLTTcynU84+5n/R72nTuDNGXaHOV+u
IEi+Tc+XU+2Y86uIg83HQX42dFbtpKFzPVV+rjOUn+ssv4PmfDnVzhs6q++C
obP6jhg6q+8O43Gl5+/qvvV8Ofl9/81pFMQJT5kvp+wHN4P5f9R3xxXdhZT5
crtV+YWfJ818OeFPS5kvp77Lhp/tVlJ+rbP67hs6q++yobN8r03/j7JDGI/4
ym5hPOwrO4fxhNLNnC+n7CjD/6PsLrefEE7Pl1P2qvsh8/8ou8idFjRAKfPl
dqvyC7dlyny5Xqr8QbOUbr7cGwFPmS+XQ8rPx4srUo7ths3PZs6XU/Yw4xGl
vzlfTupvzpdTdjjjcaU/n0cXU/qf4Y4X/VA9X071j9xLmP9H2efuR4H+KfPl
2qvyy3ZDz5fbrcp/TeBPSJkvp/oj7j+Cx5tmvhz3s+WQ8mudofyM+6o/xe43
qvqJ5nw51U9kHPuVjCc81e9jPK705xzajbMN/087i/8nR5U/FuiZMl8Oyi/7
p3q+HJRftD8p8+Wg/FeJ9krPl1P9aPeS4PPyJ+bLQfkZl+PiaebLyedlzpfb
Jf0PjEO/w5wvp/wJjMdV+2D62aC8IfaT8feM9a1yfD9Z/m1COD1fDspfRfiH
9Xw5KL8YB0+ZLwflvz9ws6XMl8tS5b8naK5S5svNU+VnfjbQ0+f3S/0nms9L
6xdS/sZkPpmiwMOwvikdVJxAPV9L+jXOYenDEFdT+Un09+gyxXcTHnGpf0nb
Az2Jn4r1Z6cYfiEXykPziXvUf6J1kPFluB9JvXdra/ijhU6TUIdblb8rn/q7
vBHK/yM79gvwuddX/hwhzxeHUYeflN9JXl/bRTsULyc84exQ/hA5L0KP76j2
nKUPu08Rvw3ooN6LeeZ6wxFp/R56fRznbdP6AUDncjm/JmMp6t9d9d/3BoeD
3+L7kqfSi+/YFG03nhT38wfr18QV/8Xon16arr+ZfC+UH9IlxfwP5n+2J+2S
MY+Oc6UXnw8Zw/i69L0w4zBD+l3qucv9d77G+wL+XsAjerxpV9r6k8D4yeLU
1/UkK219iGN80ag4134GiLd6LBjPulB/R4CL7/kDR5BDXFX2XIx4p5A/cFEf
suaz61b0+4nyzkLeINVvhhz6O3w9ckK919zPmTDix0L+yg7x24gPxEt43RHK
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
1tlRnTWnOmtOdebr8jIMTnXm8+syDE511pzqrDnVWXOqc8JbGISF2Pg1i++T
8FYF6+s/3MR0Tnjye5DPdFbre6YUMp0TMu7T2qNMZ73+juqsOdVZc6ozX8eX
YXCqc9yic9yic9yic9yic9yic9xLBPPo/rmE6Rz3Rgd//mQe0znubQ8WGKzZ
z3SOezWDdWQXHWY66/V0VOe4Ree4Ree4Ree4Ree4RWc9fko5/2UY6SnXP/pc
YpbnpX/0ecUsz1H/6HOMef3EOsF7HD5/cYLgQ1jcsZjXPlgo8rTv8LhpfwTr
nvKWsuce8+YH+Ty+zeHxv3YFz/36raw+xDwxP/DGGOPKPkuJfwTpxfqvViUO
j8d0c1DO8hJWf2KeWLdSXurwuELidk+WsnoVs9Q3+PH6FrPUQ52e1sOYpX7q
9LR+xiz1VqeXxwwjPeU6PavPDv3/DIOz+omc1UPkrL4521V9Y/XK2RnE36g0
m9cfpzyIizUjl9cTR8xHXbaP1wfnpuC5n13Mn7vjBpe933i+2I9jzxE5e17I
2XNBrnQzOGufLTrHLTrHLTrHLTprztpnRwZEHcvbZ2evaIdXMp3jzqNBvKDt
u3j77HwZfE9/5t/BuIz3cOIIb5+dxmodB2ufLTrHLTrHLTrHLTrzdY4ZBmf2
hkXnhEXnhEXnhNNWrUtl9obTXrQz85nOCUfYISs3c3vDeSlY35cSjwz4D0FY
oB+Lub3hXKzWKzF7w6JzwqJzwqJzwqIzX8+YYXBmPyNn9jNyZj8jZ/YzcmY/
uw1FYMcpTOewWyTW+a7l9rM7WAQa2MPtZ/cBtV6J2c/uDWpdHrOfXVh/yuxn
F3Rj9jNypZvBWb8P71elNzjr9yFn/T7krN+HnPX7kLN+n9tM6DyY6RxxLxDr
wpbyfp97Q1D9a+Txfp9bS63LozpH3DfV+lPWH3RhnTXrD6JurD+IXOlmcOaX
wPtV6Q3O/BLImV8COfNLIGd+CeRUZ14e9Fe4y0T8pencX+HWUOvymL/CLVLr
T6nOUfcMtc6a+THcqoIf5X4M95zAPk+Ucj+GOhp+DOTMP5ZezxTO/GDp9Uwd
b6V+sPR6GuOw6B9z5ffxHe4fk7pdsJz7x9zP1Xpq5h9z5wi7t4DqGcQjD+yT
a49wv5m7JbB/DpRyv1l6PVO4SJ5mHLa+Wt/C+Ty1roZzEh8nhfcQ61vMcVjp
R4yBDjKuRvYOR65z0uOwQpfYAYfEKQC/YgS+X3ocVsaZh+8XH4ctc8i6Ze5X
NMZhQR9zHFbqY47D0nhAmtcR6fU4bBN5QYfGs4iqdXgHHRp/QcXVm1Li0HgB
2r9H17drTtdjay7v61wLN8dhaTwjzWm8noi/Uug+3aFxIiLyvvwjDo1roP1p
dB2+5nTduOYim5RxWOA0PoL2I9H1/Jqr9aUGV+tyDU7X/2v/CV2vrjldX605
Xceu/QN03bXhZ1Dl0L8G5DuifwvId0T/2qe2eyHdT59PviPJK6v++HzyHQmF
8lS/ez75XoRCbVV/eT75XoRCrVS/uH1q+4a/MmcB+V5o3oB8LzRvZ+m3pl9/
Xobx5uS57ldentq+pfD5qe1bCs9Jbd+SXNjJt36B8aGAC/vt4A8Y/4XwU0cx
Xglw8Ce0T23HUvp9C1LbsRSek9qOpfBbU9uxFD6StGNxpoM5XtyLtGNxp6Ho
j7yh3gs9XtxDxMv1MN4K8MdEPJBSjA9C8y/DeBac0/YqTu83zbjwSNJe6f4U
jXemOY3PlZDxmftPxXglwMeoeEe7Sbuk+y+0XdKctkua0zhrut9B44KF3fOW
yDixvWh75VJ9zHHb+rS9Qk7ji2k7vBdpr7Qdm0XaK83nkXaJ2WNpxk/lPH0c
b/WniesNc8g685TvrDxmGPy0Wseurov5y4AlOP7rdxHnSx25/wnE5YnKuEQ1
i5wOsj7g90j4f/qWKN30vB3Iv46F0zh0YTXuuchpy/h0wrEeegVrku977Tsh
3hNyUc4hK5xcWj+9l8XndB3ElXNI+rsOO3Ld8DHkIq7YxSUOjbuUUOvmSyFu
Hbynkh8phriByEH/9vT5uiHyyzA4iQuQYmcy+xn1ZPatnzZ98jmOEOX7gvc7
1LpsPm6i7YF65Dnq8Z2byfNKeHcG57VWq/qG8xywnDQfG+fjeuY4XR36PvrD
xflgh5Yn4meL8w8ZD/sTVL36g7wXYb+OOE7DuJBwX8LPVjTZgbh+kF5+V7Y4
kxlfovhc6g9R8QfWOzVFeXFeh99JXPB7ZwbJJ+I/J57Xj4xDPP4tDtl3NqU+
qPkb6ly/73Q/Ws1zyf6pmh+W80l8/rzU/BODTyD72mpO92GN+PvU+l+6b2jE
76XW/z4s58/4cL+Qj9pXz+B0/3jNO6r9dIHDOlm6/2vY37hDrpOl+5WG/UGZ
15V8POhzh+6vGfYj344d81n+bGeLnI+krqffi4fl/CWD0/3sNYf91zlPqH1/
gRdeveKa6nfMhf2kkZ8sn3Fg5T+WwX7eyF8+Y4TX78PvHLoPaMLr8cXw0KqL
1jt038qEd7h/j52fddzotJPzx1R54qz8NQwu9/k70+Cwf3x6DvFP41676Y/c
NnbQUJgvh+1nw+ypbw8t+B7m1yGf9cfWK2q/uAn2NUeeVfzAjIyxeQ7sbwr8
0UMnh3cu3+lkq/04gX8Qn7318OS9SoezkVes2nrZwbb7HU/OJ1Tl1+N6av6h
wT+X8xUNLvWpghzWdcL+7sAr/HjZ3LvKhsD8SbCHvRWlG2+a6s+G+ZZgD3vh
daU31j62HeZnIj9xYfayK0flw37wyM/Onv/BrL4HHNjnFXjO7Z/06r7loAP7
kgJ/cdasotyyQgf20QS+8sv4GcXrixzY9xF4n7aPr533WLGcp5pmPaZnWdc5
yrIeczpbd/mumKda3sJn6yvvOCzXV04n6ylCoSvUOsrpZD1FKNRZrZecTtZN
hEKvqXWO08m6Cb2e0SfrJvS6xelk3YRenzjKsg7RI+sm9HpDWX/M8SnYhxv4
8PBVzYu7HXQulfOKVXptn2fKecgGV/OWoX1weqj9NGGfaeCwb6wsP7bDWF41
j9rgat61wUNqX3DgiWGNJ11UvMXppPaxBt761yeG1v4o5sC+y8DnqH1UI3Le
uMpf2+FqnrnB1bx0g6t57Ab/Wu1TDtwtPdX0hYWrHdhXG/gHXRq+v3HMT2r+
NtrDbuVapzKe7XEI5uG7wN9R+5DK+cbmeiI1z9/gal2AwdU6AoPL7wK0q5r7
ap914CP7T/t8QdZch+4LHnX/PXDty/eN3+TQfayj7v5jF9927RMH1Pz8ii7w
u+7fNHRX32KH7hMcdUtv6fPrxGdKHbVeQ5Yzxb5V6zsMrtaDGNyR60cMLu/3
uMf5NWr/eODba3WsfbzPB85XqfudJ/kfGzvd3viK7xyyP3eS37upbNx9e3c6
ZD/pJJ+8+fomG/sXqvflDOQNlh3Z29k74pyXul9vki/Z/czcrFOlDtkXNsVO
e0fYcXodzX5hH65y6D4K2h6bJLhebyLtzO9VHGdt10k/2m6H7rug7TG6P4Hm
rUU+et2HnGe10blS2qtop8F+lzRecET6jS8udOi+Dtoeo/sfaE7j/msu+zXa
fpP57nNoPGLYN+CQQ+PnQlzMIw6N96ftK7rvguY0zpfmNJ6d5nWJPa/6lTW3
q3Jq+038+dUHHBpnVvszafzEOCuPaXdBHLH06U27C+LlAb80iLc5dYKad6TX
oRQG4yzjd6p6qO2x+4JxWA/2Xajo0vzRP2ZwGj9R20V0PwnN6f4KMXa/VZDD
vCkaNz/mecLvOgz8h2hHCfdb/gqIk452kYhj3+WgQ+M7xzwxX2VsiQPxlGl5
wM9szlOi8V5jTJ+zDQ77lyiO3+sFqe1Dkos45Dn5uK+J0hnTw/4fnC8g7Ubc
OR3M57lsGzx3tCsCr8pFHx9k7Ya2H54m7UaCXTdi8A6kPUk4vYMA97etd+qS
9iQh+9tJO6Q+9cM416p4vA1oe+JC/j/R9gT507Q9QU73t9B8Ce1fuxPEeO4i
ZzZtf1yhT9JuofHEw27gfg7slvq0/XGvVPFsafuj7Q26/4rmdD8Szek+HJrT
fSY0b0T9DK6Y59l5otOatEsRV7hvk3YOjYcecbcG6ZN2Do3fHXFFGOaknZND
2rGI20nFj6XtmLZDaDumOd1nhac37Ry6f4bmdL8Hnr9e51JVxfH+irRvsJ/J
XKcO8e9F3SEizvYmh8Yrj7oNg+ebtIvqk/YwKuMWJ+2iHNIeRl3hR0raRaTd
S7FbSLvH/YFp7CLS7hnctIsWp7Z7ST5GxdMm7V6wX5mKG5+T2u4ludBh707a
7iW5GM/qX0jbvSR/O0iftItGpbZ7sI9i0i7aTsvpQzkX0vz9hsGfbypR4/WY
v0oP86lQf9xH+31aPzF9FXHEOPYe5bi/gCf8281Lnf10XAbTk/i/KTrPTuu3
fK/lF8wfWKT8gVBurgMpt8HDFp4w9CTlNnjMwtXPzMdJzxMWrtpZ874sPJqe
G+MdmI86N/fbSs/heXMet/CYhWN5ef5Oeg7fG2O/MAvHOOf+F9W6Dajk/4zz
Y4DPfKnH75MyXbR3VX68PF56HrfwmIVjeRnX8xA+af7d0M2dX8XvBPA1vzdq
9/Su97DdBH7p9kPxOheNw/YF+KA9w7o5cz5j72fYP/pTpRsS5Sdx3QLw8WL9
Zkdmn4X9y57bet7tOT3RHgHeSK0Tp+UM+21faLTg+L8XsnKG/S3vPN1w2Fyf
lTPs91n8+vBqr6xk7ULCW7F1yxV9qn3IypPwBg+698JVJz9l5Ul4FevJeIP0
ugmvycy/Tc9fuYVdN+H9/cSsKdUHbGf5x71VvXc073b1cpZ/3Dut4uzRfOLe
wgrl3sk3+HzzmLdQxYtT6X3FWbqohUcsPIx8t4hPVbEV3A9wP7fdoyc7fsj0
jDm/vXOqdt7qJex+Y84VOxq/ezyyiZffeUnFMVP5wN85l56Ve3DePh33G/i0
6yIP196k48YD73z62updepWyehJzbl34wtldvuT7Eeh16OJU73+E69BVep+W
C34RCw9bOOgWd0Z/IeNNqXNt57fJP7R47Je8njij7uzSuOm8tbyeOHepeF8q
f9Sv4tTFPWf+i+8PHnfKrrt44qyjXB+9Pl3dL3J55HHO+Xxysx9BdeAc48Y7
DV//oGWikLcPCaf7Ld900PuG4PvobH+s+NbaFy3j+Tl1VTwuer8Jp+xUJG9o
Ab9fPk87mp7r95elN/sj9L44x3bPzcsP2rHe7L7CbjUxYD6T6+d+qeJf0fKH
3TdrrxbzZ2j52bxo3e5RnqbfQcuZ7C/UP5GbqH4M1xcBf/WWC1YF43H07yLu
LhU/ipaHzR/W3wtWHtP+p9eNuq9d2TapW1d23ah7blsZT4nmz+fT6v07Lh0V
xCfZ15JkE8xfVXGEVPr0dlG26d8j6U37JD3HfPh32fTv0fwNewA5jM/Kcz3/
EMZn6XX5ut2ohZv+PVoePT5LyxP2z9ktx2dpecJ+7ola/Q+v+Jy9p2H/14m/
rf8M9mPCcvJ1r1ELj1i46fej5U94PSqfurj2zvms/Amv4K6n3r7xOZ+VP+G9
UeH9yZ29laz8CW/Cuy/mPbQB+gV6nuSFf5xdc2rHjey++DrTqIVHLDxs4fh9
8Wb2ubz72EFv0/qc5MPGvTk6//Vcdr9xb5kzsWpxty38O+KdNevXXt1bbmf3
G/c+vLNetWHNdrP7jXuzRtTImnkFfMf1PM+fty0pCcZnqQ58XWfUwiMWjvYJ
js9SHWLeiJZtsvu1GM3tE++2tdF/jc6cz/SJefdfufCcLufvZfrEvOVvVApt
zN7P9Il5fysbPPL4whjTJ+ZVzM08p8uXfL/mmHfdgmfXrH/mENMn5q2ZFltw
Y/gwt0O8pRM/2x+Mzyruh9L+bP0cW39Av8+x2oFuPZhuoVDu+YuatbhpMtMt
FHr9rN8PTDxnOd4/8Ff3ZY6ov3ET0zMU2jOq+oIs7yDTMxQa0eSd9t3m8v3p
QqF7Gk9r021uMdMzFMrY/FjTvMISpmeynEEY78IjTM9Q6OjRVz7Ln3uU6RkK
9Y68Pjcrk+2Lbdhp+L44c//6xpujX+L7OnB7xvSv0nwSTqF3wR+5C/YzHRLO
av8fX1e/+jDLn9sPUQtPM25Lrht22/Ydd1tZn93sumG3ott36qxlBUz/sHtB
MOw4r4SVh9sJUQuPWLjp/6TljLiX/O2XH4ZW2cLKGXHP2PvVX4on8/cu4q7N
P/5a97MOs3oScX9+vMqFS14+ysrP7YqohUcsPGzh6Jew3FfU/azDvB4tKq9j
9xV1a86tMmf957vZfUXdSl2bvBTELaf3FXVrTV54U9MPeP2Puh9OXzqy/pus
n2LMV4xYeNjC0R/FeNzC0V5yc4l9jn4n9/xjLzfIu4V9X4Jx2MQtN1Yevp/e
b5KvDs26d3lxEb3fJP95yPKSjAf1fmfAmy6dHkvd7yx9OdUP9n0KreP1xE+b
Hjlv32Df9j38fWH52Ow6+AHfxvKHfZr28fdCpT/032zXwQ/4blYexd0YKw/U
o8OsPofpfuX/43Yd/KD+5rPyK+7zfWkhnyO0HvL4If+L9lsvMe42lX1P4l6e
ivtB7yvuifGs5kWs/DwuRyQ9/x+wx2Ccl95XzJsUrPu7hO9XHpP7ti9cze43
JvfDxLgW2k57OBgAa13MnmPMezbQ7Qy93xktZxnTh/OIhUfTc6ufDcsv1xUs
2/ef2Bs2/xL84s7DKp4AvV7cEdvVrvqv2ic2vw38Es63an09vW5C7rudxp4R
++H+t9szNn8L/r+7X61Pp+UMu+PEeJlp/wTDeunsHznc9r9l/9j8MJifG1Xr
wel9ReQ62TT20sZguDuNvSSWm6exl8S+xv/n9pLN/4PXd+eo9dryXNtX3wX1
M419dVayGUhnX4n93NPYVyeC+Sdp7CsxDvp/bl+pX5I3F+Okhp/KXSEmOph2
l5gXkcbuErKlsbueC9rPNHbX38S8DtPuIvvM/o+Ph+pxT7pvJvPXZe/gOqh8
DnAdJHeL+H2p9Mxvaazb+t8ex5xH7wv1PsjrLStnND1PGZek6f/r45J0H0w+
LrmSlZPHG4ym5ynjjDS9Hmek5THXQdPrch5Nz1PGDWl6PT74bvIzcmPPLSx/
HnfOXB9N8+fp9fjg0mDay+DtLB/DfrNxVW7++6/7i8YJu64v0z8Uuj748JeC
X1fbtVOC78v3K9l9hULi9X2P93cU38vtOrW/9A3crguFRqv1qqqcLi03f+6c
8+8N19NI7/PyqvwtPGzhevy0SvCdKjLHT8W24b8sZbrFHLHsuPJmpk9Mzld7
6ijTJ+aIaVO5XB8edyti4dH0PGWclOXj03JxHezjofVU3CeqQ9wR9kma8VBx
vz+tZfcbd0R8lVfMcc8aKu4KvV8+jvn/O+75n49vUq7HNz9U87jofSWcleQ7
rscxZwfv3X/7OOZ/Pl5ZQ827o+WEfdpnsvKEXVjXT8vzZ8cl9fgjLY8ef/xQ
dHhyWP5/dpxRjycmFgf31ZV/B9OX5z+YHyXn3R6lOhh2gp5fJNoxj/u3o3Lf
9rW8fTP36SbcyD/h0X3e9fhOTzUvjqa3fC9sdmkyf9EuTfbY34d9OQ9vGtM5
rPxsPzr/D0LHuKo=
   "], {{
     {EdgeForm[None], GraphicsGroup3DBox[{Polygon3DBox[CompressedData["
1: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
Tvks9f6a+jD/B26aPxs=
         "]], Polygon3DBox[CompressedData["
1:eJxFmge0FUW2hvtVza3pq+OMOo4554yoiIqIBEEJKsFEkCjBjAFFDChKMoFk
EVRUMoIEyRlFQKKgGDEr5jQ+dZx57//eX2u9tWw5363uPn2qdvj3rj6sw43N
bghFUXTS//6kf+8si+JS/Xu7+KXKolheURR/FpexKE4V99d4Z3F/ja8SXy8+
T9xePEncT3y1uJ94pXiAuIt4gPhl8TWpKMaJn9X9+ok/0v2PEx8vbii+TuPP
iZ8XDxDfqOvPF3fR9VPEH+v848UnaLyR+B6NtxLfpfEF4m7iM8Utxc+Le4pb
iHuI54i7iM8QXyF+VjxQ3FU8UPyK+BZ9/xTxFN3/IfHDGr9W/LDGXxX3EbcT
3ydeKr5f3FbcW7xE/LOuf1v8u3io+Frxs+LndL/+4rt1/hXMs8bnix8UdxQ/
KF4u7iW+THyHeK74LvHl4p7ieeKHxNeIHxKvFvcWtxHfI14kvlfcWny3eKF4
kPhG8SDxa+LHxDeIHxOvEz8qvl78qHit+BHxdeJHxGvEP+n5t4h/Eg8R3yqe
Kp6q3/Ow+GbxZPFk8UBxX13fSdxX568Q3ye+SnyveLH4Ha3f4eLDdf75zI/G
zxW31fgE8Y+63zrxV+LB4gfEi8SLdP7j4vd1/VHio8QXYA/ZXl7W+b3Fn4if
F78ivk/8vXil+BPxY+I3dP1B4oN1fT3xNvGB4oPEdcXf6fwV4o91/qPidRrf
U7ynxs8Wvyb+u/jv4hri9eK9xHuJzxFvFR8gPlBcR/ye+EjxkeIG4nfFR4iP
ENcXT0jmusH3+zTP51rx/ZwvfkK8QHyHuLN4rHisru8r/jD700qN3yN+WzxM
/JK4B/MtHi6eK74df8v2uEp8r3iDnucf4n/ofjXFn2X7X6fxPsy3+EnmX3wn
v0c8WrxQ3FO8QzxGvFjcS/xBfr4l4rvEl4sfw950/7vFX4iniddr/EHx59me
XhM/gP/LHmqJ24knijfq+fYW763rzxW/Lt5ffIC4Nvao85uICWIzxLeJLxLf
KH4RfxY3Fl8vni5+Rdf/RfxXXV8d+9X4BeJrNP6CeKXG9U+xq8ZP14fbNX6J
uLvGZ4l7iC8W3ySeKV6m8/UTij/r/KripWL9VyTxKcQ7nV9TfJXOHy++SVxf
3FU8Vdxd3EDcTTxN/LIu3lW8m64/Q3wWNqXPnxAT9UWrNL6LPv9Ff6umsfHJ
/lQn2D6/FM8Sbw2ON1+JZ4u3BcfT2/L8T9P1j4hP03GqxvbR31bo3qt17KbP
f9P4mRrbqfNnil8Pjtc/iNeKvxQPEm/R+fuJ99f554kXisknUXySeEmF80qF
uIp4sVgfiz/pfyeLv9b9FojfDo4f34gXit8Jjr/fZv9/NzjeDBO/J96g638X
R3FDcSPxleKpms854jd0/k7igb7vBPGJGm/M/bBpYhExV9cepOMW8l90/N2u
86uIDxE/gT+JTxEfKh4tPljn3yq+Ojq+9Ui+1wviT8WHiG8Td47Of8zxe8G/
gbm/XccSfZ6u8c8qfc1GbK/wvXZW2P6raPxpjW0WHyPeVzwSfxdXFx8rHoO/
VTifHSN+En/WMUT3u1l/O033+5U5JfaLhyTnW/LjcTp/LPFQ/76p4wP9bWTy
eh6rz/vpb6M0HvTvlug1ZW3/Q8wUv0xO1Pk9dSzT5xf1ty/wp+hn4LtP13GH
jqUan6G/f57zxXzxJGya+RFvI36LfyIfid8gfot/Jl+J3xSvFv+T/CZ+hfgm
/pL8Jt4uflX8i3g2Nh6c83fT2GAdb+nzGo3/d6Xn4B3iTfTcDBW/SzwS/0Z+
Tv5tc6Lt5ybxXPEE8UfibuIZ4meYM/FwHVWDYwaxo7vG5+nzRI1/XOk1O03j
+xZey2HifwVrhMd17g06XtLn8Tr/Q411SbaFp8Tvi7uKp4ufFu+odAxdGhxj
ia3kgA3BPk1uIEd+HZxDyZ3LyKHBGuPA5LX8CP/V8VZe+y/0eaeO7fr8Y4Xj
4VnR+ulmHTOCY/gFuv77Csev6tH66bsK67MzxOOIDxWOZ2eKnxPvnawnWkfr
kZCsfy6Mjrf7JOuPNtH6Za9kvdUqWs/9UuH4XjM6fv5Xsh66IDpe/lrheH9u
tH74rcLxuVZ0/vi9wvH7vGh9erWOZ9AK+tupulcrcR9xB2KquI34cXF3coz4
PxW2pfN1/WSN/U+F9XH9aD3KParq6B59b5IB+q1BdHzfN1lvXRWtf/ZL1mNt
o/Uia4Kvdoxeq/3FN5H/ovXllxXW16eIn6m0TbOWLaJt/a/JeuvSaH37eYX1
1Mnip/BvHePQQsw5viB+kdgtviLZZrHNXaJteY34UPHu4hGVtsFlOv+pwra5
S7L+vSQ6HxJzLgiOUcSiC8WXiauJd5ALk/Vo4+j8u0dyPXBFtJ7dM1l/Xxmt
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

         "]], Polygon3DBox[CompressedData["
1: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
         "]]}]}, 
     {EdgeForm[None], GraphicsGroup3DBox[{Polygon3DBox[CompressedData["
1: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
56ZVR9G+cHfVNQDF+8qZH5HOzyqe7Fbk4hRDbpXOQSiePwUuV62JToYbqtZc
W6ZzE4rtT4OrVeuFfdM1KsUYB6VzzYphLk3XPxRbXp6ubSjm3D1dh9N+PSNd
n9O+vF86p6y4ZZ90PUxx0a7pmpNim9lwqWrNuG26viX9sn26FqXY43S4qeoY
/gw4qo7td0nXORQ7nQnXqo7/Z6brhdr3t0nnXKQ1pqdzN9IgJ8ILK9aYW6dz
N9JE26XrXoqXZsGLK9atJ8GLKtazO6VrdYqR9k7X9hTX3Z/O7ytW3CCdf5Qv
GpfOYWnN3p6uuyjW3TCdl5QPvC1dg1Gsu2k69yQdtEk6zyJ9tFk6VyX9NTad
I9O63jidx5FWGp3Ox8kXKSaUrpiM7VPcv2KDMek8nfzGnelai+LwddM5OPnM
ddL5O/m3Q9K1B2n27um9X3v0Ful8mXTiXuk6q2La9dJ5PfnPdumYSbHHhHQ+
V3577XSOUr5orXTuUr5o/XSuWf52fDp3KR84LZ2fkq7cOV2PVLx6QrqupvxD
/3ScofijbTqHrlirfTqvrZinnq4rKB6rpesHivciXT9QTJXpeoNis4Z0LVM+
rZyu0yi+bZHO/Wkvbp6ucWovbpPO7ys+6ZHOxSsu6pbOv2s/7ZrOrWu9d0zn
6BVfdUrnoBV3VdJ1MuncR9O1McW0jelamnRZ63T9QHFRU7qOorixlK5hKPZ+
Ou3XlEvvlc7dK17tks6Da19+Mu3rlYfvnM6JKybsXawRxbGt0jUMxWMjCn8u
v35eutauPMzZcFatqc9Jxz7KOVTTOQ75yQvSNXhp+cvStVVp2AvTdXRplrPg
etU6/dx0nV45n57pXL/iyUvStWfpyovT9XtpW+WHlY/bAHt++v8QKM/zQLoW
KG24XDqGUyynfIryJxvBx6ZrqNLyqmEo56jzzE3Xm7V/tUzXXRRrDQ/XOLS+
jk7XYpWLUM6nV3HOpdNxquLMh9L1RemgY9J1X+UQjkzX1ZRnOD5dh1ae6uF0
3VFaaUS6lqDY9YZ0zVWa/fp0XVba/Lp0bU/afLV0vl4x7eHpep5yF9em64LS
7Iemc8faH0emc/2Kza5O18Wl04elaw+K8eak/3+DdPSq6ZqH4uqV0jUJxZPL
pGsMiv2uTNfFpbWvSv+/AWntG9N1ZeUKVk7XQhRzLpuuuyiv2LfwvdIah6Xr
1sqfLFX4ecWfQ9M1IcXqg4s5oxh7iWJPkfYZWOwdiqX7pfdBaY1BxT6iOHlx
3bl1acA10nUR6b5V0jUe6YgB6f1Rcfjq6fqHYvgl0/uptMzm6Zyaago3pWvS
ytUMKdaFdMTUdP5d8eGK6fqNYuZJ6Zy74t7l0zUnaYod0v+fQ5p9hXRtSXH4
Fen/f6C8x93pGrlyI1PS9QPFfpPT9QPF1Xel6/HKmd+RrtMrf3Jvuj6tXMfN
6Zq3ck33pevoyofckq5zK1+0UboGoFzfwenas/IV/wexBjrT
         "]], 
        Polygon3DBox[CompressedData["
1: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
NZvzvw==
         "]], Polygon3DBox[CompressedData["
1:eJwt13m4jdUaAPDtONs+jilj4uAc8xgqpUGKDIlEGUol3AzVRXpCRcKTOUPz
IEX3pjnVY7iiuShlqGhQyljSKGngcH/v8+0/3ues97fe9U37+9Zap2jwqN4j
c1Kp1IciLb7NS6X+yU2lzhIDS6RSF2VSqW/Y3/IzxdWsG9vMvpLXEO1ZM1aC
5ThIg/xUaoD8SpHLMqwJGyL/l2jK+rBpxj5n7ArWnF3L7mdr2HusNjuZDWTT
2HyWZnmsqeNdKx8qmrG+bLq659WtZDVYI9af3c5msFKlU6mL2SR2h+jsGCXV
lWKNtQepGSx2sMP6TxcDjO3CGosW2v9Tu1o0d6w66lpqX6Nuur4FamqxFuxq
diebx8qrvYI9zN5gr7KyrD97kL3GVrGp8j3aU/z9rmQq9b1o4ng95Ler+6++
F9U1ZJ3YWLaQPck+Yz/Im4qe7GxWzTmGqHuCrWdvszKsH3uArY37iXsztgsb
zxaxp1gj1pmNY4+ypWwb+07eSHRnbdlRUSwv9Px6al8iKjrHVcbO5fNEL31V
2WC2RL7O2LfUdXe8yl6+Z/kz4iL51+IPNW3EafG7G/sp26NdV3Q19jRjU6yE
MfX1Xy6/QnzCdqspEl3Uncq2sn3yhqKBmKK+nGu53NiH5K+rW63uSNyLvIW4
lF0sr2lsY3WXs0lsJqvOGrC+bAKbxv6J8fLmojfrIW+g7lx1o9j97HHWlR2J
Np8lGrqOc6KOnaRuAWsn/1ntFvlj6aQ+xl3GLhW7tY/rm52ffIfxPf4lvze+
sdLJ84/fYZe6Y3yWui7xTatbFN9IfJ/qPo/z6D9ZXKbvfGPeZq/J//TeVWd5
bJ94L96BdHKMONaJ8mriFVbg9/tCu5i3l4/WvlG0c96txi7X3u54R/1kxaW8
p2wl+4YdY8dZX9ZH7MlLJqE5xu6Sv6nuW3XlnLeMvL/oJ/Zmf/u71HXS/lP/
I/KJ8T64t51q3jB2h7Fl9eXHPaj7gJWK95dVZb1FL7EzL3mHZzreNvkK7a+N
LXY5x1zfOv0bWEY0NraKmi/Favl+dTksJ76ZmMfiG3Udy0SzeM5slbqd6o47
Xkq+XbzKDrCS6kvGOdUXepbL/S2OZyN+c94iee94J0Vr11fETmfD5HcZ+4Cx
ddkZbDibyx5kX7Bf5C1FH3Yeq8faqhsR3yV7iH3ItskrizNYXVaftVM3kt3H
HmMb2FZ5pZgXWT1WyNqoG8rmsPvZV+yg/BTRn13AjmeS37VefvL7xe9YoK4J
uyLmYnWzWA5Ls0bqBsqvEe+zTWrKxLuqrib7gG2Wl437YwWZZL6LeW8/uzuO
4dkfVtdKexAbHNftuNvZb/EsRT/1HY3bxLbnJt9gfItNY80Ta+W/+x0yrFTc
m1jDfmK5LFe+0dgvWfV451mTeDfYr/JWoi/rwN5l78iPG1uHlWMfsc9YFdGW
1Wd5rruXa17AVrCXsnNbzHH7suvrXPexRXunmjqik7pT9F8Yz1r7P2ruiTXN
sf5mP6mpLS7Q117+l/hRXkt0ZOfKh4th4Y6bb+x9znFQ/qmadMyf6orkbfTP
TidzdszdPeJe+cdqSor66urIf4v5WJ4b8y4rlB+Ie5b/4xkUsOryP8NZgejA
2slPct0jHP9ptom9H/MuG86eYhvZenYiG8aWso/YOlaSdYv5lS1jz7I/XGNz
dkO8G+wuVkndQPYYe4e9zn5RV5MNYJPZxOx+IPYF+7P7mLs9lxxjL9Seqe5F
dU9nkn1N7G9+yO5P7lGXq+4i7dnqXlL3XHa/EvuWA+pK67tXXQl1XbVnqHtB
3TMxr4urxHfZb2K+ukPazbSvj7VC3ezsNxLfyvfZfcwCdUe0z9a+Td1idQvj
uuJbkh/27E9kleNdUddB3RS+lC2JuTXeVfmP6iqxCplk39QznazlsaavcY5j
xp7PJsufVLc4rkGskx80tiqrKM839tJ4HnwVe4VlYp2Ke2LL2bJ4vmK9/JCx
1VilmDPUdVQ3lT/FnmBp1j3WCPYyez6T7BkOZdf3WOcLXN9u/pb2Lscrr65s
rNPqzjL2Vv44ezi+DVaWdWdj2Eh2FpvHnhQVvOPdYv8rzpTfEutyrDfqSruW
3vFOsJXs5dhDqDuHTWBL2KOZZJ6I+eLW+E1iHjTu59j7pJN5Peb3hfnJGnpe
Otmbxh51ZX6yXsS6cXPs90Td0smeZm92DY61uLK6P2LO0j5BnOZcLeU11F4X
eyu2mX3AToj1m3VlI9l4Vo3VYZewcWwyO8jqsSFsBpsac1CsR55Hfjx7fX3k
68XG3MSir7+8oqiu/0I2ythbjK3iWgaxxew99mas96K29lG/0WR9rY0rL6pq
d1Z3g76xaiqwaqwL+zcbl0nOE+dbxVeKfvLx/u6Ifn/3Oua+eNd5obyXseNj
b51Jnn0l1jHmxFhXPL8Krm8Ae0T+pro18Z5m58Lm+kfIr4tvIfvdNstP5suY
NyuzGrF/jb2PsbfF/MJOYt3Y6Pjt49k7x5VsIXuLrWWXxL25jxf486KnvIqo
pX2xupvVTcoke4G66WQdi/VsaeypWe0YIx+r7g51xzLJ/rBufrKnir3Vr+oK
1F3Jp6ibkEnmypgzh8ZcL5q6tkIxRvtldZ/p26LmkNghryBOZSfLf49vTl4+
1nnWQl7GOSoYex4bxm5kRY53E3uFfc4+ZrXYKPYi+5RtZDXZ9bGmsC1sQ+wP
2Ej2AvuEfZRJ1vPW6WR/GfvMZe7xMP9Wu6Joo65VrG/qTlV3E3uQ3RPrDDuF
jWEPsLvjPlhTdh2bz+bEb+m817DH2bvsjfjO1ZVj57Jr2ahYo1jDeO/YRDY9
5rp4f1l7NpSNjnWR7ZIXis6sdVxvJpmDYy6epL5lXvI/09Xai9Q9Kl53b7XZ
6NhLyreq32RcHXYje4ltY5tZuRjPOrAR7CZWlp3AzmfD2RhWnEn+JyjKT/6X
iP8p/g8zN+wL
         "]], 
        Polygon3DBox[{{2242, 1209, 1000, 999, 1401, 2094}, {2244, 1219, 1022, 
         1021, 1412, 2098}}]}]}, {}, {}, {}, {}, {}}, {
     {GrayLevel[0], Line3DBox[CompressedData["
1:eJwt0slL1GEcwOHXcZwsl4Lwmhg6SKgYhIiMFV4Vwo4KIt4UbK4K4k0Uuhf9
AfkX6M2bnTyqNTOaG6G5XtyXFp9XPHx4vsPMvMtvpmYg+/5DUQhhQueK87F+
aa4khCdcYDULbOIu23nBLqZSIfSyikOsY1qj5g5OsZuf2c9pZjnLcX7jFX/z
Uks61WE0EcIyz/g9npE/4t7Mxc8zH7/PAq+5whv+0ar5L3/yH9f4n+sMxSFs
xDtzk3nuxbW0FffUkb442yI/cp5jnOEwv7KPn/iOk3zLNxoxP+cgn7KHSXbG
tT27DHfYyByfxft5fzveT491ogO9duZKZljBNpazlWVs4SO+4kO+ZLNKzU18
wAZaPryg7UI9k0wn7h5FqGUi/s5e7N//H24BdNtKbQ==
       "]]}, 
     {GrayLevel[0], Line3DBox[CompressedData["
1:eJwl0stLlFEYB+D3c5xb2iokt0Og2wh0K0VtBSf/gmmpjNhWhFq4CSGXDkHt
us/YZSGCbtuUVjp2M5GMBJGIvECUWs9Hix/P75zFeQ+HU6qMlKtJREzIiZaI
38zxs83DXESRhXxEJzvYzTPs5Tle4nkOcoBluaJXeZXjvM5JTvEW7/AhG5zj
Ai8UInbZbvardCZD7rZGLFrf4xLv8zUf8E16Dt/yEZf5mHVZ0RtscoarfMJ3
fMr3fMYPfM6PnM5G7POkuZ9YZCJNd3xp/YLznGU9vQtvs8abvMFrHOMohzkk
Fb2fl9nHizzLHpbYxVM8ne57h022mVtgnr94kNG5xxx/MssfbOV3ZrjDFm4z
4Ra/Sehf+Vf9wmNu8IjrPOQa/7DmHQ6S///hH+EESsU=
       "]]}, {
      Line3DBox[{1468, 1781, 770, 1467, 2349, 1690, 1469, 2350, 1691, 1470, 
       2351, 1692, 1471, 2352, 1693, 1472, 2353, 1694, 1473, 2354, 1695, 1474,
        2355, 2138, 2454, 1475, 2356, 1696, 1476, 2357, 1697, 1477, 2358, 
       1698, 1478, 2359, 1699, 1479, 2360, 1700, 1480, 2241, 2361, 1701, 
       1782}], Line3DBox[{1482, 2139, 2455, 1481, 785, 1483, 2362, 1702, 1484,
        2363, 1703, 1485, 2364, 1704, 1486, 2365, 1705, 1487, 2366, 1706, 
       1488, 2367, 2140, 2456, 1489, 2141, 2457, 1490, 2368, 1707, 1491, 2369,
        1708, 1492, 2370, 1709, 1493, 2371, 1710, 1494, 2372, 1711, 1495}], 
      Line3DBox[{1497, 2142, 2458, 1496, 2143, 2459, 1498, 801, 1499, 2373, 
       1712, 1500, 2374, 1713, 1501, 2375, 1714, 1502, 2376, 1715, 1503, 2377,
        2144, 2460, 1504, 2145, 2461, 1505, 2146, 2462, 1506, 2378, 1716, 
       1507, 2379, 1717, 1508, 2380, 1718, 1509, 2381, 1719, 1510}], 
      Line3DBox[{1512, 2147, 2463, 1511, 2148, 2464, 1513, 2149, 2465, 1514, 
       817, 1515, 2382, 1720, 1516, 2383, 1721, 1517, 2384, 1722, 1518, 2385, 
       2150, 2466, 1519, 2151, 2467, 1520, 2152, 2468, 1521, 2153, 2469, 1522,
        2386, 1723, 1523, 2387, 1724, 1524, 2388, 1725, 1525}], 
      Line3DBox[{1527, 2154, 2470, 1526, 2155, 2471, 1528, 2156, 2472, 1529, 
       2157, 2473, 1530, 833, 1531, 2389, 1726, 1532, 2390, 1727, 1533, 2391, 
       2158, 2474, 1534, 2159, 2475, 1535, 2160, 2476, 1536, 2161, 2477, 1537,
        2162, 2478, 1538, 2392, 1728, 1539, 2393, 1729, 1540}], 
      Line3DBox[{1542, 2163, 2479, 1541, 2164, 2480, 1543, 2165, 2481, 1544, 
       2166, 2482, 1545, 2167, 2483, 1546, 849, 1547, 2394, 1730, 1548, 2395, 
       2168, 2484, 1549, 2169, 2485, 1550, 2170, 2486, 1551, 2171, 2487, 1552,
        2172, 2488, 1553, 2173, 2489, 1554, 2396, 1731, 1555}], 
      Line3DBox[{1557, 2174, 2490, 1556, 2175, 2491, 1558, 2176, 2492, 1559, 
       2177, 2493, 1560, 2178, 2494, 1561, 2179, 2495, 1562, 865, 1563, 2397, 
       2180, 2496, 1564, 2181, 2497, 1565, 2182, 2498, 1566, 2183, 2499, 1567,
        2184, 2500, 1568, 2185, 2501, 1569, 2186, 2502, 1570}], 
      Line3DBox[{1574, 2398, 1732, 1572, 2399, 1733, 1576, 2400, 1734, 1578, 
       2401, 1735, 1580, 2402, 1736, 1582, 2403, 1737, 1584, 2404, 1738, 1586,
        2405, 882, 1588, 2406, 1739, 1590, 2407, 1740, 1592, 2408, 1741, 1594,
        2409, 1742, 1596, 2410, 1743, 1598, 2411, 1744, 1600}], 
      Line3DBox[{1599, 2516, 2199, 1597, 2515, 2198, 1595, 2514, 2197, 1593, 
       2513, 2196, 1591, 2512, 2195, 1589, 2511, 2194, 1587, 2510, 881, 1585, 
       2509, 2193, 1583, 2508, 2192, 1581, 2507, 2191, 1579, 2506, 2190, 1577,
        2505, 2189, 1575, 2504, 2188, 1571, 2503, 2187, 1573}], 
      Line3DBox[{1602, 2200, 2517, 1601, 2412, 1745, 1603, 2413, 1746, 1604, 
       2414, 1747, 1605, 2415, 1748, 1606, 2416, 1749, 1607, 2417, 1750, 1608,
        2418, 2201, 2518, 1609, 898, 1610, 2419, 1751, 1611, 2420, 1752, 1612,
        2421, 1753, 1613, 2422, 1754, 1614, 2423, 1755, 1615}], 
      Line3DBox[{1617, 2202, 2519, 1616, 2203, 2520, 1618, 2424, 1756, 1619, 
       2425, 1757, 1620, 2426, 1758, 1621, 2427, 1759, 1622, 2428, 1760, 1623,
        2429, 2204, 2521, 1624, 2205, 2522, 1625, 914, 1626, 2430, 1761, 1627,
        2431, 1762, 1628, 2432, 1763, 1629, 2433, 1764, 1630}], 
      Line3DBox[{1632, 2206, 2523, 1631, 2207, 2524, 1633, 2208, 2525, 1634, 
       2434, 1765, 1635, 2435, 1766, 1636, 2436, 1767, 1637, 2437, 1768, 1638,
        2438, 2209, 2526, 1639, 2210, 2527, 1640, 2211, 2528, 1641, 930, 1642,
        2439, 1769, 1643, 2440, 1770, 1644, 2441, 1771, 1645}], 
      Line3DBox[{1647, 2212, 2529, 1646, 2213, 2530, 1648, 2214, 2531, 1649, 
       2215, 2532, 1650, 2442, 1772, 1651, 2443, 1773, 1652, 2444, 1774, 1653,
        2445, 2216, 2533, 1654, 2217, 2534, 1655, 2218, 2535, 1656, 2219, 
       2536, 1657, 946, 1658, 2446, 1775, 1659, 2447, 1776, 1660}], 
      Line3DBox[{1662, 2220, 2537, 1661, 2221, 2538, 1663, 2222, 2539, 1664, 
       2223, 2540, 1665, 2224, 2541, 1666, 2448, 1777, 1667, 2449, 1778, 1668,
        2450, 2225, 2542, 1669, 2226, 2543, 1670, 2227, 2544, 1671, 2228, 
       2545, 1672, 2229, 2546, 1673, 962, 1674, 2451, 1779, 1675}], 
      Line3DBox[{1689, 1786, 982, 1688, 2557, 2240, 1687, 2556, 2239, 1686, 
       2555, 2238, 1685, 2554, 2237, 1684, 2553, 2236, 1683, 2552, 2235, 2453,
        1682, 1780, 2452, 1681, 2551, 2234, 1680, 2550, 2233, 1679, 2549, 
       2232, 1678, 2548, 2231, 1677, 2547, 2230, 1676, 2558, 1784, 1783, 
       1785}], Line3DBox[{1788, 2093, 1204, 1787, 2659, 2005, 1789, 2660, 
       2006, 1790, 2661, 2007, 1791, 2662, 2008, 1792, 2338, 2753, 2009, 2116,
        2663, 2094, 2242, 2559, 1793, 2664, 2010, 1794, 2665, 2011, 1795, 
       2666, 2012, 1796, 2339, 2754, 2013, 2117, 2340, 2755, 2014, 1797, 2667,
        2015, 1798, 2668, 2095, 2016, 2096}], 
      Line3DBox[{1800, 2243, 2560, 1799, 1215, 1801, 2669, 2017, 1802, 2670, 
       2018, 1803, 2671, 2019, 1804, 2672, 2097, 2020, 2118, 2673, 2098, 2244,
        2561, 1805, 2245, 2562, 1806, 2674, 2021, 1807, 2099, 2756, 2022, 
       2119, 2341, 2757, 2023, 1808, 2675, 2024, 1809, 2676, 2025, 1810, 2677,
        2026, 1811}], 
      Line3DBox[{1813, 2246, 2563, 1812, 2247, 2564, 1814, 1228, 1815, 2678, 
       2027, 1816, 2679, 2123, 2124, 2028, 1817, 2680, 2127, 2128, 2029, 1818,
        2681, 2135, 2136, 2248, 2565, 1819, 2249, 2566, 1820, 2250, 2567, 
       1821, 2100, 2758, 2030, 2120, 2342, 2759, 2031, 1822, 2682, 2032, 1823,
        2683, 2033, 1824, 2684, 2034, 1825}], 
      Line3DBox[{1827, 2251, 2568, 1826, 2252, 2569, 1828, 2253, 2570, 1829, 
       1240, 1830, 2685, 2101, 2125, 2102, 2126, 1831, 2347, 2765, 2130, 2103,
        2129, 2104, 2134, 1832, 2348, 2766, 2132, 2137, 2133, 2571, 1833, 
       2254, 2572, 1834, 2255, 2573, 1835, 2256, 2574, 1836, 2686, 2035, 1837,
        2687, 2036, 1838, 2688, 2037, 1839, 2689, 2038, 1840}], 
      Line3DBox[{1842, 2257, 2575, 1841, 2258, 2576, 1843, 2259, 2577, 1844, 
       2260, 2578, 1845, 1421, 2121, 2105, 2131, 1846, 2764, 2106, 2122, 2107,
        1847, 2690, 2261, 2579, 1848, 2262, 2580, 1849, 2108, 2109, 2581, 
       1850, 2110, 2760, 2343, 1851, 2263, 2582, 1852, 2691, 2039, 1853, 2692,
        2040, 1854, 2693, 2041, 1855}], 
      Line3DBox[{1857, 2264, 2583, 1856, 2265, 2584, 1858, 2266, 2585, 1859, 
       2267, 2586, 1860, 2268, 2587, 1861, 1267, 1862, 2694, 2269, 2588, 1863,
        2270, 2589, 1864, 2111, 2761, 2344, 1865, 2112, 2762, 2345, 1866, 
       2271, 2590, 1867, 2272, 2591, 1868, 2695, 2042, 1869, 2696, 2043, 
       1870}], Line3DBox[{1874, 2697, 2044, 1872, 2698, 2045, 1876, 2699, 
       2046, 1878, 2700, 2047, 1880, 2701, 2048, 1882, 2702, 2049, 1884, 2703,
        1284, 1886, 2704, 2050, 1888, 2705, 2051, 1890, 2706, 2052, 1892, 
       2707, 2053, 1894, 2708, 2054, 1896, 2709, 2055, 1898, 2710, 2056, 
       1900}], Line3DBox[{1899, 1291, 1897, 2604, 2284, 1895, 2603, 2283, 
       1893, 2602, 2282, 1891, 2601, 2281, 1889, 2600, 2280, 1887, 2599, 2279,
        1885, 2598, 1283, 1883, 2597, 2278, 1881, 2596, 2277, 1879, 2595, 
       2276, 1877, 2594, 2275, 1875, 2593, 2274, 1871, 2592, 2273, 1873}], 
      Line3DBox[{1902, 2285, 2605, 1901, 2711, 2057, 1903, 2712, 2058, 1904, 
       2713, 2059, 1905, 2714, 2060, 1906, 2715, 2061, 1907, 2716, 2286, 2606,
        1908, 1300, 1909, 2717, 2062, 1910, 2718, 2063, 1911, 2719, 2064, 
       1912, 2720, 2065, 1913, 2721, 2066, 1914, 2722, 2067, 1915}], 
      Line3DBox[{1917, 2287, 2607, 1916, 2288, 2608, 1918, 2723, 2068, 1919, 
       2724, 2069, 1920, 2725, 2070, 1921, 2726, 2071, 1922, 2727, 2289, 2609,
        1923, 2290, 2610, 1924, 1316, 1925, 2728, 2072, 1926, 2729, 2073, 
       1927, 2730, 2074, 1928, 2731, 2075, 1929, 2732, 2076, 1930}], 
      Line3DBox[{1932, 2291, 2611, 1931, 2292, 2612, 1933, 2293, 2613, 1934, 
       2733, 2077, 1935, 2734, 2078, 1936, 2735, 2079, 1937, 2736, 2294, 2614,
        1938, 2295, 2615, 1939, 2296, 2616, 1940, 1332, 1941, 2737, 2080, 
       1942, 2738, 2081, 1943, 2739, 2082, 1944, 2740, 2083, 1945}], 
      Line3DBox[{1947, 2297, 2617, 1946, 2298, 2618, 1948, 2299, 2619, 1949, 
       2300, 2620, 1950, 2741, 2084, 1951, 2742, 2085, 1952, 2743, 2301, 2621,
        1953, 2302, 2622, 1954, 2303, 2623, 1955, 2304, 2624, 1956, 1348, 
       1957, 2744, 2086, 1958, 2745, 2087, 1959, 2746, 2088, 1960}], 
      Line3DBox[{1962, 2305, 2625, 1961, 2306, 2626, 1963, 2307, 2627, 1964, 
       2308, 2628, 1965, 2309, 2629, 1966, 2747, 2089, 1967, 2748, 2310, 2630,
        1968, 2311, 2631, 1969, 2312, 2632, 1970, 2313, 2633, 1971, 2314, 
       2634, 1972, 1364, 1973, 2749, 2090, 1974, 2750, 2091, 1975}], 
      Line3DBox[{1977, 2315, 2635, 1976, 2316, 2636, 1978, 2317, 2637, 1979, 
       2318, 2638, 1980, 2319, 2639, 1981, 2320, 2640, 1982, 2751, 2321, 2641,
        1983, 2322, 2642, 1984, 2323, 2643, 1985, 2324, 2644, 1986, 2325, 
       2645, 1987, 2326, 2646, 1988, 1380, 1989, 2752, 2092, 1990}], 
      Line3DBox[{2004, 2115, 1430, 2003, 2658, 2337, 2002, 2657, 2336, 2001, 
       2656, 2335, 2000, 2655, 2334, 1999, 2654, 2333, 1998, 2653, 2332, 1997,
        2652, 1388, 1996, 2651, 2331, 1995, 2650, 2330, 1994, 2649, 2329, 
       1993, 2648, 2328, 1992, 2647, 2327, 1991, 2346, 2763, 2113, 2114}]}, {
      Line3DBox[{548, 771, 2349, 549, 785, 577, 2459, 800, 592, 2464, 815, 
       607, 2471, 830, 622, 2480, 845, 637, 2491, 860, 652, 2504, 875, 2399, 
       667, 890, 2412, 682, 2520, 905, 697, 2524, 920, 712, 2530, 935, 727, 
       2538, 950, 742, 2547, 965, 757}], 
      Line3DBox[{550, 772, 2350, 551, 786, 2362, 578, 801, 593, 2465, 816, 
       608, 2472, 831, 623, 2481, 846, 638, 2492, 861, 653, 2505, 876, 2400, 
       668, 891, 2413, 683, 906, 2424, 698, 2525, 921, 713, 2531, 936, 728, 
       2539, 951, 743, 2548, 966, 758}], 
      Line3DBox[{552, 773, 2351, 553, 787, 2363, 579, 802, 2373, 594, 817, 
       609, 2473, 832, 624, 2482, 847, 639, 2493, 862, 654, 2506, 877, 2401, 
       669, 892, 2414, 684, 907, 2425, 699, 922, 2434, 714, 2532, 937, 729, 
       2540, 952, 744, 2549, 967, 759}], 
      Line3DBox[{554, 774, 2352, 555, 788, 2364, 580, 803, 2374, 595, 818, 
       2382, 610, 833, 625, 2483, 848, 640, 2494, 863, 655, 2507, 878, 2402, 
       670, 893, 2415, 685, 908, 2426, 700, 923, 2435, 715, 938, 2442, 730, 
       2541, 953, 745, 2550, 968, 760}], 
      Line3DBox[{556, 775, 2353, 557, 789, 2365, 581, 804, 2375, 596, 819, 
       2383, 611, 834, 2389, 626, 849, 641, 2495, 864, 656, 2508, 879, 2403, 
       671, 894, 2416, 686, 909, 2427, 701, 924, 2436, 716, 939, 2443, 731, 
       954, 2448, 746, 2551, 969, 761}], 
      Line3DBox[{558, 776, 2354, 559, 790, 2366, 582, 805, 2376, 597, 820, 
       2384, 612, 835, 2390, 627, 850, 2394, 642, 865, 657, 2509, 880, 2404, 
       672, 895, 2417, 687, 910, 2428, 702, 925, 2437, 717, 940, 2444, 732, 
       955, 2449, 747, 970, 2452, 762}], 
      Line3DBox[{560, 777, 2355, 562, 791, 2367, 583, 806, 2377, 598, 821, 
       2385, 613, 836, 2391, 628, 851, 2395, 643, 866, 2397, 658, 881, 2405, 
       673, 896, 2418, 688, 911, 2429, 703, 926, 2438, 718, 941, 2445, 733, 
       956, 2450, 748, 971, 2453, 763}], 
      Line3DBox[{564, 779, 2356, 565, 2457, 793, 585, 2461, 808, 600, 2467, 
       823, 615, 2475, 838, 630, 2485, 853, 645, 2497, 868, 660, 2511, 883, 
       2406, 675, 898, 690, 2522, 913, 705, 2527, 928, 720, 2534, 943, 735, 
       2543, 958, 750, 2553, 973, 765}], 
      Line3DBox[{566, 780, 2357, 567, 794, 2368, 586, 2462, 809, 601, 2468, 
       824, 616, 2476, 839, 631, 2486, 854, 646, 2498, 869, 661, 2512, 884, 
       2407, 676, 899, 2419, 691, 914, 706, 2528, 929, 721, 2535, 944, 736, 
       2544, 959, 751, 2554, 974, 766}], 
      Line3DBox[{568, 781, 2358, 569, 795, 2369, 587, 810, 2378, 602, 2469, 
       825, 617, 2477, 840, 632, 2487, 855, 647, 2499, 870, 662, 2513, 885, 
       2408, 677, 900, 2420, 692, 915, 2430, 707, 930, 722, 2536, 945, 737, 
       2545, 960, 752, 2555, 975, 767}], 
      Line3DBox[{570, 782, 2359, 571, 796, 2370, 588, 811, 2379, 603, 826, 
       2386, 618, 2478, 841, 633, 2488, 856, 648, 2500, 871, 663, 2514, 886, 
       2409, 678, 901, 2421, 693, 916, 2431, 708, 931, 2439, 723, 946, 738, 
       2546, 961, 753, 2556, 976, 768}], 
      Line3DBox[{572, 783, 2360, 573, 797, 2371, 589, 812, 2380, 604, 827, 
       2387, 619, 842, 2392, 634, 2489, 857, 649, 2501, 872, 664, 2515, 887, 
       2410, 679, 902, 2422, 694, 917, 2432, 709, 932, 2440, 724, 947, 2446, 
       739, 962, 754, 2557, 977, 769}], 
      Line3DBox[{574, 979, 980, 2361, 575, 798, 2372, 590, 813, 2381, 605, 
       828, 2388, 620, 843, 2393, 635, 858, 2396, 650, 2502, 873, 665, 2516, 
       888, 2411, 680, 903, 2423, 695, 918, 2433, 710, 933, 2441, 725, 948, 
       2447, 740, 963, 2451, 755, 982, 983, 984}], 
      Line3DBox[{756, 964, 2558, 981, 741, 949, 2537, 726, 934, 2529, 711, 
       919, 2523, 696, 904, 2519, 681, 889, 2517, 666, 2398, 874, 2503, 651, 
       859, 2490, 636, 844, 2479, 621, 829, 2470, 606, 814, 2463, 591, 799, 
       2458, 576, 784, 2455, 547, 770, 978, 985}], 
      Line3DBox[{764, 972, 2552, 749, 957, 2542, 734, 942, 2533, 719, 927, 
       2526, 704, 912, 2521, 689, 897, 2518, 674, 882, 2510, 659, 867, 2496, 
       644, 852, 2484, 629, 837, 2474, 614, 822, 2466, 599, 807, 2460, 584, 
       792, 2456, 563, 778, 2454, 561}], 
      Line3DBox[{987, 1205, 2659, 988, 1215, 1016, 2564, 1227, 1031, 2569, 
       1238, 1043, 2576, 1250, 1056, 2584, 1263, 1071, 2593, 1278, 2698, 1086,
        1293, 2711, 1101, 2608, 1308, 1116, 2612, 1323, 1131, 2618, 1338, 
       1146, 2626, 1353, 1161, 2636, 1368, 1176, 2647, 1383, 1191}], 
      Line3DBox[{989, 1206, 2660, 990, 1216, 2669, 1017, 1228, 1032, 2570, 
       1239, 1044, 2577, 1251, 1057, 2585, 1264, 1072, 2594, 1279, 2699, 1087,
        1294, 2712, 1102, 1309, 2723, 1117, 2613, 1324, 1132, 2619, 1339, 
       1147, 2627, 1354, 1162, 2637, 1369, 1177, 2648, 1384, 1192}], 
      Line3DBox[{991, 1207, 2661, 992, 1217, 2670, 1018, 1229, 2678, 1033, 
       1240, 1045, 2578, 1252, 1058, 2586, 1265, 1073, 2595, 1280, 2700, 1088,
        1295, 2713, 1103, 1310, 2724, 1118, 1325, 2733, 1133, 2620, 1340, 
       1148, 2628, 1355, 1163, 2638, 1370, 1178, 2649, 1385, 1193}], 
      Line3DBox[{993, 1208, 2662, 994, 1218, 2671, 1019, 1449, 2679, 1450, 
       1451, 1419, 2685, 1420, 1445, 1421, 1422, 1059, 2587, 1266, 1074, 2596,
        1281, 2701, 1089, 1296, 2714, 1104, 1311, 2725, 1119, 1326, 2734, 
       1134, 1341, 2741, 1149, 2629, 1356, 1164, 2639, 1371, 1179, 2650, 1386,
        1194}], 
      Line3DBox[{995, 1397, 1398, 2753, 996, 1408, 2672, 1409, 1020, 1452, 
       2680, 1453, 1454, 1455, 1456, 2765, 1441, 1448, 1457, 1447, 1446, 1423,
        2764, 1442, 1424, 1060, 1267, 1075, 2597, 1282, 2702, 1090, 1297, 
       2715, 1105, 1312, 2726, 1120, 1327, 2735, 1135, 1342, 2742, 1150, 1357,
        2747, 1165, 2640, 1372, 1180, 2651, 1387, 1195}], 
      Line3DBox[{997, 1399, 1434, 2663, 1401, 999, 1410, 1436, 2673, 1412, 
       1021, 1461, 2681, 1463, 1464, 1465, 1466, 2766, 1460, 1459, 1046, 1253,
        2690, 1061, 1268, 2694, 1076, 1283, 2703, 1091, 1298, 2716, 1106, 
       1313, 2727, 1121, 1328, 2736, 1136, 1343, 2743, 1151, 1358, 2748, 1166,
        1373, 2751, 1181, 1388, 1196}], 
      Line3DBox[{1001, 1210, 2664, 1002, 2562, 1220, 1023, 2566, 1231, 1035, 
       2572, 1242, 1048, 2580, 1255, 1063, 2589, 1270, 1078, 2599, 1285, 2704,
        1093, 1300, 1108, 2610, 1315, 1123, 2615, 1330, 1138, 2622, 1345, 
       1153, 2631, 1360, 1168, 2642, 1375, 1183, 2653, 1390, 1198}], 
      Line3DBox[{1003, 1211, 2665, 1004, 1221, 2674, 1024, 2567, 1232, 1036, 
       2573, 1243, 1049, 1425, 2581, 1443, 1256, 1064, 2761, 1427, 1444, 1271,
        1079, 2600, 1286, 2705, 1094, 1301, 2717, 1109, 1316, 1124, 2616, 
       1331, 1139, 2623, 1346, 1154, 2632, 1361, 1169, 2643, 1376, 1184, 2654,
        1391, 1199}], 
      Line3DBox[{1005, 1212, 2666, 1006, 1413, 1437, 1222, 2756, 1025, 1416, 
       1439, 1233, 2758, 1037, 2574, 1244, 1050, 2760, 1426, 1257, 1065, 2762,
        1428, 1272, 1080, 2601, 1287, 2706, 1095, 1302, 2718, 1110, 1317, 
       2728, 1125, 1332, 1140, 2624, 1347, 1155, 2633, 1362, 1170, 2644, 1377,
        1185, 2655, 1392, 1200}], 
      Line3DBox[{1007, 1402, 1403, 2754, 1008, 1414, 1438, 1415, 2757, 1026, 
       1417, 1440, 1418, 2759, 1038, 1245, 2686, 1051, 2582, 1258, 1066, 2590,
        1273, 1081, 2602, 1288, 2707, 1096, 1303, 2719, 1111, 1318, 2729, 
       1126, 1333, 2737, 1141, 1348, 1156, 2634, 1363, 1171, 2645, 1378, 1186,
        2656, 1393, 1201}], 
      Line3DBox[{1009, 1404, 1435, 1405, 2755, 1010, 1223, 2675, 1027, 1234, 
       2682, 1039, 1246, 2687, 1052, 1259, 2691, 1067, 2591, 1274, 1082, 2603,
        1289, 2708, 1097, 1304, 2720, 1112, 1319, 2730, 1127, 1334, 2738, 
       1142, 1349, 2744, 1157, 1364, 1172, 2646, 1379, 1187, 2657, 1394, 
       1202}], Line3DBox[{1011, 1213, 2667, 1012, 1224, 2676, 1028, 1235, 
       2683, 1040, 1247, 2688, 1053, 1260, 2692, 1068, 1275, 2695, 1083, 2604,
        1290, 2709, 1098, 1305, 2721, 1113, 1320, 2731, 1128, 1335, 2739, 
       1143, 1350, 2745, 1158, 1365, 2749, 1173, 1380, 1188, 2658, 1395, 
       1203}], Line3DBox[{1013, 1406, 2668, 1407, 1014, 1225, 2677, 1029, 
       1236, 2684, 1041, 1248, 2689, 1054, 1261, 2693, 1069, 1276, 2696, 1084,
        1291, 2710, 1099, 1306, 2722, 1114, 1321, 2732, 1129, 1336, 2740, 
       1144, 1351, 2746, 1159, 1366, 2750, 1174, 1381, 2752, 1189, 1430, 1431,
        1432}], 
      Line3DBox[{1190, 1382, 1429, 2763, 1175, 1367, 2635, 1160, 1352, 2625, 
       1145, 1337, 2617, 1130, 1322, 2611, 1115, 1307, 2607, 1100, 1292, 2605,
        1085, 2697, 1277, 2592, 1070, 1262, 2583, 1055, 1249, 2575, 1042, 
       1237, 2568, 1030, 1226, 2563, 1015, 1214, 2560, 986, 1204, 1396, 
       1433}], Line3DBox[{1197, 1389, 2652, 1182, 1374, 2641, 1167, 1359, 
       2630, 1152, 1344, 2621, 1137, 1329, 2614, 1122, 1314, 2609, 1107, 1299,
        2606, 1092, 1284, 2598, 1077, 1269, 2588, 1062, 1254, 2579, 1047, 
       1241, 2571, 1458, 1034, 1230, 2565, 1462, 1022, 1219, 2561, 1411, 1000,
        1209, 2559, 1400, 998}]}, {}, {}, {}, {}, {}}},
   VertexNormals->CompressedData["
1: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
22pgv1yzunMo9ssNUPWf9Gn6z/m9bz2xXw7xsPlgv5zd05aH2C83WBu2F/vl
XqxcehD75SpDT6/Efrnaz8tXDGm+BDWdcXbslxM5pziK/XKbn91swH45W9FB
buyX47r94Kfwy82k/8QPPat4bpUC9naLkp9bhaLlOTHvsF9uCVX/OTNN/xnZ
SbMb++WcRhdvx365YF7meuyXizaWPon9ct5z9pzDfjnuMdsH2C/nMnCqCPvl
PgwkFGC/XOZKTjPsl+PhNZfGfrkbq24oYb9cY7Y0G/bL/eg620x4V8dQC9Z/
9s8VJPWf2ok5v6n/2I297JV78ArWF4qUyD0ApPHEjAn75fpqh0KxX668v88T
++WaKGKbsV+u0GYN3aeMemg5kT2K/XJr5cpfYL/c664AN+yXK7vuE439ct9G
aRWxX6768k3etOxYcOjcbYj9ckSr9E/hl/tP8a7xrqZnjPnAnLU27xljAiL2
7qnCfrmLHjGfzBhqIDvduMyMIQ/FWbTfwX65Oe59R7Ffbh/7spPYL0cvN3sT
9suJL2Z2xH65Z7qM7tgvJ1rCG4n9cu6tmxlEjfLAYWXGTuyXWyHFchb75f5o
nW0bfT+ZZ1dbPz6AfTgCot99ODP5rGY6f6Y+tP+X/rT/v8f/e+HGe3rJ6zrs
bjCEryvm/XLyumbSu9Cu77rQrB2IjI/yJWcST2NZS+o8+frXvv/uT+sTUueh
Jb+nJP37MeG/6vJmwq9oipOfI9ahN4b3y7cN037zc/7o+MyEu+rdncexpho2
Nnyze9WeDpyi+0efnqCgZ2pndXd8qoKCANnnoSEJMGdb3ds8bQoKPJhExk3D
fAWpDwyo2/4mH36U/elMz8VM5w9R++g+pfbRdaD20V2ry03e92U3JkhdMZjd
/Tfv+3+qp32iPtf+1Oc6l/pci9I9aFukXg3H0rV8eUeTgUPp1UXfKXy/QSp5
/iepeLIfcuHdB+T5/+l9+VR5+Lte6vuAfI6O7/yuj92mzg9Xps0PF6j4XirO
/jvPGz168Q14/Hu09pD+TD91bXL8M+E7L0aSeI5LeTbG+YU0SXwo/nvfVDFq
39S31L6pM+EzXe9M+mpy9y4S7zBmJs93jHr433ywOdPm5yWR3z8/stqLPJ8r
2vU3/ZOZ7N95WJC0iRyn+6DDb47H5/N33DAynjxfdZE9iZt7f/+cBUf6yfGU
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
dDfauIRpztXaeNB31J1Ura2BI/05o8x8FCSuNZvx+bVYaJMbYXl+rQoYj4a8
D3GioBQv2eOBhVGQY5V7KLDwFTx4zVL+e/4uNgvpU1VJe0D6VE/u/BX3odZX
mk6rr6yl1lFyTKujfEKtl7w1rV4yi1rn+HZanaP6tHrGfmo9Iz+1bjFgWt1i
PLU+sW1afeJMdYgz1RvOFIcHbgvFnZLqIMRXZPGt5hwUIKikWm/3n/Pzyxte
Q9wfjFb6uB7uDxaP3Llxf7AHQTqH1ghVQ57RC/k1QrmIKHMW3Mf3+93HMJVS
c5ep5/ChQZ6Ry/VC1DRf7Nnu7VP73MexI637GkDOSmC4dV8RilzkIs882oUm
G6rmmKWWgeD2BavMUjPQcB+D1WT7Hz8v3WzKYqjfXQUTqmX09btz0DNpJ5+u
qfes44erl3e9bQRlyqczu94WI6utCxTq7LtQB7HrG+vlGuB3ZBxivZyHUuYJ
ajF/6kZVpjLjHYZ5sPDZxYWfDePRWbMXip+N/7x93K53CzpEGYtBu5u/UZQx
Ba3cb63zWAyvn6tFPE7WQX5MvoDHyQJEz9KTK6Lf/f+0d+bRUO//H68kpUKX
7C4pUVHdVCS825RCCy4p1aVUt4jst2TJpAVlSbmyZL2WbINQ8jJki2wx9pR9
mxlLlmj5znua+z2/43umc7pH+f5+5zf/zDmvM+fj8/GZ+Xwen/fz9Xy+EDUi
l8SjWw+bJPUf8+gWo/g75Uesif1oY81G5ZNSFSCcLqh+UioH1fKeHfsthYok
l3yKGfFLg9RlswdH/CJRigKoExpn7ngl2sRUhgmZcHVdrOIwIQatEuvxHi3F
z6e2ZXUcldDvNZRfx0FCb2qviC3ypKIlsSufHIuthyPGHKHHYosRJU1G1jqg
H22S2dh0xbMGbi39WHvFMx9V7939fE0kBRX/rh13Ub4QDGx1SBfl0xFXWHgl
ux4NDayWPnzz0x3wnm8e6v7JCaVt+MCf85V1G7LVl/XbA3/WMNZvl7v5fZXr
WD2v/d0n+XpKn+S3/t9Y8SerfsKWiD8Y667xnCKMvqzU+SXTyqWs+ut+Hqxl
/N1xyjVGXSW04Msc1RNzjdlX5UFQ687w+dEJMFqwdbTmB+S2fWvf2vfeH1b1
HWdynoxdTIITnww8sslG0HiE04KbRv/e6o4VIZNqGPqp+dqd/UQ4rd+nnUu/
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

    "]],
  AutomaticImageSize->True,
  Axes->True,
  BoxRatios->{1, 1, 0.4},
  ImageSize->{381.9394592568001, 252.4359459221545},
  Method->{"RotationControl" -> "Globe"},
  PlotRange->{{-5, 5}, {-5, 5}, {0., 1.}},
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02], 
    Scaled[0.02]},
  ViewPoint->{2.0543691963164528`, -2.4155753687378083`, 1.1809161033593056`},
  
  ViewVertical->{0., 0., 1.}]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell["\<\
For a given value of x (chosen by the slider) we see the two different sets, \
the value of x and the probabilites of the two sets:\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"RegionPlot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"w1", "+", "w2"}], "\[LessEqual]", 
           RowBox[{"1", "+", 
            RowBox[{"2", 
             RowBox[{"x", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], "-", 
            RowBox[{"x", "[", 
             RowBox[{"[", "2", "]"}], "]"}]}]}], "&&", 
          RowBox[{"w2", "\[LessEqual]", 
           RowBox[{
            FractionBox["1", "2"], 
            RowBox[{"(", 
             RowBox[{"1", "+", 
              RowBox[{"2", 
               RowBox[{"x", "[", 
                RowBox[{"[", "1", "]"}], "]"}]}], "-", 
              RowBox[{"x", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "+", "1", "+", 
              RowBox[{
               FractionBox["1", "2"], 
               RowBox[{"x", "[", 
                RowBox[{"[", "1", "]"}], "]"}]}], "+", 
              RowBox[{"2", 
               RowBox[{"x", "[", 
                RowBox[{"[", "2", "]"}], "]"}]}]}], ")"}]}]}]}], ",", 
         RowBox[{
          RowBox[{
           RowBox[{"w1", "+", "w2"}], "\[LessEqual]", 
           RowBox[{"1", "+", 
            RowBox[{"2", 
             RowBox[{"x", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], "-", 
            RowBox[{"x", "[", 
             RowBox[{"[", "2", "]"}], "]"}]}]}], "&&", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "w1"}], "+", "w2"}], "\[LessEqual]", 
           RowBox[{"1", "+", 
            RowBox[{
             FractionBox["1", "2"], 
             RowBox[{"x", "[", 
              RowBox[{"[", "1", "]"}], "]"}]}], "+", 
            RowBox[{"2", 
             RowBox[{"x", "[", 
              RowBox[{"[", "2", "]"}], "]"}]}]}]}]}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"w1", ",", 
         RowBox[{"-", "2"}], ",", "2"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"w2", ",", 
         RowBox[{"-", "2"}], ",", "2"}], "}"}]}], "]"}], ",", "x", ",", 
     RowBox[{"Evaluate", "[", 
      RowBox[{"pIni", "/.", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"x1", "\[Rule]", 
          RowBox[{"x", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], ",", 
         RowBox[{"x2", "\[Rule]", 
          RowBox[{"x", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}]}], "]"}], ",", 
     RowBox[{"Evaluate", "[", 
      RowBox[{"pTrans", "/.", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"x1", "\[Rule]", 
          RowBox[{"x", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], ",", 
         RowBox[{"x2", "\[Rule]", 
          RowBox[{"x", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}]}], "]"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", "5"}], ",", 
       RowBox[{"-", "5"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"5", ",", "5"}], "}"}]}], "}"}], ",", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`x$$ = {-0.14999999999999947`, \
-0.2999999999999998}, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`x$$], {-5, -5}, {5, 5}}}, Typeset`size$$ = {
    460., {88., 93.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`x$47750$$ = {0, 0}}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`x$$ = {-5, -5}}, 
      "ControllerVariables" :> {
        Hold[$CellContext`x$$, $CellContext`x$47750$$, {0, 0}]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> {
        RegionPlot[{
          
          And[$CellContext`w1 + $CellContext`w2 <= 
           1 + 2 Part[$CellContext`x$$, 1] - 
            Part[$CellContext`x$$, 2], $CellContext`w2 <= (1/2) (1 + 
             2 Part[$CellContext`x$$, 1] - Part[$CellContext`x$$, 2] + 
             1 + (1/2) Part[$CellContext`x$$, 1] + 
             2 Part[$CellContext`x$$, 2])], 
          
          And[$CellContext`w1 + $CellContext`w2 <= 
           1 + 2 Part[$CellContext`x$$, 1] - 
            Part[$CellContext`x$$, 2], -$CellContext`w1 + $CellContext`w2 <= 
           1 + (1/2) Part[$CellContext`x$$, 1] + 
            2 Part[$CellContext`x$$, 2]]}, {$CellContext`w1, -2, 
          2}, {$CellContext`w2, -2, 2}], $CellContext`x$$, 
        Evaluate[
         ReplaceAll[$CellContext`pIni, {$CellContext`x1 -> 
           Part[$CellContext`x$$, 1], $CellContext`x2 -> 
           Part[$CellContext`x$$, 2]}]], 
        Evaluate[
         ReplaceAll[$CellContext`pTrans, {$CellContext`x1 -> 
           Part[$CellContext`x$$, 1], $CellContext`x2 -> 
           Part[$CellContext`x$$, 2]}]]}, 
      "Specifications" :> {{$CellContext`x$$, {-5, -5}, {5, 5}}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{505., {160., 165.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`pIni = (
         Piecewise[{{12 + 2 $CellContext`x1 + 8 $CellContext`x2, 
             
             And[$CellContext`x1 >= 
              10/9, $CellContext`x2 == (-2 - $CellContext`x1)/4]}, {
            15/2 - $CellContext`x1/2 - $CellContext`x1^2/8 - 
             2 $CellContext`x2 - $CellContext`x1 $CellContext`x2 - 
             2 $CellContext`x2^2, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               
               Inequality[(-2 - $CellContext`x1)/4, Less, $CellContext`x2, 
                Less, (6 - $CellContext`x1)/4]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(4 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (6 - $CellContext`x1)/4]]]}, {
            25/2 + (5 $CellContext`x1)/2 + $CellContext`x1^2/8 + 
             10 $CellContext`x2 + $CellContext`x1 $CellContext`x2 + 
             2 $CellContext`x2^2, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               
               Inequality[(-10 - $CellContext`x1)/4, Less, $CellContext`x2, 
                Less, (-2 - $CellContext`x1)/4]], 
              And[
               
               Inequality[(-14)/9, LessEqual, $CellContext`x1, LessEqual, 2/
                9], 
               
               Inequality[(-10 - $CellContext`x1)/4, Less, $CellContext`x2, 
                LessEqual, (-8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-10 - $CellContext`x1)/4, Less, $CellContext`x2, 
                LessEqual, (-8 + 3 $CellContext`x1)/6]]]}, {
            9/2 + (15 $CellContext`x1)/4 + (25 $CellContext`x1^2)/
              32 + (3 $CellContext`x2)/
              2 + (5 $CellContext`x1 $CellContext`x2)/8 + $CellContext`x2^2/8, 
             Or[
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-14)/9], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                LessEqual, (-2 - $CellContext`x1)/4]], 
              And[
               
               Inequality[(-14)/9, LessEqual, $CellContext`x1, LessEqual, 2/
                9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (-2 - $CellContext`x1)/4]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (-2 - $CellContext`x1)/4]]]}, {
            4 + (13 $CellContext`x1)/4 + (21 $CellContext`x1^2)/
              32 - $CellContext`x2/2 - (3 $CellContext`x1 $CellContext`x2)/
             8 - (15 $CellContext`x2^2)/8, 
             Or[
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-14)/9], 
               
               Inequality[(-2 - $CellContext`x1)/4, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               
               Inequality[(-14)/9, LessEqual, $CellContext`x1, LessEqual, 2/
                9], 
               
               Inequality[(-2 - $CellContext`x1)/4, 
                LessEqual, $CellContext`x2, Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-2 - $CellContext`x1)/4, 
                LessEqual, $CellContext`x2, 
                LessEqual, (4 - 5 $CellContext`x1)/2]]]}}, 0] + 
         Piecewise[{{4 (2 + 2 $CellContext`x2), 
             And[$CellContext`x1 == 2, 
              Inequality[-1, Less, $CellContext`x2, Less, 1]]}, {
            4 (5 - $CellContext`x2), 
             And[$CellContext`x1 == 2, 
              Inequality[1, Less, $CellContext`x2, Less, 5]]}, {16, 
             Or[
              And[$CellContext`x1 == 2, $CellContext`x2 == 1], 
              And[$CellContext`x1 > 2, 
               
               Inequality[(6 - $CellContext`x1)/4, LessEqual, $CellContext`x2,
                 LessEqual, -3 + 2 $CellContext`x1]]]}, {
            4 (2 + (-2 + $CellContext`x1 + 4 $CellContext`x2)/2), 
             Or[
              And[$CellContext`x1 > 2, 
               
               Inequality[(-2 - $CellContext`x1)/4, Less, $CellContext`x2, 
                Less, (6 - $CellContext`x1)/4]], 
              And[
               Inequality[10/9, LessEqual, $CellContext`x1, Less, 2], 
               
               Inequality[(-2 - $CellContext`x1)/4, Less, $CellContext`x2, 
                LessEqual, -3 + 2 $CellContext`x1]]]}, {
            4 (1 + 2 $CellContext`x1 - $CellContext`x2), 
             Or[
              And[$CellContext`x1 > 2, 
               
               Inequality[-3 + 2 $CellContext`x1, Less, $CellContext`x2, Less,
                 1 + 2 $CellContext`x1]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(6 - $CellContext`x1)/4, Less, $CellContext`x2, 
                Less, 1 + 2 $CellContext`x1]], 
              And[
               Inequality[10/9, LessEqual, $CellContext`x1, Less, 2], 
               
               Inequality[(6 - $CellContext`x1)/4, LessEqual, $CellContext`x2,
                 Less, 1 + 2 $CellContext`x1]]]}, {
            4 (-1 + 2 $CellContext`x1 - $CellContext`x2 + (-2 + \
$CellContext`x1 + 4 $CellContext`x2)/2), 
             Or[
              And[
               Inequality[
               2/9, Less, $CellContext`x1, Less, 10/
                9], $CellContext`x2 == (6 - $CellContext`x1)/4], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(4 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (6 - $CellContext`x1)/4]], 
              And[
               Inequality[10/9, LessEqual, $CellContext`x1, Less, 2], 
               
               Inequality[-3 + 2 $CellContext`x1, Less, $CellContext`x2, 
                Less, (6 - $CellContext`x1)/4]]]}}, 0] + 
         Piecewise[{{
            253/72 + (11 $CellContext`x1)/3 + (29 $CellContext`x2)/12 + 
             3 $CellContext`x1 $CellContext`x2 - (3 $CellContext`x2^2)/8, 
             And[$CellContext`x1 == 2/9, 
              Inequality[(-11)/9, Less, $CellContext`x2, Less, 13/9]]}, {
            2009/162 + (98 $CellContext`x1)/9 - 5 $CellContext`x2 - 
             2 $CellContext`x1 $CellContext`x2 + $CellContext`x2^2/2, 
             And[$CellContext`x1 == 2/9, 
              Inequality[13/9, Less, $CellContext`x2, Less, 49/9]]}, {
            15/2 - 2 $CellContext`x1 - 2 $CellContext`x1^2 + $CellContext`x2 + 
             2 $CellContext`x1 $CellContext`x2 - $CellContext`x2^2/2, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               
               Inequality[-3 + 2 $CellContext`x1, Less, $CellContext`x2, Less,
                 1 + 2 $CellContext`x1]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(4 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, 1 + 2 $CellContext`x1]]]}, {
            12 + 8 $CellContext`x1 - 4 $CellContext`x2, 
             Or[
              And[$CellContext`x1 == 2/9, $CellContext`x2 == 13/9], 
              
              And[$CellContext`x1 >= 10/9, $CellContext`x2 == 
               1 + 2 $CellContext`x1], 
              And[
               Inequality[
               2/9, Less, $CellContext`x1, Less, 10/9], $CellContext`x2 == 
               1 + 2 $CellContext`x1]]}, {
            9/2 + (15 $CellContext`x1)/4 + (25 $CellContext`x1^2)/
              32 + (3 $CellContext`x2)/
              2 + (5 $CellContext`x1 $CellContext`x2)/8 + $CellContext`x2^2/8, 
             Or[
              And[
               
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-14)/
                9], $CellContext`x2 == (8 + 3 $CellContext`x1)/6], 
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-14)/9], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[(-14)/9, LessEqual, $CellContext`x1, Less, 2/9], 
               Inequality[
               1 + 2 $CellContext`x1, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]]]}, {
            4 + (7 $CellContext`x1)/4 - (39 $CellContext`x1^2)/
             32 + (5 $CellContext`x2)/
              2 + (21 $CellContext`x1 $CellContext`x2)/8 - (
              3 $CellContext`x2^2)/8, 
             Or[
              And[
               Inequality[(-14)/9, LessEqual, $CellContext`x1, Less, 2/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                LessEqual, 1 + 2 $CellContext`x1]], 
              And[
               Inequality[
               2/9, Less, $CellContext`x1, Less, 10/
                9], $CellContext`x2 == (4 - 5 $CellContext`x1)/2], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (4 - 5 $CellContext`x1)/2]]]}, {
            25/2 + 10 $CellContext`x1 + 2 $CellContext`x1^2 - 
             5 $CellContext`x2 - 
             2 $CellContext`x1 $CellContext`x2 + $CellContext`x2^2/2, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               Inequality[
               1 + 2 $CellContext`x1, Less, $CellContext`x2, Less, 5 + 
                2 $CellContext`x1]], 
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-14)/9], 
               
               Inequality[(8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, 5 + 2 $CellContext`x1]], 
              And[
               Inequality[(-14)/9, LessEqual, $CellContext`x1, Less, 2/9], 
               
               Inequality[(8 + 3 $CellContext`x1)/6, 
                LessEqual, $CellContext`x2, Less, 5 + 2 $CellContext`x1]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               Inequality[
               1 + 2 $CellContext`x1, Less, $CellContext`x2, Less, 5 + 
                2 $CellContext`x1]]]}}, 0])/
        16, $CellContext`pTrans = (
         Piecewise[{{12 + 5 $CellContext`x1 + 2 $CellContext`x2, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (4 - 5 $CellContext`x1)/2]], 
              And[
               Inequality[(-14)/9, Less, $CellContext`x1, LessEqual, 2/9], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                LessEqual, (-8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                LessEqual, (-8 + 3 $CellContext`x1)/6]]]}, {((
               2 + (3 $CellContext`x1 - 6 $CellContext`x2)/4) (12 + 
               5 $CellContext`x1 + 2 $CellContext`x2))/4, 
             Or[
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, LessEqual, (-14)/9], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[(-14)/9, Less, $CellContext`x1, LessEqual, 2/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (4 - 5 $CellContext`x1)/2]]]}}, 0] + 
         Piecewise[{{4 (29/9 - $CellContext`x2), 
             And[$CellContext`x1 == 10/9, 
              Inequality[(-7)/9, Less, $CellContext`x2, Less, 29/9]]}, {16, 
             Or[
              And[$CellContext`x1 == 10/9, $CellContext`x2 == (-7)/9], 
              And[$CellContext`x1 > 10/9, 
               
               Inequality[(4 - 5 $CellContext`x1)/2, 
                LessEqual, $CellContext`x2, LessEqual, -3 + 
                2 $CellContext`x1]]]}, {
            4 (1 + 2 $CellContext`x1 - $CellContext`x2), 
             Or[
              And[$CellContext`x1 > 10/9, 
               
               Inequality[-3 + 2 $CellContext`x1, Less, $CellContext`x2, Less,
                 1 + 2 $CellContext`x1]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(4 - 5 $CellContext`x1)/2, 
                LessEqual, $CellContext`x2, Less, 1 + 2 $CellContext`x1]]]}}, 
           0] + Piecewise[{{
            253/72 + (11 $CellContext`x1)/3 + (29 $CellContext`x2)/12 + 
             3 $CellContext`x1 $CellContext`x2 - (3 $CellContext`x2^2)/8, 
             And[$CellContext`x1 == 2/9, 
              Inequality[(-11)/9, Less, $CellContext`x2, Less, 13/9]]}, {
            2009/162 + (98 $CellContext`x1)/9 - 5 $CellContext`x2 - 
             2 $CellContext`x1 $CellContext`x2 + $CellContext`x2^2/2, 
             And[$CellContext`x1 == 2/9, 
              Inequality[13/9, Less, $CellContext`x2, Less, 49/9]]}, {
            15/2 - 2 $CellContext`x1 - 2 $CellContext`x1^2 + $CellContext`x2 + 
             2 $CellContext`x1 $CellContext`x2 - $CellContext`x2^2/2, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               
               Inequality[-3 + 2 $CellContext`x1, Less, $CellContext`x2, Less,
                 1 + 2 $CellContext`x1]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(4 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, 1 + 2 $CellContext`x1]]]}, {
            12 + 8 $CellContext`x1 - 4 $CellContext`x2, 
             Or[
              And[$CellContext`x1 == 2/9, $CellContext`x2 == 13/9], 
              
              And[$CellContext`x1 >= 10/9, $CellContext`x2 == 
               1 + 2 $CellContext`x1], 
              And[
               Inequality[
               2/9, Less, $CellContext`x1, Less, 10/9], $CellContext`x2 == 
               1 + 2 $CellContext`x1]]}, {
            9/2 + (15 $CellContext`x1)/4 + (25 $CellContext`x1^2)/
              32 + (3 $CellContext`x2)/
              2 + (5 $CellContext`x1 $CellContext`x2)/8 + $CellContext`x2^2/8, 
             Or[
              And[
               
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-14)/
                9], $CellContext`x2 == (8 + 3 $CellContext`x1)/6], 
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-14)/9], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[(-14)/9, LessEqual, $CellContext`x1, Less, 2/9], 
               Inequality[
               1 + 2 $CellContext`x1, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]]]}, {
            4 + (7 $CellContext`x1)/4 - (39 $CellContext`x1^2)/
             32 + (5 $CellContext`x2)/
              2 + (21 $CellContext`x1 $CellContext`x2)/8 - (
              3 $CellContext`x2^2)/8, 
             Or[
              And[
               Inequality[(-14)/9, LessEqual, $CellContext`x1, Less, 2/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                LessEqual, 1 + 2 $CellContext`x1]], 
              And[
               Inequality[
               2/9, Less, $CellContext`x1, Less, 10/
                9], $CellContext`x2 == (4 - 5 $CellContext`x1)/2], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (4 - 5 $CellContext`x1)/2]]]}, {
            25/2 + 10 $CellContext`x1 + 2 $CellContext`x1^2 - 
             5 $CellContext`x2 - 
             2 $CellContext`x1 $CellContext`x2 + $CellContext`x2^2/2, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               Inequality[
               1 + 2 $CellContext`x1, Less, $CellContext`x2, Less, 5 + 
                2 $CellContext`x1]], 
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-14)/9], 
               
               Inequality[(8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, 5 + 2 $CellContext`x1]], 
              And[
               Inequality[(-14)/9, LessEqual, $CellContext`x1, Less, 2/9], 
               
               Inequality[(8 + 3 $CellContext`x1)/6, 
                LessEqual, $CellContext`x2, Less, 5 + 2 $CellContext`x1]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               Inequality[
               1 + 2 $CellContext`x1, Less, $CellContext`x2, Less, 5 + 
                2 $CellContext`x1]]]}}, 0])/16}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell["\<\
Here we see the equi - probability lines of the two mentioned sets :\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Module", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"Level", "=", ".7"}], "}"}], ",", 
   RowBox[{"ContourPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"Evaluate", "[", 
         RowBox[{"pIni", "/.", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"x1", "\[Rule]", "t1"}], ",", 
            RowBox[{"x2", "\[Rule]", "t2"}]}], "}"}]}], "]"}], "\[Equal]", 
        "Level"}], ",", 
       RowBox[{
        RowBox[{"Evaluate", "[", 
         RowBox[{"pTrans", "/.", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"x1", "\[Rule]", "t1"}], ",", 
            RowBox[{"x2", "\[Rule]", "t2"}]}], "}"}]}], "]"}], "\[Equal]", 
        "Level"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"t1", ",", 
       RowBox[{"-", "5"}], ",", "5"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"t2", ",", 
       RowBox[{"-", "5"}], ",", "5"}], "}"}]}], "]"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
A+Px6nQ=
   "], {{}, {}, 
    TagBox[
     TooltipBox[
      {Hue[0.67, 0.6, 0.6], 
       LineBox[{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
         19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 
        36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 
        53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 
        70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
        87, 88, 89, 90}]},
      RowBox[{
        RowBox[{
          FractionBox["1", "16"], " ", 
          RowBox[{"(", 
            RowBox[{
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{"12", "+", 
                    RowBox[{"2", " ", "t1"}], "+", 
                    RowBox[{"8", " ", "t2"}]}], 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}]}]}]}, {
                    RowBox[{
                    FractionBox["15", "2"], "-", 
                    FractionBox["t1", "2"], "-", 
                    FractionBox[
                    SuperscriptBox["t1", "2"], "8"], "-", 
                    RowBox[{"2", " ", "t2"}], "-", 
                    RowBox[{"t1", " ", "t2"}], "-", 
                    RowBox[{"2", " ", 
                    SuperscriptBox["t2", "2"]}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}], "<", "t2", "<", 
                    
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["25", "2"], "+", 
                    FractionBox[
                    RowBox[{"5", " ", "t1"}], "2"], "+", 
                    FractionBox[
                    SuperscriptBox["t1", "2"], "8"], "+", 
                    RowBox[{"10", " ", "t2"}], "+", 
                    RowBox[{"t1", " ", "t2"}], "+", 
                    RowBox[{"2", " ", 
                    SuperscriptBox["t2", "2"]}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "10"}], "-", "t1"}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", 
                    "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "10"}], "-", "t1"}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "10"}], "-", "t1"}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["9", "2"], "+", 
                    FractionBox[
                    RowBox[{"15", " ", "t1"}], "4"], "+", 
                    FractionBox[
                    RowBox[{"25", " ", 
                    SuperscriptBox["t1", "2"]}], "32"], "+", 
                    FractionBox[
                    RowBox[{"3", " ", "t2"}], "2"], "+", 
                    FractionBox[
                    RowBox[{"5", " ", "t1", " ", "t2"}], "8"], "+", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "8"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", 
                    "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{"4", "+", 
                    FractionBox[
                    RowBox[{"13", " ", "t1"}], "4"], "+", 
                    FractionBox[
                    RowBox[{"21", " ", 
                    SuperscriptBox["t1", "2"]}], "32"], "-", 
                    FractionBox["t2", "2"], "-", 
                    FractionBox[
                    RowBox[{"3", " ", "t1", " ", "t2"}], "8"], "-", 
                    FractionBox[
                    RowBox[{"15", " ", 
                    SuperscriptBox["t2", "2"]}], "8"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}], "<", "t2", "<", 
                    
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", 
                    "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}], "\[LessEqual]", 
                    "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}], "\[LessEqual]", 
                    "t2", "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}], "+", 
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{"2", "+", 
                    RowBox[{"2", " ", "t2"}]}], ")"}]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", "2"}], "&&", 
                    RowBox[{
                    RowBox[{"-", "1"}], "<", "t2", "<", "1"}]}]}, {
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{"5", "-", "t2"}], ")"}]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", "2"}], "&&", 
                    RowBox[{"1", "<", "t2", "<", "5"}]}]}, {"16", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", "2"}], "&&", 
                    RowBox[{"t2", "\[Equal]", "1"}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", ">", "2"}], "&&", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"], "\[LessEqual]", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{"2", "+", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "+", "t1", "+", 
                    RowBox[{"4", " ", "t2"}]}], ")"}]}]}], ")"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", ">", "2"}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}], "<", "t2", "<", 
                    
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["10", "9"], "\[LessEqual]", "t1", "<", "2"}], 
                    "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}], "-", "t2"}], ")"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", ">", "2"}], "&&", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"], "<", "t2", "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["10", "9"], "\[LessEqual]", "t1", "<", "2"}], 
                    "&&", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"], "\[LessEqual]", "t2", "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "+", 
                    RowBox[{"2", " ", "t1"}], "-", "t2", "+", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "+", "t1", "+", 
                    RowBox[{"4", " ", "t2"}]}], ")"}]}]}], ")"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["10", "9"], "\[LessEqual]", "t1", "<", "2"}], 
                    "&&", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}], "+", 
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{
                    FractionBox["253", "72"], "+", 
                    FractionBox[
                    RowBox[{"11", " ", "t1"}], "3"], "+", 
                    FractionBox[
                    RowBox[{"29", " ", "t2"}], "12"], "+", 
                    RowBox[{"3", " ", "t1", " ", "t2"}], "-", 
                    FractionBox[
                    RowBox[{"3", " ", 
                    SuperscriptBox["t2", "2"]}], "8"]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["11", "9"]}], "<", "t2", "<", 
                    FractionBox["13", "9"]}]}]}, {
                    RowBox[{
                    FractionBox["2009", "162"], "+", 
                    FractionBox[
                    RowBox[{"98", " ", "t1"}], "9"], "-", 
                    RowBox[{"5", " ", "t2"}], "-", 
                    RowBox[{"2", " ", "t1", " ", "t2"}], "+", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "2"]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    FractionBox["13", "9"], "<", "t2", "<", 
                    FractionBox["49", "9"]}]}]}, {
                    RowBox[{
                    FractionBox["15", "2"], "-", 
                    RowBox[{"2", " ", "t1"}], "-", 
                    RowBox[{"2", " ", 
                    SuperscriptBox["t1", "2"]}], "+", "t2", "+", 
                    RowBox[{"2", " ", "t1", " ", "t2"}], "-", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "2"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {
                    RowBox[{"12", "+", 
                    RowBox[{"8", " ", "t1"}], "-", 
                    RowBox[{"4", " ", "t2"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    FractionBox["13", "9"]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["9", "2"], "+", 
                    FractionBox[
                    RowBox[{"15", " ", "t1"}], "4"], "+", 
                    FractionBox[
                    RowBox[{"25", " ", 
                    SuperscriptBox["t1", "2"]}], "32"], "+", 
                    FractionBox[
                    RowBox[{"3", " ", "t2"}], "2"], "+", 
                    FractionBox[
                    RowBox[{"5", " ", "t1", " ", "t2"}], "8"], "+", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "8"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", "<", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{"4", "+", 
                    FractionBox[
                    RowBox[{"7", " ", "t1"}], "4"], "-", 
                    FractionBox[
                    RowBox[{"39", " ", 
                    SuperscriptBox["t1", "2"]}], "32"], "+", 
                    FractionBox[
                    RowBox[{"5", " ", "t2"}], "2"], "+", 
                    FractionBox[
                    RowBox[{"21", " ", "t1", " ", "t2"}], "8"], "-", 
                    FractionBox[
                    RowBox[{"3", " ", 
                    SuperscriptBox["t2", "2"]}], "8"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", "<", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["25", "2"], "+", 
                    RowBox[{"10", " ", "t1"}], "+", 
                    RowBox[{"2", " ", 
                    SuperscriptBox["t1", "2"]}], "-", 
                    RowBox[{"5", " ", "t2"}], "-", 
                    RowBox[{"2", " ", "t1", " ", "t2"}], "+", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "2"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{"5", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{"5", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", "<", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "<", 
                    RowBox[{"5", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{"5", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}]}], ")"}]}], "\[Equal]", "0.7`"}]],
     Annotation[#, 
      Rational[1, 16] (Piecewise[{{12 + 2 $CellContext`t1 + 8 $CellContext`t2, 
            
            And[$CellContext`t1 >= Rational[10, 9], $CellContext`t2 == 
             Rational[1, 4] (-2 - $CellContext`t1)]}, {
           Rational[15, 2] + Rational[-1, 2] $CellContext`t1 + 
            Rational[-1, 8] $CellContext`t1^2 - 
            2 $CellContext`t2 - $CellContext`t1 $CellContext`t2 - 
            2 $CellContext`t2^2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              Rational[1, 4] (-2 - $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 4] (6 - $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 4] (6 - $CellContext`t1)]]]}, {
           Rational[25, 2] + Rational[5, 2] $CellContext`t1 + 
            Rational[1, 8] $CellContext`t1^2 + 
            10 $CellContext`t2 + $CellContext`t1 $CellContext`t2 + 
            2 $CellContext`t2^2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              Rational[1, 4] (-10 - $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 4] (-2 - $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 4] (-10 - $CellContext`t1), Less, $CellContext`t2, 
               LessEqual, Rational[1, 6] (-8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 4] (-10 - $CellContext`t1), Less, $CellContext`t2, 
               LessEqual, Rational[1, 6] (-8 + 3 $CellContext`t1)]]]}, {
           Rational[9, 2] + Rational[15, 4] $CellContext`t1 + 
            Rational[25, 32] $CellContext`t1^2 + 
            Rational[3, 2] $CellContext`t2 + (
              Rational[5, 8] $CellContext`t1) $CellContext`t2 + 
            Rational[1, 8] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                LessEqual, Rational[1, 4] (-2 - $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 4] (-2 - $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 4] (-2 - $CellContext`t1)]]]}, {
           4 + Rational[13, 4] $CellContext`t1 + 
            Rational[21, 32] $CellContext`t1^2 + 
            Rational[-1, 2] $CellContext`t2 + (
              Rational[-3, 8] $CellContext`t1) $CellContext`t2 + 
            Rational[-15, 8] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 4] (-2 - $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 4] (-2 - $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 
               Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 4] (-2 - $CellContext`t1), 
               LessEqual, $CellContext`t2, LessEqual, 
               Rational[1, 2] (4 - 5 $CellContext`t1)]]]}}, 0] + 
        Piecewise[{{4 (2 + 2 $CellContext`t2), 
            And[$CellContext`t1 == 2, 
             Inequality[-1, Less, $CellContext`t2, Less, 1]]}, {
           4 (5 - $CellContext`t2), 
            And[$CellContext`t1 == 2, 
             Inequality[1, Less, $CellContext`t2, Less, 5]]}, {16, 
            Or[
             And[$CellContext`t1 == 2, $CellContext`t2 == 1], 
             And[$CellContext`t1 > 2, 
              Inequality[
              Rational[1, 4] (6 - $CellContext`t1), 
               LessEqual, $CellContext`t2, LessEqual, -3 + 
               2 $CellContext`t1]]]}, {
           4 (2 + Rational[1, 2] (-2 + $CellContext`t1 + 4 $CellContext`t2)), 
            
            Or[
             And[$CellContext`t1 > 2, 
              Inequality[
              Rational[1, 4] (-2 - $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 4] (6 - $CellContext`t1)]], 
             And[
              Inequality[
               Rational[10, 9], LessEqual, $CellContext`t1, Less, 2], 
              Inequality[
              Rational[1, 4] (-2 - $CellContext`t1), Less, $CellContext`t2, 
               LessEqual, -3 + 2 $CellContext`t1]]]}, {
           4 (1 + 2 $CellContext`t1 - $CellContext`t2), 
            Or[
             And[$CellContext`t1 > 2, 
              
              Inequality[-3 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 
               1 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 4] (6 - $CellContext`t1), Less, $CellContext`t2, 
               Less, 1 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[10, 9], LessEqual, $CellContext`t1, Less, 2], 
              Inequality[
              Rational[1, 4] (6 - $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 1 + 2 $CellContext`t1]]]}, {
           4 (-1 + 2 $CellContext`t1 - $CellContext`t2 + 
             Rational[1, 2] (-2 + $CellContext`t1 + 4 $CellContext`t2)), 
            Or[
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], $CellContext`t2 == 
              Rational[1, 4] (6 - $CellContext`t1)], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 4] (6 - $CellContext`t1)]], 
             And[
              Inequality[
               Rational[10, 9], LessEqual, $CellContext`t1, Less, 2], 
              
              Inequality[-3 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 
               Rational[1, 4] (6 - $CellContext`t1)]]]}}, 0] + 
        Piecewise[{{
           Rational[253, 72] + Rational[11, 3] $CellContext`t1 + 
            Rational[29, 12] $CellContext`t2 + (
              3 $CellContext`t1) $CellContext`t2 + 
            Rational[-3, 8] $CellContext`t2^2, 
            And[$CellContext`t1 == Rational[2, 9], 
             Inequality[
              Rational[-11, 9], Less, $CellContext`t2, Less, 
              Rational[13, 9]]]}, {
           Rational[2009, 162] + Rational[98, 9] $CellContext`t1 - 
            5 $CellContext`t2 - (2 $CellContext`t1) $CellContext`t2 + 
            Rational[1, 2] $CellContext`t2^2, 
            And[$CellContext`t1 == Rational[2, 9], 
             Inequality[
              Rational[13, 9], Less, $CellContext`t2, Less, 
              Rational[49, 9]]]}, {
           Rational[15, 2] - 2 $CellContext`t1 - 
            2 $CellContext`t1^2 + $CellContext`t2 + (
              2 $CellContext`t1) $CellContext`t2 + 
            Rational[-1, 2] $CellContext`t2^2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              
              Inequality[-3 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 
               1 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), Less, $CellContext`t2, 
               Less, 1 + 2 $CellContext`t1]]]}, {
           12 + 8 $CellContext`t1 - 4 $CellContext`t2, 
            Or[
             
             And[$CellContext`t1 == Rational[2, 9], $CellContext`t2 == 
              Rational[13, 9]], 
             
             And[$CellContext`t1 >= Rational[10, 9], $CellContext`t2 == 
              1 + 2 $CellContext`t1], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], $CellContext`t2 == 
              1 + 2 $CellContext`t1]]}, {
           Rational[9, 2] + Rational[15, 4] $CellContext`t1 + 
            Rational[25, 32] $CellContext`t1^2 + 
            Rational[3, 2] $CellContext`t2 + (
              Rational[5, 8] $CellContext`t1) $CellContext`t2 + 
            Rational[1, 8] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-14, 9]], $CellContext`t2 == 
              Rational[1, 6] (8 + 3 $CellContext`t1)], 
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                Less, Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, Less, 
               Rational[2, 9]], 
              Inequality[
              1 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 
               Rational[1, 6] (8 + 3 $CellContext`t1)]]]}, {
           4 + Rational[7, 4] $CellContext`t1 + 
            Rational[-39, 32] $CellContext`t1^2 + 
            Rational[5, 2] $CellContext`t2 + (
              Rational[21, 8] $CellContext`t1) $CellContext`t2 + 
            Rational[-3, 8] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, Less, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               LessEqual, 1 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], $CellContext`t2 == 
              Rational[1, 2] (4 - 5 $CellContext`t1)], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 2] (4 - 5 $CellContext`t1)]]]}, {
           Rational[25, 2] + 10 $CellContext`t1 + 2 $CellContext`t1^2 - 
            5 $CellContext`t2 - (2 $CellContext`t1) $CellContext`t2 + 
            Rational[1, 2] $CellContext`t2^2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              1 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 5 + 
               2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 6] (8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, 5 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, Less, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (8 + 3 $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 5 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              1 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 5 + 
               2 $CellContext`t1]]]}}, 0]) == 0.7, "Tooltip"]& ], 
    TagBox[
     TooltipBox[
      {Hue[0.9060679774997897, 0.6, 0.6], 
       LineBox[{91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 
        105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 
        119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 
        133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 
        147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 
        161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 
        175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 
        189, 190, 191, 192, 193}]},
      RowBox[{
        RowBox[{
          FractionBox["1", "16"], " ", 
          RowBox[{"(", 
            RowBox[{
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{"12", "+", 
                    RowBox[{"5", " ", "t1"}], "+", 
                    RowBox[{"2", " ", "t2"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "<", "t1", "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{"2", "+", 
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"3", " ", "t1"}], "-", 
                    RowBox[{"6", " ", "t2"}]}], ")"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"12", "+", 
                    RowBox[{"5", " ", "t1"}], "+", 
                    RowBox[{"2", " ", "t2"}]}], ")"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "\[LessEqual]", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "<", "t1", "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}], "+", 
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    FractionBox["29", "9"], "-", "t2"}], ")"}]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["7", "9"]}], "<", "t2", "<", 
                    FractionBox["29", "9"]}]}]}, {"16", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{"-", 
                    FractionBox["7", "9"]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", ">", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "\[LessEqual]", 
                    RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}], "-", "t2"}], ")"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", ">", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}], "+", 
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{
                    FractionBox["253", "72"], "+", 
                    FractionBox[
                    RowBox[{"11", " ", "t1"}], "3"], "+", 
                    FractionBox[
                    RowBox[{"29", " ", "t2"}], "12"], "+", 
                    RowBox[{"3", " ", "t1", " ", "t2"}], "-", 
                    FractionBox[
                    RowBox[{"3", " ", 
                    SuperscriptBox["t2", "2"]}], "8"]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["11", "9"]}], "<", "t2", "<", 
                    FractionBox["13", "9"]}]}]}, {
                    RowBox[{
                    FractionBox["2009", "162"], "+", 
                    FractionBox[
                    RowBox[{"98", " ", "t1"}], "9"], "-", 
                    RowBox[{"5", " ", "t2"}], "-", 
                    RowBox[{"2", " ", "t1", " ", "t2"}], "+", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "2"]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    FractionBox["13", "9"], "<", "t2", "<", 
                    FractionBox["49", "9"]}]}]}, {
                    RowBox[{
                    FractionBox["15", "2"], "-", 
                    RowBox[{"2", " ", "t1"}], "-", 
                    RowBox[{"2", " ", 
                    SuperscriptBox["t1", "2"]}], "+", "t2", "+", 
                    RowBox[{"2", " ", "t1", " ", "t2"}], "-", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "2"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {
                    RowBox[{"12", "+", 
                    RowBox[{"8", " ", "t1"}], "-", 
                    RowBox[{"4", " ", "t2"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    FractionBox["13", "9"]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["9", "2"], "+", 
                    FractionBox[
                    RowBox[{"15", " ", "t1"}], "4"], "+", 
                    FractionBox[
                    RowBox[{"25", " ", 
                    SuperscriptBox["t1", "2"]}], "32"], "+", 
                    FractionBox[
                    RowBox[{"3", " ", "t2"}], "2"], "+", 
                    FractionBox[
                    RowBox[{"5", " ", "t1", " ", "t2"}], "8"], "+", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "8"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", "<", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{"4", "+", 
                    FractionBox[
                    RowBox[{"7", " ", "t1"}], "4"], "-", 
                    FractionBox[
                    RowBox[{"39", " ", 
                    SuperscriptBox["t1", "2"]}], "32"], "+", 
                    FractionBox[
                    RowBox[{"5", " ", "t2"}], "2"], "+", 
                    FractionBox[
                    RowBox[{"21", " ", "t1", " ", "t2"}], "8"], "-", 
                    FractionBox[
                    RowBox[{"3", " ", 
                    SuperscriptBox["t2", "2"]}], "8"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", "<", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["25", "2"], "+", 
                    RowBox[{"10", " ", "t1"}], "+", 
                    RowBox[{"2", " ", 
                    SuperscriptBox["t1", "2"]}], "-", 
                    RowBox[{"5", " ", "t2"}], "-", 
                    RowBox[{"2", " ", "t1", " ", "t2"}], "+", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "2"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{"5", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{"5", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", "<", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "<", 
                    RowBox[{"5", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{"5", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}]}], ")"}]}], "\[Equal]", "0.7`"}]],
     Annotation[#, 
      Rational[1, 16] (Piecewise[{{12 + 5 $CellContext`t1 + 2 $CellContext`t2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                Less, Rational[1, 2] (4 - 5 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], Less, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                LessEqual, Rational[1, 6] (-8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                LessEqual, Rational[1, 6] (-8 + 3 $CellContext`t1)]]]}, {(
             Rational[1, 4] (2 + 
              Rational[1, 4] (3 $CellContext`t1 - 6 $CellContext`t2))) (12 + 
             5 $CellContext`t1 + 2 $CellContext`t2), 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, LessEqual, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                Less, Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], Less, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 2] (4 - 5 $CellContext`t1)]]]}}, 0] + 
        Piecewise[{{4 (Rational[29, 9] - $CellContext`t2), 
            And[$CellContext`t1 == Rational[10, 9], 
             Inequality[
              Rational[-7, 9], Less, $CellContext`t2, Less, 
              Rational[29, 9]]]}, {16, 
            Or[
             
             And[$CellContext`t1 == Rational[10, 9], $CellContext`t2 == 
              Rational[-7, 9]], 
             And[$CellContext`t1 > Rational[10, 9], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), 
               LessEqual, $CellContext`t2, LessEqual, -3 + 
               2 $CellContext`t1]]]}, {
           4 (1 + 2 $CellContext`t1 - $CellContext`t2), 
            Or[
             And[$CellContext`t1 > Rational[10, 9], 
              
              Inequality[-3 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 
               1 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 1 + 2 $CellContext`t1]]]}}, 
          0] + Piecewise[{{
           Rational[253, 72] + Rational[11, 3] $CellContext`t1 + 
            Rational[29, 12] $CellContext`t2 + (
              3 $CellContext`t1) $CellContext`t2 + 
            Rational[-3, 8] $CellContext`t2^2, 
            And[$CellContext`t1 == Rational[2, 9], 
             Inequality[
              Rational[-11, 9], Less, $CellContext`t2, Less, 
              Rational[13, 9]]]}, {
           Rational[2009, 162] + Rational[98, 9] $CellContext`t1 - 
            5 $CellContext`t2 - (2 $CellContext`t1) $CellContext`t2 + 
            Rational[1, 2] $CellContext`t2^2, 
            And[$CellContext`t1 == Rational[2, 9], 
             Inequality[
              Rational[13, 9], Less, $CellContext`t2, Less, 
              Rational[49, 9]]]}, {
           Rational[15, 2] - 2 $CellContext`t1 - 
            2 $CellContext`t1^2 + $CellContext`t2 + (
              2 $CellContext`t1) $CellContext`t2 + 
            Rational[-1, 2] $CellContext`t2^2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              
              Inequality[-3 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 
               1 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), Less, $CellContext`t2, 
               Less, 1 + 2 $CellContext`t1]]]}, {
           12 + 8 $CellContext`t1 - 4 $CellContext`t2, 
            Or[
             
             And[$CellContext`t1 == Rational[2, 9], $CellContext`t2 == 
              Rational[13, 9]], 
             
             And[$CellContext`t1 >= Rational[10, 9], $CellContext`t2 == 
              1 + 2 $CellContext`t1], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], $CellContext`t2 == 
              1 + 2 $CellContext`t1]]}, {
           Rational[9, 2] + Rational[15, 4] $CellContext`t1 + 
            Rational[25, 32] $CellContext`t1^2 + 
            Rational[3, 2] $CellContext`t2 + (
              Rational[5, 8] $CellContext`t1) $CellContext`t2 + 
            Rational[1, 8] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-14, 9]], $CellContext`t2 == 
              Rational[1, 6] (8 + 3 $CellContext`t1)], 
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                Less, Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, Less, 
               Rational[2, 9]], 
              Inequality[
              1 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 
               Rational[1, 6] (8 + 3 $CellContext`t1)]]]}, {
           4 + Rational[7, 4] $CellContext`t1 + 
            Rational[-39, 32] $CellContext`t1^2 + 
            Rational[5, 2] $CellContext`t2 + (
              Rational[21, 8] $CellContext`t1) $CellContext`t2 + 
            Rational[-3, 8] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, Less, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               LessEqual, 1 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], $CellContext`t2 == 
              Rational[1, 2] (4 - 5 $CellContext`t1)], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 2] (4 - 5 $CellContext`t1)]]]}, {
           Rational[25, 2] + 10 $CellContext`t1 + 2 $CellContext`t1^2 - 
            5 $CellContext`t2 - (2 $CellContext`t1) $CellContext`t2 + 
            Rational[1, 2] $CellContext`t2^2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              1 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 5 + 
               2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 6] (8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, 5 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, Less, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (8 + 3 $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 5 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              1 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 5 + 
               2 $CellContext`t1]]]}}, 0]) == 0.7, "Tooltip"]& ]}],
  AspectRatio->1,
  Frame->True,
  Method->{},
  PlotRange->{{-5, 5}, {-5, 5}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell[TextData[{
 "Ideally we do not want to chose the positive transformation of the \
probability set ourselves but have some optimisation produce the perfect \
transformation.\nWhen we try this we soon notice that both det(I-MA) and \
trace(I-MA) have a problem whenever A and is not symmetric, because then \
neither the determinant nor the trace have norm properties. \nTo avoid \
unbounded problems I choose ",
 Cell[BoxData[
  FormBox[
   RowBox[{"det", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"I", "-", "MA"}], ")"}], "2"]}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"trace", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"I", "-", "MA"}], ")"}], "2"]}], TraditionalForm]]],
 " which both try to produce a singular I-MA.\n",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " is not as convenient to solve acutal numerical problems as Matlab so here \
is how it can be done.\n(I also solve for ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["w", "2"], TraditionalForm]]],
 "to be able to evaluate the integral over the box)"
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"M", " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"m11", ",", "m12"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"m21", ",", "m22"}], "}"}]}], "}"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"A", " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"1", ",", "1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "}"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"detObj", " ", "=", " ", 
   RowBox[{"Det", "[", 
    RowBox[{
     RowBox[{"IdentityMatrix", "[", "2", "]"}], "-", 
     RowBox[{"M", ".", "A"}]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"trObj", " ", "=", " ", 
   RowBox[{"Tr", "[", 
    RowBox[{
     RowBox[{"IdentityMatrix", "[", "2", "]"}], "-", 
     RowBox[{"M", ".", "A"}]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Constraints", " ", "=", " ", 
   RowBox[{"Resolve", "[", 
    RowBox[{
     RowBox[{"Flatten", "[", "M", "]"}], "\[GreaterEqual]", 
     RowBox[{"zero", "[", "4", "]"}]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"mtSol", "=", 
   RowBox[{"Minimize", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       SuperscriptBox["trObj", "2"], ",", "Constraints"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"m11", ",", "m12", ",", "m21", ",", "m22"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"mdSol", " ", "=", " ", 
   RowBox[{"Minimize", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       SuperscriptBox["detObj", "2"], ",", "Constraints"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"m11", ",", "m12", ",", "m21", ",", "m22"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"MD", " ", "=", " ", 
   RowBox[{"(", 
    RowBox[{"M", "/.", 
     RowBox[{"mdSol", "[", 
      RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"MT", " ", "=", " ", 
   RowBox[{"(", 
    RowBox[{"M", "/.", 
     RowBox[{"mtSol", "[", 
      RowBox[{"[", "2", "]"}], "]"}]}], ")"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"lhs", " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{"1", ",", "1"}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"LHS", " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"2", ",", 
       RowBox[{"-", "1"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       FractionBox["1", "2"], ",", "2"}], "}"}]}], "}"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Dfst", " ", "=", " ", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Resolve", "[", 
       RowBox[{
        RowBox[{"MD", ".", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"A", ".", 
            RowBox[{"{", 
             RowBox[{"w1", ",", "w2"}], "}"}]}], "-", "lhs", "-", 
           RowBox[{"LHS", ".", 
            RowBox[{"{", 
             RowBox[{"x1", ",", "x2"}], "}"}]}]}], ")"}]}], "\[Equal]", " ", 
        RowBox[{"zero", "[", "2", "]"}]}], "]"}], " ", "[", 
      RowBox[{"[", "1", "]"}], "]"}], ",", "w2"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Dsnd", " ", "=", " ", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Resolve", "[", 
       RowBox[{
        RowBox[{"MD", ".", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"A", ".", 
            RowBox[{"{", 
             RowBox[{"w1", ",", "w2"}], "}"}]}], "-", "lhs", "-", 
           RowBox[{"LHS", ".", 
            RowBox[{"{", 
             RowBox[{"x1", ",", "x2"}], "}"}]}]}], ")"}]}], "\[Equal]", " ", 
        RowBox[{"zero", "[", "2", "]"}]}], "]"}], " ", "[", 
      RowBox[{"[", "2", "]"}], "]"}], ",", "w2"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Tfst", " ", "=", " ", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Resolve", "[", 
       RowBox[{
        RowBox[{"MT", ".", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"A", ".", 
            RowBox[{"{", 
             RowBox[{"w1", ",", "w2"}], "}"}]}], "-", "lhs", "-", 
           RowBox[{"LHS", ".", 
            RowBox[{"{", 
             RowBox[{"x1", ",", "x2"}], "}"}]}]}], ")"}]}], "\[Equal]", " ", 
        RowBox[{"zero", "[", "2", "]"}]}], "]"}], " ", "[", 
      RowBox[{"[", "1", "]"}], "]"}], ",", "w2"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Tsnd", " ", "=", " ", 
   RowBox[{"Solve", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Resolve", "[", 
       RowBox[{
        RowBox[{"MT", ".", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"A", ".", 
            RowBox[{"{", 
             RowBox[{"w1", ",", "w2"}], "}"}]}], "-", "lhs", "-", 
           RowBox[{"LHS", ".", 
            RowBox[{"{", 
             RowBox[{"x1", ",", "x2"}], "}"}]}]}], ")"}]}], "\[Equal]", " ", 
        RowBox[{"zero", "[", "2", "]"}]}], "]"}], " ", "[", 
      RowBox[{"[", "2", "]"}], "]"}], ",", "w2"}], "]"}]}], ";"}]}], "Input", \
"PluginEmbeddedContent",
 InitializationCell->True],

Cell[TextData[{
 "We now have everything we need in order to evaluate the probability given \
by\n",
 Cell[BoxData[
  FormBox[
   RowBox[{"P", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"M", "(", GridBox[{
          {"1", "1"},
          {
           RowBox[{"-", "1"}], "1"}
         }], ")"}], 
       RowBox[{"(", GridBox[{
          {
           SubscriptBox["w", "1"]},
          {
           SubscriptBox["w", "2"]}
         }], ")"}]}], "\[LessEqual]", " ", 
      RowBox[{"M", "(", 
       RowBox[{
        RowBox[{"(", GridBox[{
           {"1"},
           {"1"}
          }], ")"}], "+", 
        RowBox[{
         RowBox[{"(", GridBox[{
            {"2", 
             RowBox[{"-", "1"}]},
            {
             FractionBox["1", "2"], "2"}
           }], ")"}], "x"}]}]}]}], "}"}]}], TraditionalForm]]],
 "\nwhere M is chosen as the nonnegative minimiser of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"det", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"I", "-", "MA"}], ")"}], "2"]}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"trace", 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"I", "-", "MA"}], ")"}], "2"]}], TraditionalForm]]],
 " respectively.\nAgain we are able to evaluate the probability by \
calculating a parametrised integral, which ",
 StyleBox["Mathematica",
  FontSlant->"Italic"],
 " does for us."
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"pDet", " ", "=", 
   RowBox[{
    FractionBox["1", "16"], " ", 
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{"2", "+", 
       RowBox[{"Max", "[", 
        RowBox[{
         RowBox[{"-", "2"}], ",", 
         RowBox[{"Min", "[", 
          RowBox[{
           RowBox[{"w2", "/.", "Dfst"}], ",", 
           RowBox[{"w2", "/.", "Dsnd"}], ",", "2"}], "]"}]}], "]"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"w1", ",", 
        RowBox[{"-", "2"}], ",", "2"}], "}"}]}], "]"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"pTr", " ", "=", " ", 
   RowBox[{
    FractionBox["1", "16"], 
    RowBox[{"Integrate", "[", 
     RowBox[{
      RowBox[{"2", "+", 
       RowBox[{"Max", "[", 
        RowBox[{
         RowBox[{"-", "2"}], ",", 
         RowBox[{"Min", "[", 
          RowBox[{
           RowBox[{"w2", "/.", "Tfst"}], ",", 
           RowBox[{"w2", "/.", "Dsnd"}], ",", "2"}], "]"}]}], "]"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"w1", ",", 
        RowBox[{"-", "2"}], ",", "2"}], "}"}]}], "]"}]}]}], ";"}]}], "Input", \
"PluginEmbeddedContent",
 InitializationCell->True],

Cell["\<\
We illustrate the regions defined by the optimal Ms and again give the \
probability with respect to the chosen x value.\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"RegionPlot", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Resolve", "[", 
          RowBox[{
           RowBox[{"A", ".", 
            RowBox[{"{", 
             RowBox[{"w1", ",", "w2"}], "}"}]}], "\[LessEqual]", 
           RowBox[{"(", 
            RowBox[{"lhs", "+", 
             RowBox[{"LHS", ".", "x"}]}], ")"}]}], "]"}], ",", 
         RowBox[{"Resolve", "[", 
          RowBox[{
           RowBox[{"MD", ".", "A", ".", 
            RowBox[{"{", 
             RowBox[{"w1", ",", "w2"}], "}"}]}], "\[LessEqual]", 
           RowBox[{"MD", ".", 
            RowBox[{"(", 
             RowBox[{"lhs", "+", 
              RowBox[{"LHS", ".", "x"}]}], ")"}]}]}], "]"}], ",", 
         RowBox[{"Resolve", "[", 
          RowBox[{
           RowBox[{"MT", ".", "A", ".", 
            RowBox[{"{", 
             RowBox[{"w1", ",", "w2"}], "}"}]}], "\[LessEqual]", 
           RowBox[{"MT", ".", 
            RowBox[{"(", 
             RowBox[{"lhs", "+", 
              RowBox[{"LHS", ".", "x"}]}], ")"}]}]}], "]"}], ",", 
         RowBox[{"Resolve", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"1", ",", "0"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"1", ",", "1"}], "}"}]}], "}"}], ".", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"A", ".", 
               RowBox[{"{", 
                RowBox[{"w1", ",", "w2"}], "}"}]}], "-", "lhs", "-", 
              RowBox[{"LHS", ".", "x"}]}], ")"}]}], "\[LessEqual]", " ", 
           RowBox[{"zero", "[", "2", "]"}]}], "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"w1", ",", 
         RowBox[{"-", "2"}], ",", "2"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"w2", ",", 
         RowBox[{"-", "2"}], ",", "2"}], "}"}]}], "]"}], ",", "x", ",", 
     RowBox[{"Evaluate", "[", 
      RowBox[{"pIni", "/.", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"x1", "\[Rule]", 
          RowBox[{"x", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], ",", 
         RowBox[{"x2", "\[Rule]", 
          RowBox[{"x", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}]}], "]"}], ",", 
     RowBox[{"Evaluate", "[", 
      RowBox[{"pTrans", "/.", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"x1", "\[Rule]", 
          RowBox[{"x", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], ",", 
         RowBox[{"x2", "\[Rule]", 
          RowBox[{"x", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}]}], "]"}], ",", 
     RowBox[{"Evaluate", "[", 
      RowBox[{"pTr", "/.", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"x1", "\[Rule]", 
          RowBox[{"x", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], ",", 
         RowBox[{"x2", "\[Rule]", 
          RowBox[{"x", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}]}], "]"}], ",", 
     RowBox[{"Evaluate", "[", 
      RowBox[{"pDet", "/.", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"x1", "\[Rule]", 
          RowBox[{"x", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], ",", 
         RowBox[{"x2", "\[Rule]", 
          RowBox[{"x", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}]}], "]"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", "5"}], ",", 
       RowBox[{"-", "5"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"5", ",", "5"}], "}"}]}], "}"}], ",", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`x$$ = {-0.6499999999999995, \
-0.5999999999999996}, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`x$$], {-5, -5}, {5, 5}}}, Typeset`size$$ = {
    603., {88., 93.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`x$52089$$ = {0, 0}}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`x$$ = {-5, -5}}, 
      "ControllerVariables" :> {
        Hold[$CellContext`x$$, $CellContext`x$52089$$, {0, 0}]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> {
        RegionPlot[{
          Resolve[
          Dot[$CellContext`A, {$CellContext`w1, $CellContext`w2}] <= \
$CellContext`lhs + Dot[$CellContext`LHS, $CellContext`x$$]], 
          Resolve[
          Dot[$CellContext`MD, $CellContext`A, {$CellContext`w1, \
$CellContext`w2}] <= 
           Dot[$CellContext`MD, $CellContext`lhs + 
             Dot[$CellContext`LHS, $CellContext`x$$]]], 
          Resolve[
          Dot[$CellContext`MT, $CellContext`A, {$CellContext`w1, \
$CellContext`w2}] <= 
           Dot[$CellContext`MT, $CellContext`lhs + 
             Dot[$CellContext`LHS, $CellContext`x$$]]], 
          Resolve[
          Dot[{{1, 0}, {1, 1}}, 
             Dot[$CellContext`A, {$CellContext`w1, $CellContext`w2}] - \
$CellContext`lhs - 
             Dot[$CellContext`LHS, $CellContext`x$$]] <= $CellContext`zero[
            2]]}, {$CellContext`w1, -2, 2}, {$CellContext`w2, -2, 
          2}], $CellContext`x$$, 
        Evaluate[
         ReplaceAll[$CellContext`pIni, {$CellContext`x1 -> 
           Part[$CellContext`x$$, 1], $CellContext`x2 -> 
           Part[$CellContext`x$$, 2]}]], 
        Evaluate[
         ReplaceAll[$CellContext`pTrans, {$CellContext`x1 -> 
           Part[$CellContext`x$$, 1], $CellContext`x2 -> 
           Part[$CellContext`x$$, 2]}]], 
        Evaluate[
         ReplaceAll[$CellContext`pTr, {$CellContext`x1 -> 
           Part[$CellContext`x$$, 1], $CellContext`x2 -> 
           Part[$CellContext`x$$, 2]}]], 
        Evaluate[
         ReplaceAll[$CellContext`pDet, {$CellContext`x1 -> 
           Part[$CellContext`x$$, 1], $CellContext`x2 -> 
           Part[$CellContext`x$$, 2]}]]}, 
      "Specifications" :> {{$CellContext`x$$, {-5, -5}, {5, 5}}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{648., {160., 165.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`A = {{1, 1}, {-1, 1}}, $CellContext`lhs = {
        1, 1}, $CellContext`LHS = {{2, -1}, {1/2, 2}}, $CellContext`MD = {{
         1/4, 1}, {5/16, 13/8}}, $CellContext`MT = {{1, 1}, {1, 
        1}}, $CellContext`zero[
         Pattern[$CellContext`m, 
          Blank[]]] := 
       ConstantArray[
        0, {$CellContext`m}], $CellContext`pIni = (
         Piecewise[{{12 + 2 $CellContext`x1 + 8 $CellContext`x2, 
             
             And[$CellContext`x1 >= 
              10/9, $CellContext`x2 == (-2 - $CellContext`x1)/4]}, {
            15/2 - $CellContext`x1/2 - $CellContext`x1^2/8 - 
             2 $CellContext`x2 - $CellContext`x1 $CellContext`x2 - 
             2 $CellContext`x2^2, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               
               Inequality[(-2 - $CellContext`x1)/4, Less, $CellContext`x2, 
                Less, (6 - $CellContext`x1)/4]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(4 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (6 - $CellContext`x1)/4]]]}, {
            25/2 + (5 $CellContext`x1)/2 + $CellContext`x1^2/8 + 
             10 $CellContext`x2 + $CellContext`x1 $CellContext`x2 + 
             2 $CellContext`x2^2, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               Inequality[(-10 - $CellContext`x1)/4, Less, $CellContext`x2, 
                Less, (-2 - $CellContext`x1)/4]], 
              And[
               
               Inequality[(-14)/9, LessEqual, $CellContext`x1, LessEqual, 2/
                9], 
               
               Inequality[(-10 - $CellContext`x1)/4, Less, $CellContext`x2, 
                LessEqual, (-8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-10 - $CellContext`x1)/4, Less, $CellContext`x2, 
                LessEqual, (-8 + 3 $CellContext`x1)/6]]]}, {
            9/2 + (15 $CellContext`x1)/4 + (25 $CellContext`x1^2)/
              32 + (3 $CellContext`x2)/
              2 + (5 $CellContext`x1 $CellContext`x2)/8 + $CellContext`x2^2/8, 
             Or[
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-14)/9], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                LessEqual, (-2 - $CellContext`x1)/4]], 
              And[
               
               Inequality[(-14)/9, LessEqual, $CellContext`x1, LessEqual, 2/
                9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (-2 - $CellContext`x1)/4]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (-2 - $CellContext`x1)/4]]]}, {
            4 + (13 $CellContext`x1)/4 + (21 $CellContext`x1^2)/
              32 - $CellContext`x2/2 - (3 $CellContext`x1 $CellContext`x2)/
             8 - (15 $CellContext`x2^2)/8, 
             Or[
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-14)/9], 
               
               Inequality[(-2 - $CellContext`x1)/4, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               
               Inequality[(-14)/9, LessEqual, $CellContext`x1, LessEqual, 2/
                9], 
               
               Inequality[(-2 - $CellContext`x1)/4, 
                LessEqual, $CellContext`x2, Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-2 - $CellContext`x1)/4, 
                LessEqual, $CellContext`x2, 
                LessEqual, (4 - 5 $CellContext`x1)/2]]]}}, 0] + 
         Piecewise[{{4 (2 + 2 $CellContext`x2), 
             And[$CellContext`x1 == 2, 
              Inequality[-1, Less, $CellContext`x2, Less, 1]]}, {
            4 (5 - $CellContext`x2), 
             And[$CellContext`x1 == 2, 
              Inequality[1, Less, $CellContext`x2, Less, 5]]}, {16, 
             Or[
              And[$CellContext`x1 == 2, $CellContext`x2 == 1], 
              And[$CellContext`x1 > 2, 
               
               Inequality[(6 - $CellContext`x1)/4, LessEqual, $CellContext`x2,
                 LessEqual, -3 + 2 $CellContext`x1]]]}, {
            4 (2 + (-2 + $CellContext`x1 + 4 $CellContext`x2)/2), 
             Or[
              And[$CellContext`x1 > 2, 
               
               Inequality[(-2 - $CellContext`x1)/4, Less, $CellContext`x2, 
                Less, (6 - $CellContext`x1)/4]], 
              And[
               Inequality[10/9, LessEqual, $CellContext`x1, Less, 2], 
               
               Inequality[(-2 - $CellContext`x1)/4, Less, $CellContext`x2, 
                LessEqual, -3 + 2 $CellContext`x1]]]}, {
            4 (1 + 2 $CellContext`x1 - $CellContext`x2), 
             Or[
              And[$CellContext`x1 > 2, 
               
               Inequality[-3 + 2 $CellContext`x1, Less, $CellContext`x2, Less,
                 1 + 2 $CellContext`x1]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(6 - $CellContext`x1)/4, Less, $CellContext`x2, 
                Less, 1 + 2 $CellContext`x1]], 
              And[
               Inequality[10/9, LessEqual, $CellContext`x1, Less, 2], 
               
               Inequality[(6 - $CellContext`x1)/4, LessEqual, $CellContext`x2,
                 Less, 1 + 2 $CellContext`x1]]]}, {
            4 (-1 + 2 $CellContext`x1 - $CellContext`x2 + (-2 + \
$CellContext`x1 + 4 $CellContext`x2)/2), 
             Or[
              And[
               Inequality[
               2/9, Less, $CellContext`x1, Less, 10/
                9], $CellContext`x2 == (6 - $CellContext`x1)/4], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(4 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (6 - $CellContext`x1)/4]], 
              And[
               Inequality[10/9, LessEqual, $CellContext`x1, Less, 2], 
               
               Inequality[-3 + 2 $CellContext`x1, Less, $CellContext`x2, 
                Less, (6 - $CellContext`x1)/4]]]}}, 0] + 
         Piecewise[{{
            253/72 + (11 $CellContext`x1)/3 + (29 $CellContext`x2)/12 + 
             3 $CellContext`x1 $CellContext`x2 - (3 $CellContext`x2^2)/8, 
             And[$CellContext`x1 == 2/9, 
              Inequality[(-11)/9, Less, $CellContext`x2, Less, 13/9]]}, {
            2009/162 + (98 $CellContext`x1)/9 - 5 $CellContext`x2 - 
             2 $CellContext`x1 $CellContext`x2 + $CellContext`x2^2/2, 
             And[$CellContext`x1 == 2/9, 
              Inequality[13/9, Less, $CellContext`x2, Less, 49/9]]}, {
            15/2 - 2 $CellContext`x1 - 2 $CellContext`x1^2 + $CellContext`x2 + 
             2 $CellContext`x1 $CellContext`x2 - $CellContext`x2^2/2, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               
               Inequality[-3 + 2 $CellContext`x1, Less, $CellContext`x2, Less,
                 1 + 2 $CellContext`x1]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(4 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, 1 + 2 $CellContext`x1]]]}, {
            12 + 8 $CellContext`x1 - 4 $CellContext`x2, 
             Or[
              And[$CellContext`x1 == 2/9, $CellContext`x2 == 13/9], 
              
              And[$CellContext`x1 >= 10/9, $CellContext`x2 == 
               1 + 2 $CellContext`x1], 
              And[
               Inequality[
               2/9, Less, $CellContext`x1, Less, 10/9], $CellContext`x2 == 
               1 + 2 $CellContext`x1]]}, {
            9/2 + (15 $CellContext`x1)/4 + (25 $CellContext`x1^2)/
              32 + (3 $CellContext`x2)/
              2 + (5 $CellContext`x1 $CellContext`x2)/8 + $CellContext`x2^2/8, 
             Or[
              And[
               
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-14)/
                9], $CellContext`x2 == (8 + 3 $CellContext`x1)/6], 
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-14)/9], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[(-14)/9, LessEqual, $CellContext`x1, Less, 2/9], 
               Inequality[
               1 + 2 $CellContext`x1, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]]]}, {
            4 + (7 $CellContext`x1)/4 - (39 $CellContext`x1^2)/
             32 + (5 $CellContext`x2)/
              2 + (21 $CellContext`x1 $CellContext`x2)/8 - (
              3 $CellContext`x2^2)/8, 
             Or[
              And[
               Inequality[(-14)/9, LessEqual, $CellContext`x1, Less, 2/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                LessEqual, 1 + 2 $CellContext`x1]], 
              And[
               Inequality[
               2/9, Less, $CellContext`x1, Less, 10/
                9], $CellContext`x2 == (4 - 5 $CellContext`x1)/2], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (4 - 5 $CellContext`x1)/2]]]}, {
            25/2 + 10 $CellContext`x1 + 2 $CellContext`x1^2 - 
             5 $CellContext`x2 - 
             2 $CellContext`x1 $CellContext`x2 + $CellContext`x2^2/2, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               Inequality[
               1 + 2 $CellContext`x1, Less, $CellContext`x2, Less, 5 + 
                2 $CellContext`x1]], 
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-14)/9], 
               
               Inequality[(8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, 5 + 2 $CellContext`x1]], 
              And[
               Inequality[(-14)/9, LessEqual, $CellContext`x1, Less, 2/9], 
               
               Inequality[(8 + 3 $CellContext`x1)/6, 
                LessEqual, $CellContext`x2, Less, 5 + 2 $CellContext`x1]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               Inequality[
               1 + 2 $CellContext`x1, Less, $CellContext`x2, Less, 5 + 
                2 $CellContext`x1]]]}}, 0])/
        16, $CellContext`pTrans = (
         Piecewise[{{12 + 5 $CellContext`x1 + 2 $CellContext`x2, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (4 - 5 $CellContext`x1)/2]], 
              And[
               Inequality[(-14)/9, Less, $CellContext`x1, LessEqual, 2/9], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                LessEqual, (-8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                LessEqual, (-8 + 3 $CellContext`x1)/6]]]}, {((
               2 + (3 $CellContext`x1 - 6 $CellContext`x2)/4) (12 + 
               5 $CellContext`x1 + 2 $CellContext`x2))/4, 
             Or[
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, LessEqual, (-14)/9], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[(-14)/9, Less, $CellContext`x1, LessEqual, 2/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (4 - 5 $CellContext`x1)/2]]]}}, 0] + 
         Piecewise[{{4 (29/9 - $CellContext`x2), 
             And[$CellContext`x1 == 10/9, 
              Inequality[(-7)/9, Less, $CellContext`x2, Less, 29/9]]}, {16, 
             Or[
              And[$CellContext`x1 == 10/9, $CellContext`x2 == (-7)/9], 
              And[$CellContext`x1 > 10/9, 
               
               Inequality[(4 - 5 $CellContext`x1)/2, 
                LessEqual, $CellContext`x2, LessEqual, -3 + 
                2 $CellContext`x1]]]}, {
            4 (1 + 2 $CellContext`x1 - $CellContext`x2), 
             Or[
              And[$CellContext`x1 > 10/9, 
               
               Inequality[-3 + 2 $CellContext`x1, Less, $CellContext`x2, Less,
                 1 + 2 $CellContext`x1]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(4 - 5 $CellContext`x1)/2, 
                LessEqual, $CellContext`x2, Less, 1 + 2 $CellContext`x1]]]}}, 
           0] + Piecewise[{{
            253/72 + (11 $CellContext`x1)/3 + (29 $CellContext`x2)/12 + 
             3 $CellContext`x1 $CellContext`x2 - (3 $CellContext`x2^2)/8, 
             And[$CellContext`x1 == 2/9, 
              Inequality[(-11)/9, Less, $CellContext`x2, Less, 13/9]]}, {
            2009/162 + (98 $CellContext`x1)/9 - 5 $CellContext`x2 - 
             2 $CellContext`x1 $CellContext`x2 + $CellContext`x2^2/2, 
             And[$CellContext`x1 == 2/9, 
              Inequality[13/9, Less, $CellContext`x2, Less, 49/9]]}, {
            15/2 - 2 $CellContext`x1 - 2 $CellContext`x1^2 + $CellContext`x2 + 
             2 $CellContext`x1 $CellContext`x2 - $CellContext`x2^2/2, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               
               Inequality[-3 + 2 $CellContext`x1, Less, $CellContext`x2, Less,
                 1 + 2 $CellContext`x1]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(4 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, 1 + 2 $CellContext`x1]]]}, {
            12 + 8 $CellContext`x1 - 4 $CellContext`x2, 
             Or[
              And[$CellContext`x1 == 2/9, $CellContext`x2 == 13/9], 
              
              And[$CellContext`x1 >= 10/9, $CellContext`x2 == 
               1 + 2 $CellContext`x1], 
              And[
               Inequality[
               2/9, Less, $CellContext`x1, Less, 10/9], $CellContext`x2 == 
               1 + 2 $CellContext`x1]]}, {
            9/2 + (15 $CellContext`x1)/4 + (25 $CellContext`x1^2)/
              32 + (3 $CellContext`x2)/
              2 + (5 $CellContext`x1 $CellContext`x2)/8 + $CellContext`x2^2/8, 
             Or[
              And[
               
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-14)/
                9], $CellContext`x2 == (8 + 3 $CellContext`x1)/6], 
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-14)/9], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[(-14)/9, LessEqual, $CellContext`x1, Less, 2/9], 
               Inequality[
               1 + 2 $CellContext`x1, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]]]}, {
            4 + (7 $CellContext`x1)/4 - (39 $CellContext`x1^2)/
             32 + (5 $CellContext`x2)/
              2 + (21 $CellContext`x1 $CellContext`x2)/8 - (
              3 $CellContext`x2^2)/8, 
             Or[
              And[
               Inequality[(-14)/9, LessEqual, $CellContext`x1, Less, 2/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                LessEqual, 1 + 2 $CellContext`x1]], 
              And[
               Inequality[
               2/9, Less, $CellContext`x1, Less, 10/
                9], $CellContext`x2 == (4 - 5 $CellContext`x1)/2], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (4 - 5 $CellContext`x1)/2]]]}, {
            25/2 + 10 $CellContext`x1 + 2 $CellContext`x1^2 - 
             5 $CellContext`x2 - 
             2 $CellContext`x1 $CellContext`x2 + $CellContext`x2^2/2, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               Inequality[
               1 + 2 $CellContext`x1, Less, $CellContext`x2, Less, 5 + 
                2 $CellContext`x1]], 
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-14)/9], 
               
               Inequality[(8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, 5 + 2 $CellContext`x1]], 
              And[
               Inequality[(-14)/9, LessEqual, $CellContext`x1, Less, 2/9], 
               
               Inequality[(8 + 3 $CellContext`x1)/6, 
                LessEqual, $CellContext`x2, Less, 5 + 2 $CellContext`x1]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               Inequality[
               1 + 2 $CellContext`x1, Less, $CellContext`x2, Less, 5 + 
                2 $CellContext`x1]]]}}, 0])/
        16, $CellContext`pTr = (
         Piecewise[{{((12 + 5 $CellContext`x1 + 2 $CellContext`x2) (
               2 + ((-3) $CellContext`x1 + 6 $CellContext`x2)/4))/4, 
             Or[
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, LessEqual, (-14)/9], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[(-14)/9, Less, $CellContext`x1, LessEqual, 2/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (4 - 5 $CellContext`x1)/2]]]}, {
            12 + 5 $CellContext`x1 + 2 $CellContext`x2, 
             Or[
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, LessEqual, (-14)/9], 
               
               Inequality[(8 + 3 $CellContext`x1)/6, 
                LessEqual, $CellContext`x2, Less, (4 - 5 $CellContext`x1)/2]], 
              And[
               Inequality[(-14)/9, Less, $CellContext`x1, LessEqual, 2/9], 
               Inequality[(8 + 3 $CellContext`x1)/6, 
                LessEqual, $CellContext`x2, Less, (4 - 5 $CellContext`x1)/2]], 
              And[$CellContext`x1 <= (-22)/9, 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (4 - 5 $CellContext`x1)/2]]]}}, 0] + 
         Piecewise[{{
            4 (2 + (-31 + 23 $CellContext`x1 + 47 $CellContext`x2)/21), 
             Or[
              And[$CellContext`x1 >= 10/9, 
               
               Inequality[(-11 - 23 $CellContext`x1)/47, 
                Less, $CellContext`x2, Less, (73 - 23 $CellContext`x1)/47]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(4 - 5 $CellContext`x1)/2, 
                LessEqual, $CellContext`x2, Less, (73 - 23 $CellContext`x1)/
                47]]]}, {16, 
             Or[
              
              And[$CellContext`x1 >= 
               10/9, $CellContext`x2 >= (73 - 23 $CellContext`x1)/47], 
              And[
               Inequality[
               2/9, Less, $CellContext`x1, Less, 10/
                9], $CellContext`x2 >= (73 - 23 $CellContext`x1)/47], 
              
              And[$CellContext`x1 <= 
               2/9, $CellContext`x2 >= (4 - 5 $CellContext`x1)/2]]}}, 0] + 
         Piecewise[{{
            1416060125/101348982 + (903325 $CellContext`x1)/
              181629 + (2115 $CellContext`x2)/
              217 + (1081 $CellContext`x1 $CellContext`x2)/
              651 + (2209 $CellContext`x2^2)/1302, 
             And[$CellContext`x1 == 70/279, 
              
              Inequality[(-39275)/13113, Less, $CellContext`x2, Less, (-337)/
               279]]}, {
            3733411/714984 + (9361 $CellContext`x1)/5766 - (
              511 $CellContext`x2)/372 - (69 $CellContext`x1 $CellContext`x2)/
             62 - (375 $CellContext`x2^2)/248, 
             And[$CellContext`x1 == 70/279, 
              
              Inequality[(-337)/279, Less, $CellContext`x2, Less, 383/
               279]]}, {
            126515965/14478426 + (431411 $CellContext`x1)/181629 - (
              799 $CellContext`x2)/
             217 - (1081 $CellContext`x1 $CellContext`x2)/
             651 - (2209 $CellContext`x2^2)/1302, 
             And[$CellContext`x1 == 70/279, 
              Inequality[
              383/279, LessEqual, $CellContext`x2, Less, 18757/13113]]}, {
            12 + (92 $CellContext`x1)/31 + (188 $CellContext`x2)/31, 
             Or[
              And[$CellContext`x1 == 70/279, $CellContext`x2 == (-337)/279], 
              And[$CellContext`x1 >= 10/9, 
               
               Inequality[(-51 - 23 $CellContext`x1)/47, 
                LessEqual, $CellContext`x2, 
                LessEqual, (-11 - 23 $CellContext`x1)/47]], 
              And[
               Inequality[70/279, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-51 - 23 $CellContext`x1)/47, 
                LessEqual, $CellContext`x2, 
                LessEqual, (-8 + 3 $CellContext`x1)/6]]]}, {
            1825/186 - (391 $CellContext`x1)/217 - (529 $CellContext`x1^2)/
             1302 - (799 $CellContext`x2)/
             217 - (1081 $CellContext`x1 $CellContext`x2)/
             651 - (2209 $CellContext`x2^2)/1302, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               
               Inequality[(-11 - 23 $CellContext`x1)/47, 
                Less, $CellContext`x2, Less, (73 - 23 $CellContext`x1)/47]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 70/279], 
               
               Inequality[(4 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (73 - 23 $CellContext`x1)/47]], 
              And[
               Inequality[70/279, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(4 - 5 $CellContext`x1)/2, 
                LessEqual, $CellContext`x2, Less, (73 - 23 $CellContext`x1)/
                47]]]}, {
            6075/434 + (1035 $CellContext`x1)/217 + (529 $CellContext`x1^2)/
              1302 + (2115 $CellContext`x2)/
              217 + (1081 $CellContext`x1 $CellContext`x2)/
              651 + (2209 $CellContext`x2^2)/1302, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               
               Inequality[(-135 - 23 $CellContext`x1)/47, 
                Less, $CellContext`x2, Less, (-51 - 23 $CellContext`x1)/47]], 
              
              And[
               Inequality[(-14)/9, Less, $CellContext`x1, LessEqual, 2/9], 
               Inequality[(-135 - 23 $CellContext`x1)/47, 
                Less, $CellContext`x2, LessEqual, (-8 + 3 $CellContext`x1)/
                6]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 70/279], 
               
               Inequality[(-135 - 23 $CellContext`x1)/47, 
                Less, $CellContext`x2, LessEqual, (-8 + 3 $CellContext`x1)/
                6]], 
              And[
               Inequality[70/279, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-135 - 23 $CellContext`x1)/47, 
                Less, $CellContext`x2, Less, (-51 - 23 $CellContext`x1)/
                47]]]}, {
            93/14 + (155 $CellContext`x1)/28 + (775 $CellContext`x1^2)/
              672 + (31 $CellContext`x2)/
              14 + (155 $CellContext`x1 $CellContext`x2)/
              168 + (31 $CellContext`x2^2)/168, 
             Or[
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-442)/279], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                LessEqual, (-51 - 23 $CellContext`x1)/47]], 
              And[
               
               Inequality[(-442)/279, LessEqual, $CellContext`x1, 
                LessEqual, (-14)/9], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (-51 - 23 $CellContext`x1)/47]], 
              And[
               Inequality[(-14)/9, Less, $CellContext`x1, LessEqual, 2/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (-51 - 23 $CellContext`x1)/47]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 70/279], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (-51 - 23 $CellContext`x1)/47]]]}, {
            144/31 + (463 $CellContext`x1)/124 + (741 $CellContext`x1^2)/
              992 - (91 $CellContext`x2)/
             62 - (183 $CellContext`x1 $CellContext`x2)/
             248 - (375 $CellContext`x2^2)/248, 
             Or[
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-442)/279], 
               Inequality[(-51 - 23 $CellContext`x1)/47, 
                Less, $CellContext`x2, Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               
               Inequality[(-442)/279, LessEqual, $CellContext`x1, 
                LessEqual, (-14)/9], 
               
               Inequality[(-51 - 23 $CellContext`x1)/47, 
                LessEqual, $CellContext`x2, Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[(-14)/9, Less, $CellContext`x1, LessEqual, 2/9], 
               
               Inequality[(-51 - 23 $CellContext`x1)/47, 
                LessEqual, $CellContext`x2, Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 70/279], 
               
               Inequality[(-51 - 23 $CellContext`x1)/47, 
                LessEqual, $CellContext`x2, 
                LessEqual, (4 - 5 $CellContext`x1)/2]], 
              And[
               Inequality[70/279, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (4 - 5 $CellContext`x1)/2]]]}}, 0])/
        16, $CellContext`pDet = (
         Piecewise[{{
            4 (2 + (-31 + 23 $CellContext`x1 + 47 $CellContext`x2)/21), 
             Or[
              And[$CellContext`x1 > 10/9, 
               
               Inequality[(-11 - 23 $CellContext`x1)/47, 
                Less, $CellContext`x2, Less, (73 - 23 $CellContext`x1)/47]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, LessEqual, 10/9], 
               
               Inequality[(4 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (73 - 23 $CellContext`x1)/47]]]}, {16, 
             Or[
              
              And[$CellContext`x1 > 
               10/9, $CellContext`x2 >= (73 - 23 $CellContext`x1)/47], 
              And[
               
               Inequality[(-62)/3, LessEqual, $CellContext`x1, LessEqual, 2/
                9], $CellContext`x2 >= (11 - 4 $CellContext`x1)/7], 
              And[
               Inequality[
               2/9, Less, $CellContext`x1, LessEqual, 10/
                9], $CellContext`x2 >= (73 - 23 $CellContext`x1)/47], 
              And[$CellContext`x1 < (-62)/
                3, $CellContext`x2 > (11 - 4 $CellContext`x1)/7]]}, {
            4 (2 + (-5 + 4 $CellContext`x1 + 7 $CellContext`x2)/3), 
             Or[
              And[
               
               Inequality[(-62)/3, LessEqual, $CellContext`x1, LessEqual, 2/
                9], 
               
               Inequality[(-1 - 4 $CellContext`x1)/7, Less, $CellContext`x2, 
                Less, (11 - 4 $CellContext`x1)/7]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, LessEqual, 10/9], 
               
               Inequality[(-1 - 4 $CellContext`x1)/7, Less, $CellContext`x2, 
                LessEqual, (4 - 5 $CellContext`x1)/2]], 
              
              And[$CellContext`x1 < (-62)/
                3, $CellContext`x2 == (11 - 4 $CellContext`x1)/7], 
              And[$CellContext`x1 < (-62)/3, 
               
               Inequality[(-1 - 4 $CellContext`x1)/7, Less, $CellContext`x2, 
                Less, (11 - 4 $CellContext`x1)/7]]]}}, 0] + 
         Piecewise[{{
            29939/3000 + (182 $CellContext`x1)/75 + (469 $CellContext`x2)/
              60 + (6 $CellContext`x1 $CellContext`x2)/
              5 + (57 $CellContext`x2^2)/40, 
             And[$CellContext`x1 == (-62)/45, 
              Inequality[(-91)/45, Less, $CellContext`x2, Less, 29/45]]}, {
            1153879/60750 + (2972 $CellContext`x1)/675 - (21 $CellContext`x2)/
             5 - (28 $CellContext`x1 $CellContext`x2)/
             15 - (49 $CellContext`x2^2)/30, 
             And[$CellContext`x1 == (-62)/45, 
              Inequality[29/45, Less, $CellContext`x2, Less, 743/315]]}, {
            35/6 - (25 $CellContext`x1)/4 - (125 $CellContext`x1^2)/
             96 - (5 $CellContext`x2)/
             2 - (25 $CellContext`x1 $CellContext`x2)/
             24 - (5 $CellContext`x2^2)/24, 
             Or[
              And[
               Inequality[(-62)/45, Less, $CellContext`x1, LessEqual, 2/9], 
               
               Inequality[(-1 - 4 $CellContext`x1)/7, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               Inequality[(-1 - 4 $CellContext`x1)/7, Less, $CellContext`x2, 
                Less, (4 - 5 $CellContext`x1)/2]]]}, {
            147/10 + (28 $CellContext`x1)/5 + (8 $CellContext`x1^2)/
              15 + (49 $CellContext`x2)/
              5 + (28 $CellContext`x1 $CellContext`x2)/
              15 + (49 $CellContext`x2^2)/30, 
             Or[
              And[
               
               Inequality[(-182)/45, LessEqual, $CellContext`x1, 
                LessEqual, (-22)/9], 
               
               Inequality[(-21 - 4 $CellContext`x1)/7, Less, $CellContext`x2, 
                Less, (-9 - 4 $CellContext`x1)/7]], 
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, LessEqual, (-14)/9], 
               
               Inequality[(-21 - 4 $CellContext`x1)/7, Less, $CellContext`x2, 
                LessEqual, (-12 - 5 $CellContext`x1)/2]], 
              And[$CellContext`x1 < (-182)/45, 
               
               Inequality[(-21 - 4 $CellContext`x1)/7, Less, $CellContext`x2, 
                LessEqual, (-9 - 4 $CellContext`x1)/7]]]}, {
            36/5 - (13 $CellContext`x1)/20 - (123 $CellContext`x1^2)/
             160 + (73 $CellContext`x2)/
              10 + (33 $CellContext`x1 $CellContext`x2)/
              40 + (57 $CellContext`x2^2)/40, 
             Or[
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, LessEqual, (-14)/9], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[(-14)/9, Less, $CellContext`x1, Less, (-62)/45], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[(-62)/45, Less, $CellContext`x1, LessEqual, 2/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                LessEqual, (-1 - 4 $CellContext`x1)/7]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                LessEqual, (-1 - 4 $CellContext`x1)/7]]]}, {
            12 + (16 $CellContext`x1)/5 + (28 $CellContext`x2)/5, 
             Or[
              And[$CellContext`x1 == (-62)/45, $CellContext`x2 == 29/45], 
              And[
               
               Inequality[(-182)/45, LessEqual, $CellContext`x1, 
                LessEqual, (-22)/9], 
               
               Inequality[(-9 - 4 $CellContext`x1)/7, 
                LessEqual, $CellContext`x2, 
                LessEqual, (-1 - 4 $CellContext`x1)/7]], 
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, LessEqual, (-14)/9], 
               
               Inequality[(8 + 3 $CellContext`x1)/6, 
                LessEqual, $CellContext`x2, 
                LessEqual, (-1 - 4 $CellContext`x1)/7]], 
              And[
               Inequality[(-14)/9, Less, $CellContext`x1, Less, (-62)/45], 
               
               Inequality[(8 + 3 $CellContext`x1)/6, 
                LessEqual, $CellContext`x2, 
                LessEqual, (-1 - 4 $CellContext`x1)/7]], 
              And[$CellContext`x1 < (-182)/45, 
               
               Inequality[(-9 - 4 $CellContext`x1)/7, Less, $CellContext`x2, 
                LessEqual, (-1 - 4 $CellContext`x1)/7]]]}, {
            319/30 - (12 $CellContext`x1)/5 - (8 $CellContext`x1^2)/
             15 - (21 $CellContext`x2)/
             5 - (28 $CellContext`x1 $CellContext`x2)/
             15 - (49 $CellContext`x2^2)/30, 
             Or[
              And[
               
               Inequality[(-182)/45, LessEqual, $CellContext`x1, 
                LessEqual, (-22)/9], 
               
               Inequality[(-1 - 4 $CellContext`x1)/7, Less, $CellContext`x2, 
                Less, (11 - 4 $CellContext`x1)/7]], 
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, LessEqual, (-14)/9], 
               
               Inequality[(-1 - 4 $CellContext`x1)/7, Less, $CellContext`x2, 
                Less, (11 - 4 $CellContext`x1)/7]], 
              And[
               Inequality[(-14)/9, Less, $CellContext`x1, Less, (-62)/45], 
               
               Inequality[(-1 - 4 $CellContext`x1)/7, Less, $CellContext`x2, 
                Less, (11 - 4 $CellContext`x1)/7]], 
              And[
               Inequality[(-62)/45, Less, $CellContext`x1, LessEqual, 2/9], 
               
               Inequality[(8 + 3 $CellContext`x1)/6, 
                LessEqual, $CellContext`x2, Less, (11 - 4 $CellContext`x1)/
                7]], 
              And[$CellContext`x1 < (-182)/45, 
               
               Inequality[(-1 - 4 $CellContext`x1)/7, Less, $CellContext`x2, 
                Less, (11 - 4 $CellContext`x1)/7]]]}}, 0] + 
         Piecewise[{{
            1416060125/101348982 + (903325 $CellContext`x1)/
              181629 + (2115 $CellContext`x2)/
              217 + (1081 $CellContext`x1 $CellContext`x2)/
              651 + (2209 $CellContext`x2^2)/1302, 
             And[$CellContext`x1 == 70/279, 
              
              Inequality[(-39275)/13113, Less, $CellContext`x2, Less, (-337)/
               279]]}, {
            3733411/714984 + (9361 $CellContext`x1)/5766 - (
              511 $CellContext`x2)/372 - (69 $CellContext`x1 $CellContext`x2)/
             62 - (375 $CellContext`x2^2)/248, 
             And[$CellContext`x1 == 70/279, 
              
              Inequality[(-337)/279, Less, $CellContext`x2, Less, 383/
               279]]}, {
            126515965/14478426 + (431411 $CellContext`x1)/181629 - (
              799 $CellContext`x2)/
             217 - (1081 $CellContext`x1 $CellContext`x2)/
             651 - (2209 $CellContext`x2^2)/1302, 
             And[$CellContext`x1 == 70/279, 
              Inequality[
              383/279, LessEqual, $CellContext`x2, Less, 18757/13113]]}, {
            12 + (92 $CellContext`x1)/31 + (188 $CellContext`x2)/31, 
             Or[
              And[$CellContext`x1 == 70/279, $CellContext`x2 == (-337)/279], 
              And[$CellContext`x1 >= 10/9, 
               
               Inequality[(-51 - 23 $CellContext`x1)/47, 
                LessEqual, $CellContext`x2, 
                LessEqual, (-11 - 23 $CellContext`x1)/47]], 
              And[
               Inequality[70/279, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-51 - 23 $CellContext`x1)/47, 
                LessEqual, $CellContext`x2, 
                LessEqual, (-8 + 3 $CellContext`x1)/6]]]}, {
            1825/186 - (391 $CellContext`x1)/217 - (529 $CellContext`x1^2)/
             1302 - (799 $CellContext`x2)/
             217 - (1081 $CellContext`x1 $CellContext`x2)/
             651 - (2209 $CellContext`x2^2)/1302, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               
               Inequality[(-11 - 23 $CellContext`x1)/47, 
                Less, $CellContext`x2, Less, (73 - 23 $CellContext`x1)/47]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 70/279], 
               
               Inequality[(4 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (73 - 23 $CellContext`x1)/47]], 
              And[
               Inequality[70/279, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(4 - 5 $CellContext`x1)/2, 
                LessEqual, $CellContext`x2, Less, (73 - 23 $CellContext`x1)/
                47]]]}, {
            6075/434 + (1035 $CellContext`x1)/217 + (529 $CellContext`x1^2)/
              1302 + (2115 $CellContext`x2)/
              217 + (1081 $CellContext`x1 $CellContext`x2)/
              651 + (2209 $CellContext`x2^2)/1302, 
             Or[
              And[$CellContext`x1 >= 10/9, 
               
               Inequality[(-135 - 23 $CellContext`x1)/47, 
                Less, $CellContext`x2, Less, (-51 - 23 $CellContext`x1)/47]], 
              
              And[
               Inequality[(-14)/9, Less, $CellContext`x1, LessEqual, 2/9], 
               
               Inequality[(-135 - 23 $CellContext`x1)/47, 
                Less, $CellContext`x2, LessEqual, (-8 + 3 $CellContext`x1)/
                6]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 70/279], 
               
               Inequality[(-135 - 23 $CellContext`x1)/47, 
                Less, $CellContext`x2, LessEqual, (-8 + 3 $CellContext`x1)/
                6]], 
              And[
               Inequality[70/279, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-135 - 23 $CellContext`x1)/47, 
                Less, $CellContext`x2, Less, (-51 - 23 $CellContext`x1)/
                47]]]}, {
            93/14 + (155 $CellContext`x1)/28 + (775 $CellContext`x1^2)/
              672 + (31 $CellContext`x2)/
              14 + (155 $CellContext`x1 $CellContext`x2)/
              168 + (31 $CellContext`x2^2)/168, 
             Or[
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-442)/279], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                LessEqual, (-51 - 23 $CellContext`x1)/47]], 
              And[
               
               Inequality[(-442)/279, LessEqual, $CellContext`x1, 
                LessEqual, (-14)/9], 
               
               Inequality[(-12 - 5 $CellContext`x1)/2, Less, $CellContext`x2, 
                Less, (-51 - 23 $CellContext`x1)/47]], 
              And[
               Inequality[(-14)/9, Less, $CellContext`x1, LessEqual, 2/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (-51 - 23 $CellContext`x1)/47]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 70/279], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (-51 - 23 $CellContext`x1)/47]]]}, {
            144/31 + (463 $CellContext`x1)/124 + (741 $CellContext`x1^2)/
              992 - (91 $CellContext`x2)/
             62 - (183 $CellContext`x1 $CellContext`x2)/
             248 - (375 $CellContext`x2^2)/248, 
             Or[
              And[
               Inequality[(-22)/9, Less, $CellContext`x1, Less, (-442)/279], 
               
               Inequality[(-51 - 23 $CellContext`x1)/47, 
                Less, $CellContext`x2, Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               
               Inequality[(-442)/279, LessEqual, $CellContext`x1, 
                LessEqual, (-14)/9], 
               
               Inequality[(-51 - 23 $CellContext`x1)/47, 
                LessEqual, $CellContext`x2, Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[(-14)/9, Less, $CellContext`x1, LessEqual, 2/9], 
               
               Inequality[(-51 - 23 $CellContext`x1)/47, 
                LessEqual, $CellContext`x2, Less, (8 + 3 $CellContext`x1)/6]], 
              And[
               Inequality[2/9, Less, $CellContext`x1, Less, 70/279], 
               
               Inequality[(-51 - 23 $CellContext`x1)/47, 
                LessEqual, $CellContext`x2, 
                LessEqual, (4 - 5 $CellContext`x1)/2]], 
              And[
               Inequality[70/279, Less, $CellContext`x1, Less, 10/9], 
               
               Inequality[(-8 + 3 $CellContext`x1)/6, Less, $CellContext`x2, 
                Less, (4 - 5 $CellContext`x1)/2]]]}}, 0])/16}; 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output", "PluginEmbeddedContent"]
}, Open  ]],

Cell["\<\
And again we plot the equi - probability contour lines for all four different \
formulations.
As we see here the transformed sets have very little to do with the \
probability of the set we originally were interested in (the pruple line - \
not sure if the colour is the same in every evaluation).\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Module", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"Level", "=", ".3"}], "}"}], ",", 
   RowBox[{"ContourPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"Evaluate", "[", 
         RowBox[{"pIni", "/.", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"x1", "\[Rule]", "t1"}], ",", 
            RowBox[{"x2", "\[Rule]", "t2"}]}], "}"}]}], "]"}], "\[Equal]", 
        "Level"}], ",", 
       RowBox[{
        RowBox[{"Evaluate", "[", 
         RowBox[{"pTrans", "/.", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"x1", "\[Rule]", "t1"}], ",", 
            RowBox[{"x2", "\[Rule]", "t2"}]}], "}"}]}], "]"}], "\[Equal]", 
        "Level"}], ",", 
       RowBox[{
        RowBox[{"Evaluate", "[", 
         RowBox[{"pDet", "/.", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"x1", "\[Rule]", "t1"}], ",", 
            RowBox[{"x2", "\[Rule]", "t2"}]}], "}"}]}], "]"}], "\[Equal]", 
        "Level"}], ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Evaluate", "[", 
         RowBox[{"pTr", "/.", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"x1", "\[Rule]", "t1"}], ",", 
            RowBox[{"x2", "\[Rule]", "t2"}]}], "}"}]}], "]"}], "\[Equal]", 
        "Level"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"t1", ",", 
       RowBox[{"-", "5"}], ",", "5"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"t2", ",", 
       RowBox[{"-", "5"}], ",", "5"}], "}"}]}], "]"}]}], "]"}]], "Input", \
"PluginEmbeddedContent"],

Cell[BoxData[
 GraphicsBox[GraphicsComplexBox[CompressedData["
1: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
6NF+cJaIg4GriPf3A0IuKzGo+dNu40/KGNq9EHl5rO8F89X0r3tT3+v3ANL3
eBP6shuMjGfyWm8MVUY6XJdZ1Q2ki+45LZEcQ8JEfrrBudbsM63Zo+ipntU9
Pasu8JGYk1FkzXMpN424YJTI9wjaQ9y/E7xfwRfIIxTPEzbswggqccpImqnT
AViCPKHeDXyD1AbcEq0qJqQNI/J7E5I/ThB1awFz+GNTM4QIO2P46088Q5QO
uELEMYhCiP21oPEyX1APIhKf3XoC0xbAQaSz0ymqWqGK0hH/5IQohmuXgqPu
NxzfGg1QuqCxXmNx9NF+1Of/LPrKmXzALRn7NzG9D5E+geRHxWvLrl51SAZT
oiJat1v1ouVXU1YtmnoHTJ+aH7lZtJfSDSNEfrqQ3l3XnUqhWWitb8lSl+Eu
pPYqPlMJZaHc9e3DO4q60LRKuzwvtQ8o+G7Ef1uudlL8Gja0Nn1oZyfqY3tG
cjKLKD73/xbTmvf8J/LZn9GpcaUNkT51T5Hsu2cybchHLapmMLKa0hGvj3zV
LpetQSaew2sOSjdSekFrQZvDN+7flfz7sVsfVncJN6LkJi91ZcMGFNs53zzt
v0b09abf4YATVShufb/pyrq/3xukTejJz9r0Gyll7D2qsu0rqn4g5jq6vAPl
j5vmYf42h7r31TyxqrnTk9Cysekzv9tyqTyJyydM8xrX9X/6i67PyDoFBEZt
M+fpN7q+o+s/uj6k60e6vqTrT7o+petXur6l61+6PqbrZ7q+putvuj6n63e6
vqfrf7o/oPsHur+g+w+6P6H7F7q/ofsfuj+i+ye6v6L7L7o/o/s3ur+j+z+6
P6T7R7q/pPtPuj+l+1e6v6X7X7o/pvtnur+m+2+6P6f7d7q/p/v//wGeRhMl

   "], {{}, {}, 
    TagBox[
     TooltipBox[
      {Hue[0.67, 0.6, 0.6], 
       LineBox[{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
         19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 
        36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 
        53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 
        70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 
        87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 
        103, 104, 105, 106, 107, 108, 109, 110, 111, 112}]},
      RowBox[{
        RowBox[{
          FractionBox["1", "16"], " ", 
          RowBox[{"(", 
            RowBox[{
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{"12", "+", 
                    RowBox[{"2", " ", "t1"}], "+", 
                    RowBox[{"8", " ", "t2"}]}], 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}]}]}]}, {
                    RowBox[{
                    FractionBox["15", "2"], "-", 
                    FractionBox["t1", "2"], "-", 
                    FractionBox[
                    SuperscriptBox["t1", "2"], "8"], "-", 
                    RowBox[{"2", " ", "t2"}], "-", 
                    RowBox[{"t1", " ", "t2"}], "-", 
                    RowBox[{"2", " ", 
                    SuperscriptBox["t2", "2"]}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}], "<", "t2", "<", 
                    
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["25", "2"], "+", 
                    FractionBox[
                    RowBox[{"5", " ", "t1"}], "2"], "+", 
                    FractionBox[
                    SuperscriptBox["t1", "2"], "8"], "+", 
                    RowBox[{"10", " ", "t2"}], "+", 
                    RowBox[{"t1", " ", "t2"}], "+", 
                    RowBox[{"2", " ", 
                    SuperscriptBox["t2", "2"]}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "10"}], "-", "t1"}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", 
                    "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "10"}], "-", "t1"}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "10"}], "-", "t1"}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["9", "2"], "+", 
                    FractionBox[
                    RowBox[{"15", " ", "t1"}], "4"], "+", 
                    FractionBox[
                    RowBox[{"25", " ", 
                    SuperscriptBox["t1", "2"]}], "32"], "+", 
                    FractionBox[
                    RowBox[{"3", " ", "t2"}], "2"], "+", 
                    FractionBox[
                    RowBox[{"5", " ", "t1", " ", "t2"}], "8"], "+", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "8"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", 
                    "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{"4", "+", 
                    FractionBox[
                    RowBox[{"13", " ", "t1"}], "4"], "+", 
                    FractionBox[
                    RowBox[{"21", " ", 
                    SuperscriptBox["t1", "2"]}], "32"], "-", 
                    FractionBox["t2", "2"], "-", 
                    FractionBox[
                    RowBox[{"3", " ", "t1", " ", "t2"}], "8"], "-", 
                    FractionBox[
                    RowBox[{"15", " ", 
                    SuperscriptBox["t2", "2"]}], "8"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}], "<", "t2", "<", 
                    
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", 
                    "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}], "\[LessEqual]", 
                    "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}], "\[LessEqual]", 
                    "t2", "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}], "+", 
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{"2", "+", 
                    RowBox[{"2", " ", "t2"}]}], ")"}]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", "2"}], "&&", 
                    RowBox[{
                    RowBox[{"-", "1"}], "<", "t2", "<", "1"}]}]}, {
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{"5", "-", "t2"}], ")"}]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", "2"}], "&&", 
                    RowBox[{"1", "<", "t2", "<", "5"}]}]}, {"16", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", "2"}], "&&", 
                    RowBox[{"t2", "\[Equal]", "1"}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", ">", "2"}], "&&", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"], "\[LessEqual]", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{"2", "+", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "+", "t1", "+", 
                    RowBox[{"4", " ", "t2"}]}], ")"}]}]}], ")"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", ">", "2"}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}], "<", "t2", "<", 
                    
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["10", "9"], "\[LessEqual]", "t1", "<", "2"}], 
                    "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "-", "t1"}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}], "-", "t2"}], ")"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", ">", "2"}], "&&", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"], "<", "t2", "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["10", "9"], "\[LessEqual]", "t1", "<", "2"}], 
                    "&&", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"], "\[LessEqual]", "t2", "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "+", 
                    RowBox[{"2", " ", "t1"}], "-", "t2", "+", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "2"}], "+", "t1", "+", 
                    RowBox[{"4", " ", "t2"}]}], ")"}]}]}], ")"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["10", "9"], "\[LessEqual]", "t1", "<", "2"}], 
                    "&&", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    FractionBox[
                    RowBox[{"6", "-", "t1"}], "4"]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}], "+", 
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{
                    FractionBox["253", "72"], "+", 
                    FractionBox[
                    RowBox[{"11", " ", "t1"}], "3"], "+", 
                    FractionBox[
                    RowBox[{"29", " ", "t2"}], "12"], "+", 
                    RowBox[{"3", " ", "t1", " ", "t2"}], "-", 
                    FractionBox[
                    RowBox[{"3", " ", 
                    SuperscriptBox["t2", "2"]}], "8"]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["11", "9"]}], "<", "t2", "<", 
                    FractionBox["13", "9"]}]}]}, {
                    RowBox[{
                    FractionBox["2009", "162"], "+", 
                    FractionBox[
                    RowBox[{"98", " ", "t1"}], "9"], "-", 
                    RowBox[{"5", " ", "t2"}], "-", 
                    RowBox[{"2", " ", "t1", " ", "t2"}], "+", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "2"]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    FractionBox["13", "9"], "<", "t2", "<", 
                    FractionBox["49", "9"]}]}]}, {
                    RowBox[{
                    FractionBox["15", "2"], "-", 
                    RowBox[{"2", " ", "t1"}], "-", 
                    RowBox[{"2", " ", 
                    SuperscriptBox["t1", "2"]}], "+", "t2", "+", 
                    RowBox[{"2", " ", "t1", " ", "t2"}], "-", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "2"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {
                    RowBox[{"12", "+", 
                    RowBox[{"8", " ", "t1"}], "-", 
                    RowBox[{"4", " ", "t2"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    FractionBox["13", "9"]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["9", "2"], "+", 
                    FractionBox[
                    RowBox[{"15", " ", "t1"}], "4"], "+", 
                    FractionBox[
                    RowBox[{"25", " ", 
                    SuperscriptBox["t1", "2"]}], "32"], "+", 
                    FractionBox[
                    RowBox[{"3", " ", "t2"}], "2"], "+", 
                    FractionBox[
                    RowBox[{"5", " ", "t1", " ", "t2"}], "8"], "+", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "8"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", "<", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{"4", "+", 
                    FractionBox[
                    RowBox[{"7", " ", "t1"}], "4"], "-", 
                    FractionBox[
                    RowBox[{"39", " ", 
                    SuperscriptBox["t1", "2"]}], "32"], "+", 
                    FractionBox[
                    RowBox[{"5", " ", "t2"}], "2"], "+", 
                    FractionBox[
                    RowBox[{"21", " ", "t1", " ", "t2"}], "8"], "-", 
                    FractionBox[
                    RowBox[{"3", " ", 
                    SuperscriptBox["t2", "2"]}], "8"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", "<", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["25", "2"], "+", 
                    RowBox[{"10", " ", "t1"}], "+", 
                    RowBox[{"2", " ", 
                    SuperscriptBox["t1", "2"]}], "-", 
                    RowBox[{"5", " ", "t2"}], "-", 
                    RowBox[{"2", " ", "t1", " ", "t2"}], "+", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "2"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{"5", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{"5", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", "<", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "<", 
                    RowBox[{"5", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{"5", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}]}], ")"}]}], "\[Equal]", "0.3`"}]],
     Annotation[#, 
      Rational[1, 16] (Piecewise[{{12 + 2 $CellContext`t1 + 8 $CellContext`t2, 
            And[$CellContext`t1 >= Rational[10, 9], $CellContext`t2 == 
             Rational[1, 4] (-2 - $CellContext`t1)]}, {
           Rational[15, 2] + Rational[-1, 2] $CellContext`t1 + 
            Rational[-1, 8] $CellContext`t1^2 - 
            2 $CellContext`t2 - $CellContext`t1 $CellContext`t2 - 
            2 $CellContext`t2^2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              Rational[1, 4] (-2 - $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 4] (6 - $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 4] (6 - $CellContext`t1)]]]}, {
           Rational[25, 2] + Rational[5, 2] $CellContext`t1 + 
            Rational[1, 8] $CellContext`t1^2 + 
            10 $CellContext`t2 + $CellContext`t1 $CellContext`t2 + 
            2 $CellContext`t2^2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              Rational[1, 4] (-10 - $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 4] (-2 - $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 4] (-10 - $CellContext`t1), Less, $CellContext`t2, 
               LessEqual, Rational[1, 6] (-8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 4] (-10 - $CellContext`t1), Less, $CellContext`t2, 
               LessEqual, Rational[1, 6] (-8 + 3 $CellContext`t1)]]]}, {
           Rational[9, 2] + Rational[15, 4] $CellContext`t1 + 
            Rational[25, 32] $CellContext`t1^2 + 
            Rational[3, 2] $CellContext`t2 + (
              Rational[5, 8] $CellContext`t1) $CellContext`t2 + 
            Rational[1, 8] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                LessEqual, Rational[1, 4] (-2 - $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 4] (-2 - $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 4] (-2 - $CellContext`t1)]]]}, {
           4 + Rational[13, 4] $CellContext`t1 + 
            Rational[21, 32] $CellContext`t1^2 + 
            Rational[-1, 2] $CellContext`t2 + (
              Rational[-3, 8] $CellContext`t1) $CellContext`t2 + 
            Rational[-15, 8] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 4] (-2 - $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 4] (-2 - $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 
               Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 4] (-2 - $CellContext`t1), 
               LessEqual, $CellContext`t2, LessEqual, 
               Rational[1, 2] (4 - 5 $CellContext`t1)]]]}}, 0] + 
        Piecewise[{{4 (2 + 2 $CellContext`t2), 
            And[$CellContext`t1 == 2, 
             Inequality[-1, Less, $CellContext`t2, Less, 1]]}, {
           4 (5 - $CellContext`t2), 
            And[$CellContext`t1 == 2, 
             Inequality[1, Less, $CellContext`t2, Less, 5]]}, {16, 
            Or[
             And[$CellContext`t1 == 2, $CellContext`t2 == 1], 
             And[$CellContext`t1 > 2, 
              Inequality[
              Rational[1, 4] (6 - $CellContext`t1), 
               LessEqual, $CellContext`t2, LessEqual, -3 + 
               2 $CellContext`t1]]]}, {
           4 (2 + Rational[1, 2] (-2 + $CellContext`t1 + 4 $CellContext`t2)), 
            
            Or[
             And[$CellContext`t1 > 2, 
              Inequality[
              Rational[1, 4] (-2 - $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 4] (6 - $CellContext`t1)]], 
             And[
              Inequality[
               Rational[10, 9], LessEqual, $CellContext`t1, Less, 2], 
              Inequality[
              Rational[1, 4] (-2 - $CellContext`t1), Less, $CellContext`t2, 
               LessEqual, -3 + 2 $CellContext`t1]]]}, {
           4 (1 + 2 $CellContext`t1 - $CellContext`t2), 
            Or[
             And[$CellContext`t1 > 2, 
              
              Inequality[-3 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 
               1 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 4] (6 - $CellContext`t1), Less, $CellContext`t2, 
               Less, 1 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[10, 9], LessEqual, $CellContext`t1, Less, 2], 
              Inequality[
              Rational[1, 4] (6 - $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 1 + 2 $CellContext`t1]]]}, {
           4 (-1 + 2 $CellContext`t1 - $CellContext`t2 + 
             Rational[1, 2] (-2 + $CellContext`t1 + 4 $CellContext`t2)), 
            Or[
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], $CellContext`t2 == 
              Rational[1, 4] (6 - $CellContext`t1)], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 4] (6 - $CellContext`t1)]], 
             And[
              Inequality[
               Rational[10, 9], LessEqual, $CellContext`t1, Less, 2], 
              
              Inequality[-3 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 
               Rational[1, 4] (6 - $CellContext`t1)]]]}}, 0] + 
        Piecewise[{{
           Rational[253, 72] + Rational[11, 3] $CellContext`t1 + 
            Rational[29, 12] $CellContext`t2 + (
              3 $CellContext`t1) $CellContext`t2 + 
            Rational[-3, 8] $CellContext`t2^2, 
            And[$CellContext`t1 == Rational[2, 9], 
             Inequality[
              Rational[-11, 9], Less, $CellContext`t2, Less, 
              Rational[13, 9]]]}, {
           Rational[2009, 162] + Rational[98, 9] $CellContext`t1 - 
            5 $CellContext`t2 - (2 $CellContext`t1) $CellContext`t2 + 
            Rational[1, 2] $CellContext`t2^2, 
            And[$CellContext`t1 == Rational[2, 9], 
             Inequality[
              Rational[13, 9], Less, $CellContext`t2, Less, 
              Rational[49, 9]]]}, {
           Rational[15, 2] - 2 $CellContext`t1 - 
            2 $CellContext`t1^2 + $CellContext`t2 + (
              2 $CellContext`t1) $CellContext`t2 + 
            Rational[-1, 2] $CellContext`t2^2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              
              Inequality[-3 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 
               1 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), Less, $CellContext`t2, 
               Less, 1 + 2 $CellContext`t1]]]}, {
           12 + 8 $CellContext`t1 - 4 $CellContext`t2, 
            Or[
             
             And[$CellContext`t1 == Rational[2, 9], $CellContext`t2 == 
              Rational[13, 9]], 
             
             And[$CellContext`t1 >= Rational[10, 9], $CellContext`t2 == 
              1 + 2 $CellContext`t1], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], $CellContext`t2 == 
              1 + 2 $CellContext`t1]]}, {
           Rational[9, 2] + Rational[15, 4] $CellContext`t1 + 
            Rational[25, 32] $CellContext`t1^2 + 
            Rational[3, 2] $CellContext`t2 + (
              Rational[5, 8] $CellContext`t1) $CellContext`t2 + 
            Rational[1, 8] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-14, 9]], $CellContext`t2 == 
              Rational[1, 6] (8 + 3 $CellContext`t1)], 
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                Less, Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, Less, 
               Rational[2, 9]], 
              Inequality[
              1 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 
               Rational[1, 6] (8 + 3 $CellContext`t1)]]]}, {
           4 + Rational[7, 4] $CellContext`t1 + 
            Rational[-39, 32] $CellContext`t1^2 + 
            Rational[5, 2] $CellContext`t2 + (
              Rational[21, 8] $CellContext`t1) $CellContext`t2 + 
            Rational[-3, 8] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, Less, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               LessEqual, 1 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], $CellContext`t2 == 
              Rational[1, 2] (4 - 5 $CellContext`t1)], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 2] (4 - 5 $CellContext`t1)]]]}, {
           Rational[25, 2] + 10 $CellContext`t1 + 2 $CellContext`t1^2 - 
            5 $CellContext`t2 - (2 $CellContext`t1) $CellContext`t2 + 
            Rational[1, 2] $CellContext`t2^2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              1 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 5 + 
               2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 6] (8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, 5 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, Less, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (8 + 3 $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 5 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              1 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 5 + 
               2 $CellContext`t1]]]}}, 0]) == 0.3, "Tooltip"]& ], 
    TagBox[
     TooltipBox[
      {Hue[0.9060679774997897, 0.6, 0.6], 
       LineBox[{113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 
        125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 
        139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 
        153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 
        167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 
        181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 
        195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 
        209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 
        223, 224, 225, 226, 227, 228, 229, 230, 231}]},
      RowBox[{
        RowBox[{
          FractionBox["1", "16"], " ", 
          RowBox[{"(", 
            RowBox[{
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{"12", "+", 
                    RowBox[{"5", " ", "t1"}], "+", 
                    RowBox[{"2", " ", "t2"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "<", "t1", "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{"2", "+", 
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"3", " ", "t1"}], "-", 
                    RowBox[{"6", " ", "t2"}]}], ")"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"12", "+", 
                    RowBox[{"5", " ", "t1"}], "+", 
                    RowBox[{"2", " ", "t2"}]}], ")"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "\[LessEqual]", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "<", "t1", "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}], "+", 
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    FractionBox["29", "9"], "-", "t2"}], ")"}]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["7", "9"]}], "<", "t2", "<", 
                    FractionBox["29", "9"]}]}]}, {"16", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{"-", 
                    FractionBox["7", "9"]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", ">", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "\[LessEqual]", 
                    RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}], "-", "t2"}], ")"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", ">", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}], "+", 
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{
                    FractionBox["253", "72"], "+", 
                    FractionBox[
                    RowBox[{"11", " ", "t1"}], "3"], "+", 
                    FractionBox[
                    RowBox[{"29", " ", "t2"}], "12"], "+", 
                    RowBox[{"3", " ", "t1", " ", "t2"}], "-", 
                    FractionBox[
                    RowBox[{"3", " ", 
                    SuperscriptBox["t2", "2"]}], "8"]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["11", "9"]}], "<", "t2", "<", 
                    FractionBox["13", "9"]}]}]}, {
                    RowBox[{
                    FractionBox["2009", "162"], "+", 
                    FractionBox[
                    RowBox[{"98", " ", "t1"}], "9"], "-", 
                    RowBox[{"5", " ", "t2"}], "-", 
                    RowBox[{"2", " ", "t1", " ", "t2"}], "+", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "2"]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    FractionBox["13", "9"], "<", "t2", "<", 
                    FractionBox["49", "9"]}]}]}, {
                    RowBox[{
                    FractionBox["15", "2"], "-", 
                    RowBox[{"2", " ", "t1"}], "-", 
                    RowBox[{"2", " ", 
                    SuperscriptBox["t1", "2"]}], "+", "t2", "+", 
                    RowBox[{"2", " ", "t1", " ", "t2"}], "-", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "2"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "3"}], "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {
                    RowBox[{"12", "+", 
                    RowBox[{"8", " ", "t1"}], "-", 
                    RowBox[{"4", " ", "t2"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    FractionBox["13", "9"]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["9", "2"], "+", 
                    FractionBox[
                    RowBox[{"15", " ", "t1"}], "4"], "+", 
                    FractionBox[
                    RowBox[{"25", " ", 
                    SuperscriptBox["t1", "2"]}], "32"], "+", 
                    FractionBox[
                    RowBox[{"3", " ", "t2"}], "2"], "+", 
                    FractionBox[
                    RowBox[{"5", " ", "t1", " ", "t2"}], "8"], "+", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "8"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", "<", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{"4", "+", 
                    FractionBox[
                    RowBox[{"7", " ", "t1"}], "4"], "-", 
                    FractionBox[
                    RowBox[{"39", " ", 
                    SuperscriptBox["t1", "2"]}], "32"], "+", 
                    FractionBox[
                    RowBox[{"5", " ", "t2"}], "2"], "+", 
                    FractionBox[
                    RowBox[{"21", " ", "t1", " ", "t2"}], "8"], "-", 
                    FractionBox[
                    RowBox[{"3", " ", 
                    SuperscriptBox["t2", "2"]}], "8"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", "<", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["25", "2"], "+", 
                    RowBox[{"10", " ", "t1"}], "+", 
                    RowBox[{"2", " ", 
                    SuperscriptBox["t1", "2"]}], "-", 
                    RowBox[{"5", " ", "t2"}], "-", 
                    RowBox[{"2", " ", "t1", " ", "t2"}], "+", 
                    FractionBox[
                    SuperscriptBox["t2", "2"], "2"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{"5", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{"5", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "\[LessEqual]", "t1", "<", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "<", 
                    RowBox[{"5", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{"1", "+", 
                    RowBox[{"2", " ", "t1"}]}], "<", "t2", "<", 
                    RowBox[{"5", "+", 
                    RowBox[{"2", " ", "t1"}]}]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}]}], ")"}]}], "\[Equal]", "0.3`"}]],
     Annotation[#, 
      Rational[1, 16] (Piecewise[{{12 + 5 $CellContext`t1 + 2 $CellContext`t2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                Less, Rational[1, 2] (4 - 5 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], Less, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                LessEqual, Rational[1, 6] (-8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                LessEqual, Rational[1, 6] (-8 + 3 $CellContext`t1)]]]}, {(
             Rational[1, 4] (2 + 
              Rational[1, 4] (3 $CellContext`t1 - 6 $CellContext`t2))) (12 + 
             5 $CellContext`t1 + 2 $CellContext`t2), 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, LessEqual, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                Less, Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], Less, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 2] (4 - 5 $CellContext`t1)]]]}}, 0] + 
        Piecewise[{{4 (Rational[29, 9] - $CellContext`t2), 
            And[$CellContext`t1 == Rational[10, 9], 
             Inequality[
              Rational[-7, 9], Less, $CellContext`t2, Less, 
              Rational[29, 9]]]}, {16, 
            Or[
             
             And[$CellContext`t1 == Rational[10, 9], $CellContext`t2 == 
              Rational[-7, 9]], 
             And[$CellContext`t1 > Rational[10, 9], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), 
               LessEqual, $CellContext`t2, LessEqual, -3 + 
               2 $CellContext`t1]]]}, {
           4 (1 + 2 $CellContext`t1 - $CellContext`t2), 
            Or[
             And[$CellContext`t1 > Rational[10, 9], 
              
              Inequality[-3 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 
               1 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 1 + 2 $CellContext`t1]]]}}, 
          0] + Piecewise[{{
           Rational[253, 72] + Rational[11, 3] $CellContext`t1 + 
            Rational[29, 12] $CellContext`t2 + (
              3 $CellContext`t1) $CellContext`t2 + 
            Rational[-3, 8] $CellContext`t2^2, 
            And[$CellContext`t1 == Rational[2, 9], 
             Inequality[
              Rational[-11, 9], Less, $CellContext`t2, Less, 
              Rational[13, 9]]]}, {
           Rational[2009, 162] + Rational[98, 9] $CellContext`t1 - 
            5 $CellContext`t2 - (2 $CellContext`t1) $CellContext`t2 + 
            Rational[1, 2] $CellContext`t2^2, 
            And[$CellContext`t1 == Rational[2, 9], 
             Inequality[
              Rational[13, 9], Less, $CellContext`t2, Less, 
              Rational[49, 9]]]}, {
           Rational[15, 2] - 2 $CellContext`t1 - 
            2 $CellContext`t1^2 + $CellContext`t2 + (
              2 $CellContext`t1) $CellContext`t2 + 
            Rational[-1, 2] $CellContext`t2^2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              
              Inequality[-3 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 
               1 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), Less, $CellContext`t2, 
               Less, 1 + 2 $CellContext`t1]]]}, {
           12 + 8 $CellContext`t1 - 4 $CellContext`t2, 
            Or[
             
             And[$CellContext`t1 == Rational[2, 9], $CellContext`t2 == 
              Rational[13, 9]], 
             
             And[$CellContext`t1 >= Rational[10, 9], $CellContext`t2 == 
              1 + 2 $CellContext`t1], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], $CellContext`t2 == 
              1 + 2 $CellContext`t1]]}, {
           Rational[9, 2] + Rational[15, 4] $CellContext`t1 + 
            Rational[25, 32] $CellContext`t1^2 + 
            Rational[3, 2] $CellContext`t2 + (
              Rational[5, 8] $CellContext`t1) $CellContext`t2 + 
            Rational[1, 8] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-14, 9]], $CellContext`t2 == 
              Rational[1, 6] (8 + 3 $CellContext`t1)], 
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                Less, Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, Less, 
               Rational[2, 9]], 
              Inequality[
              1 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 
               Rational[1, 6] (8 + 3 $CellContext`t1)]]]}, {
           4 + Rational[7, 4] $CellContext`t1 + 
            Rational[-39, 32] $CellContext`t1^2 + 
            Rational[5, 2] $CellContext`t2 + (
              Rational[21, 8] $CellContext`t1) $CellContext`t2 + 
            Rational[-3, 8] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, Less, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               LessEqual, 1 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], $CellContext`t2 == 
              Rational[1, 2] (4 - 5 $CellContext`t1)], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 2] (4 - 5 $CellContext`t1)]]]}, {
           Rational[25, 2] + 10 $CellContext`t1 + 2 $CellContext`t1^2 - 
            5 $CellContext`t2 - (2 $CellContext`t1) $CellContext`t2 + 
            Rational[1, 2] $CellContext`t2^2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              1 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 5 + 
               2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 6] (8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, 5 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[-14, 9], LessEqual, $CellContext`t1, Less, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (8 + 3 $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 5 + 2 $CellContext`t1]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              1 + 2 $CellContext`t1, Less, $CellContext`t2, Less, 5 + 
               2 $CellContext`t1]]]}}, 0]) == 0.3, "Tooltip"]& ], 
    TagBox[
     TooltipBox[
      {Hue[0.1421359549995791, 0.6, 0.6], LineBox[CompressedData["
1:eJwNzUVWQgEAAMCPhV3YjdgiKna3WKhwBLe+p9cWu7tmMeuJnpxnz0JBEJxy
QY5LrrjmhlvuuOeBR5545oVX3njng0+++OaHX/4IRCHyyKeAQooIU0wJpZRR
TgWVVFFNDbVEqKOeBhppopkWWmmjnQ466SJKNzF66KWPfgYYZIhh4oyQYJQx
xkkywSRTTDPDLHPMs8AiSyyzwiprrLPBJltsk2KHXfbY54A0hxxxTIYs/6eL
JpE=
        "]]},
      RowBox[{
        RowBox[{
          FractionBox["1", "16"], " ", 
          RowBox[{"(", 
            RowBox[{
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{"2", "+", 
                    RowBox[{
                    FractionBox["1", "21"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "31"}], "+", 
                    RowBox[{"23", " ", "t1"}], "+", 
                    RowBox[{"47", " ", "t2"}]}], ")"}]}]}], ")"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", ">", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "11"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "\[LessEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {"16", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", ">", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[GreaterEqual]", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["62", "3"]}], "\[LessEqual]", "t1", 
                    "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{"t2", "\[GreaterEqual]", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{"11", "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "\[LessEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[GreaterEqual]", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "<", 
                    RowBox[{"-", 
                    FractionBox["62", "3"]}]}], "&&", 
                    RowBox[{"t2", ">", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{"11", "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{"2", "+", 
                    RowBox[{
                    FractionBox["1", "3"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "5"}], "+", 
                    RowBox[{"4", " ", "t1"}], "+", 
                    RowBox[{"7", " ", "t2"}]}], ")"}]}]}], ")"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["62", "3"]}], "\[LessEqual]", "t1", 
                    "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{"11", "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "\[LessEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "<", 
                    RowBox[{"-", 
                    FractionBox["62", "3"]}]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{"11", "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "<", 
                    RowBox[{"-", 
                    FractionBox["62", "3"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{"11", "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> T\
rue], ")"}], "+", 
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{
                    FractionBox["29939", "3000"], "+", 
                    FractionBox[
                    RowBox[{"182", " ", "t1"}], "75"], "+", 
                    FractionBox[
                    RowBox[{"469", " ", "t2"}], "60"], "+", 
                    FractionBox[
                    RowBox[{"6", " ", "t1", " ", "t2"}], "5"], "+", 
                    FractionBox[
                    RowBox[{"57", " ", 
                    SuperscriptBox["t2", "2"]}], "40"]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    RowBox[{"-", 
                    FractionBox["62", "45"]}]}], "&&", 
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["91", "45"]}], "<", "t2", "<", 
                    FractionBox["29", "45"]}]}]}, {
                    RowBox[{
                    FractionBox["1153879", "60750"], "+", 
                    FractionBox[
                    RowBox[{"2972", " ", "t1"}], "675"], "-", 
                    FractionBox[
                    RowBox[{"21", " ", "t2"}], "5"], "-", 
                    FractionBox[
                    RowBox[{"28", " ", "t1", " ", "t2"}], "15"], "-", 
                    FractionBox[
                    RowBox[{"49", " ", 
                    SuperscriptBox["t2", "2"]}], "30"]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    RowBox[{"-", 
                    FractionBox["62", "45"]}]}], "&&", 
                    RowBox[{
                    FractionBox["29", "45"], "<", "t2", "<", 
                    FractionBox["743", "315"]}]}]}, {
                    RowBox[{
                    FractionBox["35", "6"], "-", 
                    FractionBox[
                    RowBox[{"25", " ", "t1"}], "4"], "-", 
                    FractionBox[
                    RowBox[{"125", " ", 
                    SuperscriptBox["t1", "2"]}], "96"], "-", 
                    FractionBox[
                    RowBox[{"5", " ", "t2"}], "2"], "-", 
                    FractionBox[
                    RowBox[{"25", " ", "t1", " ", "t2"}], "24"], "-", 
                    FractionBox[
                    RowBox[{"5", " ", 
                    SuperscriptBox["t2", "2"]}], "24"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["62", "45"]}], "<", "t1", "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["147", "10"], "+", 
                    FractionBox[
                    RowBox[{"28", " ", "t1"}], "5"], "+", 
                    FractionBox[
                    RowBox[{"8", " ", 
                    SuperscriptBox["t1", "2"]}], "15"], "+", 
                    FractionBox[
                    RowBox[{"49", " ", "t2"}], "5"], "+", 
                    FractionBox[
                    RowBox[{"28", " ", "t1", " ", "t2"}], "15"], "+", 
                    FractionBox[
                    RowBox[{"49", " ", 
                    SuperscriptBox["t2", "2"]}], "30"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["182", "45"]}], "\[LessEqual]", "t1", 
                    "\[LessEqual]", 
                    RowBox[{"-", 
                    FractionBox["22", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "21"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "9"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "\[LessEqual]", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "21"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "<", 
                    RowBox[{"-", 
                    FractionBox["182", "45"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "21"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "9"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["36", "5"], "-", 
                    FractionBox[
                    RowBox[{"13", " ", "t1"}], "20"], "-", 
                    FractionBox[
                    RowBox[{"123", " ", 
                    SuperscriptBox["t1", "2"]}], "160"], "+", 
                    FractionBox[
                    RowBox[{"73", " ", "t2"}], "10"], "+", 
                    FractionBox[
                    RowBox[{"33", " ", "t1", " ", "t2"}], "40"], "+", 
                    FractionBox[
                    RowBox[{"57", " ", 
                    SuperscriptBox["t2", "2"]}], "40"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "\[LessEqual]", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["62", "45"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["62", "45"]}], "<", "t1", "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{"12", "+", 
                    FractionBox[
                    RowBox[{"16", " ", "t1"}], "5"], "+", 
                    FractionBox[
                    RowBox[{"28", " ", "t2"}], "5"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    RowBox[{"-", 
                    FractionBox["62", "45"]}]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    FractionBox["29", "45"]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["182", "45"]}], "\[LessEqual]", "t1", 
                    "\[LessEqual]", 
                    RowBox[{"-", 
                    FractionBox["22", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "9"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "\[LessEqual]", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["62", "45"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "<", 
                    RowBox[{"-", 
                    FractionBox["182", "45"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "9"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["319", "30"], "-", 
                    FractionBox[
                    RowBox[{"12", " ", "t1"}], "5"], "-", 
                    FractionBox[
                    RowBox[{"8", " ", 
                    SuperscriptBox["t1", "2"]}], "15"], "-", 
                    FractionBox[
                    RowBox[{"21", " ", "t2"}], "5"], "-", 
                    FractionBox[
                    RowBox[{"28", " ", "t1", " ", "t2"}], "15"], "-", 
                    FractionBox[
                    RowBox[{"49", " ", 
                    SuperscriptBox["t2", "2"]}], "30"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["182", "45"]}], "\[LessEqual]", "t1", 
                    "\[LessEqual]", 
                    RowBox[{"-", 
                    FractionBox["22", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{"11", "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "\[LessEqual]", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{"11", "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["62", "45"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{"11", "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["62", "45"]}], "<", "t1", "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "<", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{"11", "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "<", 
                    RowBox[{"-", 
                    FractionBox["182", "45"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "1"}], "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "7"], " ", 
                    RowBox[{"(", 
                    RowBox[{"11", "-", 
                    RowBox[{"4", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}], "+", 
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{
                    FractionBox["1416060125", "101348982"], "+", 
                    FractionBox[
                    RowBox[{"903325", " ", "t1"}], "181629"], "+", 
                    FractionBox[
                    RowBox[{"2115", " ", "t2"}], "217"], "+", 
                    FractionBox[
                    RowBox[{"1081", " ", "t1", " ", "t2"}], "651"], "+", 
                    FractionBox[
                    RowBox[{"2209", " ", 
                    SuperscriptBox["t2", "2"]}], "1302"]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["70", "279"]}], "&&", 
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["39275", "13113"]}], "<", "t2", "<", 
                    RowBox[{"-", 
                    FractionBox["337", "279"]}]}]}]}, {
                    RowBox[{
                    FractionBox["3733411", "714984"], "+", 
                    FractionBox[
                    RowBox[{"9361", " ", "t1"}], "5766"], "-", 
                    FractionBox[
                    RowBox[{"511", " ", "t2"}], "372"], "-", 
                    FractionBox[
                    RowBox[{"69", " ", "t1", " ", "t2"}], "62"], "-", 
                    FractionBox[
                    RowBox[{"375", " ", 
                    SuperscriptBox["t2", "2"]}], "248"]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["70", "279"]}], "&&", 
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["337", "279"]}], "<", "t2", "<", 
                    FractionBox["383", "279"]}]}]}, {
                    RowBox[{
                    FractionBox["126515965", "14478426"], "+", 
                    FractionBox[
                    RowBox[{"431411", " ", "t1"}], "181629"], "-", 
                    FractionBox[
                    RowBox[{"799", " ", "t2"}], "217"], "-", 
                    FractionBox[
                    RowBox[{"1081", " ", "t1", " ", "t2"}], "651"], "-", 
                    FractionBox[
                    RowBox[{"2209", " ", 
                    SuperscriptBox["t2", "2"]}], "1302"]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["70", "279"]}], "&&", 
                    RowBox[{
                    FractionBox["383", "279"], "\[LessEqual]", "t2", "<", 
                    FractionBox["18757", "13113"]}]}]}, {
                    RowBox[{"12", "+", 
                    FractionBox[
                    RowBox[{"92", " ", "t1"}], "31"], "+", 
                    FractionBox[
                    RowBox[{"188", " ", "t2"}], "31"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["70", "279"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{"-", 
                    FractionBox["337", "279"]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "\[LessEqual]", 
                    "t2", "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "11"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["70", "279"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "\[LessEqual]", 
                    "t2", "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["1825", "186"], "-", 
                    FractionBox[
                    RowBox[{"391", " ", "t1"}], "217"], "-", 
                    FractionBox[
                    RowBox[{"529", " ", 
                    SuperscriptBox["t1", "2"]}], "1302"], "-", 
                    FractionBox[
                    RowBox[{"799", " ", "t2"}], "217"], "-", 
                    FractionBox[
                    RowBox[{"1081", " ", "t1", " ", "t2"}], "651"], "-", 
                    FractionBox[
                    RowBox[{"2209", " ", 
                    SuperscriptBox["t2", "2"]}], "1302"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "11"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["70", "279"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["70", "279"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["6075", "434"], "+", 
                    FractionBox[
                    RowBox[{"1035", " ", "t1"}], "217"], "+", 
                    FractionBox[
                    RowBox[{"529", " ", 
                    SuperscriptBox["t1", "2"]}], "1302"], "+", 
                    FractionBox[
                    RowBox[{"2115", " ", "t2"}], "217"], "+", 
                    FractionBox[
                    RowBox[{"1081", " ", "t1", " ", "t2"}], "651"], "+", 
                    FractionBox[
                    RowBox[{"2209", " ", 
                    SuperscriptBox["t2", "2"]}], "1302"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "135"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "<", "t1", "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "135"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["70", "279"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "135"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["70", "279"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "135"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["93", "14"], "+", 
                    FractionBox[
                    RowBox[{"155", " ", "t1"}], "28"], "+", 
                    FractionBox[
                    RowBox[{"775", " ", 
                    SuperscriptBox["t1", "2"]}], "672"], "+", 
                    FractionBox[
                    RowBox[{"31", " ", "t2"}], "14"], "+", 
                    FractionBox[
                    RowBox[{"155", " ", "t1", " ", "t2"}], "168"], "+", 
                    FractionBox[
                    RowBox[{"31", " ", 
                    SuperscriptBox["t2", "2"]}], "168"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["442", "279"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["442", "279"]}], "\[LessEqual]", "t1", 
                    "\[LessEqual]", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "<", "t1", "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["70", "279"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["144", "31"], "+", 
                    FractionBox[
                    RowBox[{"463", " ", "t1"}], "124"], "+", 
                    FractionBox[
                    RowBox[{"741", " ", 
                    SuperscriptBox["t1", "2"]}], "992"], "-", 
                    FractionBox[
                    RowBox[{"91", " ", "t2"}], "62"], "-", 
                    FractionBox[
                    RowBox[{"183", " ", "t1", " ", "t2"}], "248"], "-", 
                    FractionBox[
                    RowBox[{"375", " ", 
                    SuperscriptBox["t2", "2"]}], "248"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["442", "279"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["442", "279"]}], "\[LessEqual]", "t1", 
                    "\[LessEqual]", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "\[LessEqual]", 
                    "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "<", "t1", "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "\[LessEqual]", 
                    "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["70", "279"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "\[LessEqual]", 
                    "t2", "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["70", "279"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}]}], ")"}]}], "\[Equal]", "0.3`"}]],
     Annotation[#, 
      Rational[1, 16] (
        Piecewise[{{
           4 (2 + Rational[1, 21] (-31 + 23 $CellContext`t1 + 
               47 $CellContext`t2)), 
            Or[
             And[$CellContext`t1 > Rational[10, 9], 
              Inequality[
              Rational[1, 47] (-11 - 23 $CellContext`t1), 
               Less, $CellContext`t2, Less, 
               Rational[1, 47] (73 - 23 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, LessEqual, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 47] (73 - 23 $CellContext`t1)]]]}, {16, 
            Or[
             
             And[$CellContext`t1 > Rational[10, 9], $CellContext`t2 >= 
              Rational[1, 47] (73 - 23 $CellContext`t1)], 
             And[
              Inequality[
               Rational[-62, 3], LessEqual, $CellContext`t1, LessEqual, 
               Rational[2, 9]], $CellContext`t2 >= 
              Rational[1, 7] (11 - 4 $CellContext`t1)], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, LessEqual, 
               Rational[10, 9]], $CellContext`t2 >= 
              Rational[1, 47] (73 - 23 $CellContext`t1)], 
             
             And[$CellContext`t1 < Rational[-62, 3], $CellContext`t2 > 
              Rational[1, 7] (11 - 4 $CellContext`t1)]]}, {
           4 (2 + Rational[1, 3] (-5 + 4 $CellContext`t1 + 
               7 $CellContext`t2)), 
            Or[
             And[
              Inequality[
               Rational[-62, 3], LessEqual, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 7] (-1 - 4 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 7] (11 - 4 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, LessEqual, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 7] (-1 - 4 $CellContext`t1), Less, $CellContext`t2, 
               LessEqual, Rational[1, 2] (4 - 5 $CellContext`t1)]], 
             
             And[$CellContext`t1 < Rational[-62, 3], $CellContext`t2 == 
              Rational[1, 7] (11 - 4 $CellContext`t1)], 
             And[$CellContext`t1 < Rational[-62, 3], 
              Inequality[
              Rational[1, 7] (-1 - 4 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 7] (11 - 4 $CellContext`t1)]]]}}, 0] + 
        Piecewise[{{
           Rational[29939, 3000] + Rational[182, 75] $CellContext`t1 + 
            Rational[469, 60] $CellContext`t2 + (
              Rational[6, 5] $CellContext`t1) $CellContext`t2 + 
            Rational[57, 40] $CellContext`t2^2, 
            And[$CellContext`t1 == Rational[-62, 45], 
             Inequality[
              Rational[-91, 45], Less, $CellContext`t2, Less, 
              Rational[29, 45]]]}, {
           Rational[1153879, 60750] + Rational[2972, 675] $CellContext`t1 + 
            Rational[-21, 5] $CellContext`t2 + (
              Rational[-28, 15] $CellContext`t1) $CellContext`t2 + 
            Rational[-49, 30] $CellContext`t2^2, 
            And[$CellContext`t1 == Rational[-62, 45], 
             Inequality[
              Rational[29, 45], Less, $CellContext`t2, Less, 
              Rational[743, 315]]]}, {
           Rational[35, 6] + Rational[-25, 4] $CellContext`t1 + 
            Rational[-125, 96] $CellContext`t1^2 + 
            Rational[-5, 2] $CellContext`t2 + (
              Rational[-25, 24] $CellContext`t1) $CellContext`t2 + 
            Rational[-5, 24] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-62, 45], Less, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 7] (-1 - 4 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 7] (-1 - 4 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 2] (4 - 5 $CellContext`t1)]]]}, {
           Rational[147, 10] + Rational[28, 5] $CellContext`t1 + 
            Rational[8, 15] $CellContext`t1^2 + 
            Rational[49, 5] $CellContext`t2 + (
              Rational[28, 15] $CellContext`t1) $CellContext`t2 + 
            Rational[49, 30] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-182, 45], LessEqual, $CellContext`t1, LessEqual, 
               Rational[-22, 9]], 
              Inequality[
              Rational[1, 7] (-21 - 4 $CellContext`t1), Less, $CellContext`t2,
                Less, Rational[1, 7] (-9 - 4 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, LessEqual, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 7] (-21 - 4 $CellContext`t1), Less, $CellContext`t2,
                LessEqual, Rational[1, 2] (-12 - 5 $CellContext`t1)]], 
             And[$CellContext`t1 < Rational[-182, 45], 
              Inequality[
              Rational[1, 7] (-21 - 4 $CellContext`t1), Less, $CellContext`t2,
                LessEqual, Rational[1, 7] (-9 - 4 $CellContext`t1)]]]}, {
           Rational[36, 5] + Rational[-13, 20] $CellContext`t1 + 
            Rational[-123, 160] $CellContext`t1^2 + 
            Rational[73, 10] $CellContext`t2 + (
              Rational[33, 40] $CellContext`t1) $CellContext`t2 + 
            Rational[57, 40] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, LessEqual, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                Less, Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], Less, $CellContext`t1, Less, 
               Rational[-62, 45]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-62, 45], Less, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               LessEqual, Rational[1, 7] (-1 - 4 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               LessEqual, Rational[1, 7] (-1 - 4 $CellContext`t1)]]]}, {
           12 + Rational[16, 5] $CellContext`t1 + 
            Rational[28, 5] $CellContext`t2, 
            Or[
             
             And[$CellContext`t1 == Rational[-62, 45], $CellContext`t2 == 
              Rational[29, 45]], 
             And[
              Inequality[
               Rational[-182, 45], LessEqual, $CellContext`t1, LessEqual, 
               Rational[-22, 9]], 
              Inequality[
              Rational[1, 7] (-9 - 4 $CellContext`t1), 
               LessEqual, $CellContext`t2, LessEqual, 
               Rational[1, 7] (-1 - 4 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, LessEqual, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 6] (8 + 3 $CellContext`t1), 
               LessEqual, $CellContext`t2, LessEqual, 
               Rational[1, 7] (-1 - 4 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], Less, $CellContext`t1, Less, 
               Rational[-62, 45]], 
              Inequality[
              Rational[1, 6] (8 + 3 $CellContext`t1), 
               LessEqual, $CellContext`t2, LessEqual, 
               Rational[1, 7] (-1 - 4 $CellContext`t1)]], 
             And[$CellContext`t1 < Rational[-182, 45], 
              Inequality[
              Rational[1, 7] (-9 - 4 $CellContext`t1), Less, $CellContext`t2, 
               LessEqual, Rational[1, 7] (-1 - 4 $CellContext`t1)]]]}, {
           Rational[319, 30] + Rational[-12, 5] $CellContext`t1 + 
            Rational[-8, 15] $CellContext`t1^2 + 
            Rational[-21, 5] $CellContext`t2 + (
              Rational[-28, 15] $CellContext`t1) $CellContext`t2 + 
            Rational[-49, 30] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-182, 45], LessEqual, $CellContext`t1, LessEqual, 
               Rational[-22, 9]], 
              Inequality[
              Rational[1, 7] (-1 - 4 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 7] (11 - 4 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, LessEqual, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 7] (-1 - 4 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 7] (11 - 4 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], Less, $CellContext`t1, Less, 
               Rational[-62, 45]], 
              Inequality[
              Rational[1, 7] (-1 - 4 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 7] (11 - 4 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-62, 45], Less, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (8 + 3 $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 
               Rational[1, 7] (11 - 4 $CellContext`t1)]], 
             And[$CellContext`t1 < Rational[-182, 45], 
              Inequality[
              Rational[1, 7] (-1 - 4 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 7] (11 - 4 $CellContext`t1)]]]}}, 0] + 
        Piecewise[{{
           Rational[1416060125, 101348982] + 
            Rational[903325, 181629] $CellContext`t1 + 
            Rational[2115, 217] $CellContext`t2 + (
              Rational[1081, 651] $CellContext`t1) $CellContext`t2 + 
            Rational[2209, 1302] $CellContext`t2^2, 
            And[$CellContext`t1 == Rational[70, 279], 
             Inequality[
              Rational[-39275, 13113], Less, $CellContext`t2, Less, 
              Rational[-337, 279]]]}, {
           Rational[3733411, 714984] + Rational[9361, 5766] $CellContext`t1 + 
            Rational[-511, 372] $CellContext`t2 + (
              Rational[-69, 62] $CellContext`t1) $CellContext`t2 + 
            Rational[-375, 248] $CellContext`t2^2, 
            And[$CellContext`t1 == Rational[70, 279], 
             Inequality[
              Rational[-337, 279], Less, $CellContext`t2, Less, 
              Rational[383, 279]]]}, {
           Rational[126515965, 14478426] + 
            Rational[431411, 181629] $CellContext`t1 + 
            Rational[-799, 217] $CellContext`t2 + (
              Rational[-1081, 651] $CellContext`t1) $CellContext`t2 + 
            Rational[-2209, 1302] $CellContext`t2^2, 
            And[$CellContext`t1 == Rational[70, 279], 
             Inequality[
              Rational[383, 279], LessEqual, $CellContext`t2, Less, 
              Rational[18757, 13113]]]}, {
           12 + Rational[92, 31] $CellContext`t1 + 
            Rational[188, 31] $CellContext`t2, 
            Or[
             
             And[$CellContext`t1 == Rational[70, 279], $CellContext`t2 == 
              Rational[-337, 279]], 
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              Rational[1, 47] (-51 - 23 $CellContext`t1), 
               LessEqual, $CellContext`t2, LessEqual, 
               Rational[1, 47] (-11 - 23 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[70, 279], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 47] (-51 - 23 $CellContext`t1), 
               LessEqual, $CellContext`t2, LessEqual, 
               Rational[1, 6] (-8 + 3 $CellContext`t1)]]]}, {
           Rational[1825, 186] + Rational[-391, 217] $CellContext`t1 + 
            Rational[-529, 1302] $CellContext`t1^2 + 
            Rational[-799, 217] $CellContext`t2 + (
              Rational[-1081, 651] $CellContext`t1) $CellContext`t2 + 
            Rational[-2209, 1302] $CellContext`t2^2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              Rational[1, 47] (-11 - 23 $CellContext`t1), 
               Less, $CellContext`t2, Less, 
               Rational[1, 47] (73 - 23 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[70, 279]], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 47] (73 - 23 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[70, 279], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 
               Rational[1, 47] (73 - 23 $CellContext`t1)]]]}, {
           Rational[6075, 434] + Rational[1035, 217] $CellContext`t1 + 
            Rational[529, 1302] $CellContext`t1^2 + 
            Rational[2115, 217] $CellContext`t2 + (
              Rational[1081, 651] $CellContext`t1) $CellContext`t2 + 
            Rational[2209, 1302] $CellContext`t2^2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              Rational[1, 47] (-135 - 23 $CellContext`t1), 
               Less, $CellContext`t2, Less, 
               Rational[1, 47] (-51 - 23 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], Less, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 47] (-135 - 23 $CellContext`t1), 
               Less, $CellContext`t2, LessEqual, 
               Rational[1, 6] (-8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[70, 279]], 
              Inequality[
              Rational[1, 47] (-135 - 23 $CellContext`t1), 
               Less, $CellContext`t2, LessEqual, 
               Rational[1, 6] (-8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[70, 279], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 47] (-135 - 23 $CellContext`t1), 
               Less, $CellContext`t2, Less, 
               Rational[1, 47] (-51 - 23 $CellContext`t1)]]]}, {
           Rational[93, 14] + Rational[155, 28] $CellContext`t1 + 
            Rational[775, 672] $CellContext`t1^2 + 
            Rational[31, 14] $CellContext`t2 + (
              Rational[155, 168] $CellContext`t1) $CellContext`t2 + 
            Rational[31, 168] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-442, 279]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                LessEqual, Rational[1, 47] (-51 - 23 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-442, 279], LessEqual, $CellContext`t1, LessEqual, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                Less, Rational[1, 47] (-51 - 23 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], Less, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 47] (-51 - 23 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[70, 279]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 47] (-51 - 23 $CellContext`t1)]]]}, {
           Rational[144, 31] + Rational[463, 124] $CellContext`t1 + 
            Rational[741, 992] $CellContext`t1^2 + 
            Rational[-91, 62] $CellContext`t2 + (
              Rational[-183, 248] $CellContext`t1) $CellContext`t2 + 
            Rational[-375, 248] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-442, 279]], 
              Inequality[
              Rational[1, 47] (-51 - 23 $CellContext`t1), 
               Less, $CellContext`t2, Less, 
               Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-442, 279], LessEqual, $CellContext`t1, LessEqual, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 47] (-51 - 23 $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 
               Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], Less, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 47] (-51 - 23 $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 
               Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[70, 279]], 
              Inequality[
              Rational[1, 47] (-51 - 23 $CellContext`t1), 
               LessEqual, $CellContext`t2, LessEqual, 
               Rational[1, 2] (4 - 5 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[70, 279], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 2] (4 - 5 $CellContext`t1)]]]}}, 0]) == 0.3, 
      "Tooltip"]& ], 
    TagBox[
     TooltipBox[
      {Hue[0.37820393249936934`, 0.6, 0.6], LineBox[CompressedData["
1:eJwVzec6FQAAgOHTpbglyYgGETJOKQ2iJCGz4ljRMiujPSVZRaTIHllxGV4/
3uf5/n1hCcHwzEOBQCDEYRHBESKJIpoYjhJLHMc4zglOEk8Cp0gkidMkk0Iq
Z0gjnQwOpkHOco4sznOBbC5yictcIYdcrpJHPte4TgE3KOQmRdyimBJKuU0Z
5VRQSRXV3OEu96ihlhB11NNAI03cp5kWHvCQRzzmCa200U4HnXTxlGc8p5se
eunjBS95xWve8JZ3vOcDH/nEZ/r5wgBfGeQbQwwzwihjfOcH40zwk0mm+MU0
v/nDDLP8ZY55FlhkiWVWWGWNdf6xwSZbbLPDf3bZYx/bzl8p
        "]]},
      RowBox[{
        RowBox[{
          FractionBox["1", "16"], " ", 
          RowBox[{"(", 
            RowBox[{
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{"12", "+", 
                    RowBox[{"5", " ", "t1"}], "+", 
                    RowBox[{"2", " ", "t2"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"2", "+", 
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "3"}], " ", "t1"}], "+", 
                    RowBox[{"6", " ", "t2"}]}], ")"}]}]}], ")"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "\[LessEqual]", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "<", "t1", "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{"12", "+", 
                    RowBox[{"5", " ", "t1"}], "+", 
                    RowBox[{"2", " ", "t2"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "\[LessEqual]", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "<", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "<", "t1", "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "<", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[LessEqual]", 
                    RowBox[{"-", 
                    FractionBox["22", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}], "+", 
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{"2", "+", 
                    RowBox[{
                    FractionBox["1", "21"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "31"}], "+", 
                    RowBox[{"23", " ", "t1"}], "+", 
                    RowBox[{"47", " ", "t2"}]}], ")"}]}]}], ")"}]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "11"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {"16", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[GreaterEqual]", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{"t2", "\[GreaterEqual]", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{"t2", "\[GreaterEqual]", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}], "+", 
              RowBox[{"(", 
                TagBox[
                 GridBox[{{"\[Piecewise]", 
                    GridBox[{{
                    RowBox[{
                    FractionBox["1416060125", "101348982"], "+", 
                    FractionBox[
                    RowBox[{"903325", " ", "t1"}], "181629"], "+", 
                    FractionBox[
                    RowBox[{"2115", " ", "t2"}], "217"], "+", 
                    FractionBox[
                    RowBox[{"1081", " ", "t1", " ", "t2"}], "651"], "+", 
                    FractionBox[
                    RowBox[{"2209", " ", 
                    SuperscriptBox["t2", "2"]}], "1302"]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["70", "279"]}], "&&", 
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["39275", "13113"]}], "<", "t2", "<", 
                    RowBox[{"-", 
                    FractionBox["337", "279"]}]}]}]}, {
                    RowBox[{
                    FractionBox["3733411", "714984"], "+", 
                    FractionBox[
                    RowBox[{"9361", " ", "t1"}], "5766"], "-", 
                    FractionBox[
                    RowBox[{"511", " ", "t2"}], "372"], "-", 
                    FractionBox[
                    RowBox[{"69", " ", "t1", " ", "t2"}], "62"], "-", 
                    FractionBox[
                    RowBox[{"375", " ", 
                    SuperscriptBox["t2", "2"]}], "248"]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["70", "279"]}], "&&", 
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["337", "279"]}], "<", "t2", "<", 
                    FractionBox["383", "279"]}]}]}, {
                    RowBox[{
                    FractionBox["126515965", "14478426"], "+", 
                    FractionBox[
                    RowBox[{"431411", " ", "t1"}], "181629"], "-", 
                    FractionBox[
                    RowBox[{"799", " ", "t2"}], "217"], "-", 
                    FractionBox[
                    RowBox[{"1081", " ", "t1", " ", "t2"}], "651"], "-", 
                    FractionBox[
                    RowBox[{"2209", " ", 
                    SuperscriptBox["t2", "2"]}], "1302"]}], 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["70", "279"]}], "&&", 
                    RowBox[{
                    FractionBox["383", "279"], "\[LessEqual]", "t2", "<", 
                    FractionBox["18757", "13113"]}]}]}, {
                    RowBox[{"12", "+", 
                    FractionBox[
                    RowBox[{"92", " ", "t1"}], "31"], "+", 
                    FractionBox[
                    RowBox[{"188", " ", "t2"}], "31"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[Equal]", 
                    FractionBox["70", "279"]}], "&&", 
                    RowBox[{"t2", "\[Equal]", 
                    RowBox[{"-", 
                    FractionBox["337", "279"]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "\[LessEqual]", 
                    "t2", "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "11"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["70", "279"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "\[LessEqual]", 
                    "t2", "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["1825", "186"], "-", 
                    FractionBox[
                    RowBox[{"391", " ", "t1"}], "217"], "-", 
                    FractionBox[
                    RowBox[{"529", " ", 
                    SuperscriptBox["t1", "2"]}], "1302"], "-", 
                    FractionBox[
                    RowBox[{"799", " ", "t2"}], "217"], "-", 
                    FractionBox[
                    RowBox[{"1081", " ", "t1", " ", "t2"}], "651"], "-", 
                    FractionBox[
                    RowBox[{"2209", " ", 
                    SuperscriptBox["t2", "2"]}], "1302"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "11"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["70", "279"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["70", "279"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "\[LessEqual]", "t2",
                     "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["6075", "434"], "+", 
                    FractionBox[
                    RowBox[{"1035", " ", "t1"}], "217"], "+", 
                    FractionBox[
                    RowBox[{"529", " ", 
                    SuperscriptBox["t1", "2"]}], "1302"], "+", 
                    FractionBox[
                    RowBox[{"2115", " ", "t2"}], "217"], "+", 
                    FractionBox[
                    RowBox[{"1081", " ", "t1", " ", "t2"}], "651"], "+", 
                    FractionBox[
                    RowBox[{"2209", " ", 
                    SuperscriptBox["t2", "2"]}], "1302"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"t1", "\[GreaterEqual]", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "135"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "<", "t1", "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "135"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["70", "279"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "135"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["70", "279"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "135"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["93", "14"], "+", 
                    FractionBox[
                    RowBox[{"155", " ", "t1"}], "28"], "+", 
                    FractionBox[
                    RowBox[{"775", " ", 
                    SuperscriptBox["t1", "2"]}], "672"], "+", 
                    FractionBox[
                    RowBox[{"31", " ", "t2"}], "14"], "+", 
                    FractionBox[
                    RowBox[{"155", " ", "t1", " ", "t2"}], "168"], "+", 
                    FractionBox[
                    RowBox[{"31", " ", 
                    SuperscriptBox["t2", "2"]}], "168"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["442", "279"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", 
                    "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["442", "279"]}], "\[LessEqual]", "t1", 
                    "\[LessEqual]", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "12"}], "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "<", "t1", "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["70", "279"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {
                    RowBox[{
                    FractionBox["144", "31"], "+", 
                    FractionBox[
                    RowBox[{"463", " ", "t1"}], "124"], "+", 
                    FractionBox[
                    RowBox[{"741", " ", 
                    SuperscriptBox["t1", "2"]}], "992"], "-", 
                    FractionBox[
                    RowBox[{"91", " ", "t2"}], "62"], "-", 
                    FractionBox[
                    RowBox[{"183", " ", "t1", " ", "t2"}], "248"], "-", 
                    FractionBox[
                    RowBox[{"375", " ", 
                    SuperscriptBox["t2", "2"]}], "248"]}], 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["22", "9"]}], "<", "t1", "<", 
                    RowBox[{"-", 
                    FractionBox["442", "279"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["442", "279"]}], "\[LessEqual]", "t1", 
                    "\[LessEqual]", 
                    RowBox[{"-", 
                    FractionBox["14", "9"]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "\[LessEqual]", 
                    "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["14", "9"]}], "<", "t1", "\[LessEqual]", 
                    FractionBox["2", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "\[LessEqual]", 
                    "t2", "<", 
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{"8", "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["2", "9"], "<", "t1", "<", 
                    FractionBox["70", "279"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "47"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "51"}], "-", 
                    RowBox[{"23", " ", "t1"}]}], ")"}]}], "\[LessEqual]", 
                    "t2", "\[LessEqual]", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}], "||", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["70", "279"], "<", "t1", "<", 
                    FractionBox["10", "9"]}], "&&", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "8"}], "+", 
                    RowBox[{"3", " ", "t1"}]}], ")"}]}], "<", "t2", "<", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"4", "-", 
                    RowBox[{"5", " ", "t1"}]}], ")"}]}]}]}], ")"}]}]}, {"0", 
                    TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
                    ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, 
                    ColumnWidths -> Automatic, 
                    AllowedDimensions -> {2, Automatic}, Selectable -> True, 
                    Editable -> True]}}, ColumnAlignments -> {Left}, 
                  ColumnSpacings -> 0.5, ColumnWidths -> Automatic], 
                 "Piecewise", SyntaxForm -> Equal, SelectWithContents -> True,
                  Selectable -> False, Editable -> False, DeleteWithContents -> 
                 True], ")"}]}], ")"}]}], "\[Equal]", "0.3`"}]],
     Annotation[#, 
      Rational[1, 16] (
        Piecewise[{{(
             Rational[1, 4] (12 + 5 $CellContext`t1 + 2 $CellContext`t2)) (2 + 
             Rational[1, 4] ((-3) $CellContext`t1 + 6 $CellContext`t2)), 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, LessEqual, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                Less, Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], Less, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 2] (4 - 5 $CellContext`t1)]]]}, {
           12 + 5 $CellContext`t1 + 2 $CellContext`t2, 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, LessEqual, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 6] (8 + 3 $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 
               Rational[1, 2] (4 - 5 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], Less, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (8 + 3 $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 
               Rational[1, 2] (4 - 5 $CellContext`t1)]], 
             And[$CellContext`t1 <= Rational[-22, 9], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                Less, Rational[1, 2] (4 - 5 $CellContext`t1)]]]}}, 0] + 
        Piecewise[{{
           4 (2 + Rational[1, 21] (-31 + 23 $CellContext`t1 + 
               47 $CellContext`t2)), 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              Rational[1, 47] (-11 - 23 $CellContext`t1), 
               Less, $CellContext`t2, Less, 
               Rational[1, 47] (73 - 23 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 
               Rational[1, 47] (73 - 23 $CellContext`t1)]]]}, {16, 
            Or[
             
             And[$CellContext`t1 >= Rational[10, 9], $CellContext`t2 >= 
              Rational[1, 47] (73 - 23 $CellContext`t1)], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[10, 9]], $CellContext`t2 >= 
              Rational[1, 47] (73 - 23 $CellContext`t1)], 
             
             And[$CellContext`t1 <= Rational[2, 9], $CellContext`t2 >= 
              Rational[1, 2] (4 - 5 $CellContext`t1)]]}}, 0] + 
        Piecewise[{{
           Rational[1416060125, 101348982] + 
            Rational[903325, 181629] $CellContext`t1 + 
            Rational[2115, 217] $CellContext`t2 + (
              Rational[1081, 651] $CellContext`t1) $CellContext`t2 + 
            Rational[2209, 1302] $CellContext`t2^2, 
            And[$CellContext`t1 == Rational[70, 279], 
             Inequality[
              Rational[-39275, 13113], Less, $CellContext`t2, Less, 
              Rational[-337, 279]]]}, {
           Rational[3733411, 714984] + Rational[9361, 5766] $CellContext`t1 + 
            Rational[-511, 372] $CellContext`t2 + (
              Rational[-69, 62] $CellContext`t1) $CellContext`t2 + 
            Rational[-375, 248] $CellContext`t2^2, 
            And[$CellContext`t1 == Rational[70, 279], 
             Inequality[
              Rational[-337, 279], Less, $CellContext`t2, Less, 
              Rational[383, 279]]]}, {
           Rational[126515965, 14478426] + 
            Rational[431411, 181629] $CellContext`t1 + 
            Rational[-799, 217] $CellContext`t2 + (
              Rational[-1081, 651] $CellContext`t1) $CellContext`t2 + 
            Rational[-2209, 1302] $CellContext`t2^2, 
            And[$CellContext`t1 == Rational[70, 279], 
             Inequality[
              Rational[383, 279], LessEqual, $CellContext`t2, Less, 
              Rational[18757, 13113]]]}, {
           12 + Rational[92, 31] $CellContext`t1 + 
            Rational[188, 31] $CellContext`t2, 
            Or[
             
             And[$CellContext`t1 == Rational[70, 279], $CellContext`t2 == 
              Rational[-337, 279]], 
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              Rational[1, 47] (-51 - 23 $CellContext`t1), 
               LessEqual, $CellContext`t2, LessEqual, 
               Rational[1, 47] (-11 - 23 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[70, 279], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 47] (-51 - 23 $CellContext`t1), 
               LessEqual, $CellContext`t2, LessEqual, 
               Rational[1, 6] (-8 + 3 $CellContext`t1)]]]}, {
           Rational[1825, 186] + Rational[-391, 217] $CellContext`t1 + 
            Rational[-529, 1302] $CellContext`t1^2 + 
            Rational[-799, 217] $CellContext`t2 + (
              Rational[-1081, 651] $CellContext`t1) $CellContext`t2 + 
            Rational[-2209, 1302] $CellContext`t2^2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              Rational[1, 47] (-11 - 23 $CellContext`t1), 
               Less, $CellContext`t2, Less, 
               Rational[1, 47] (73 - 23 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[70, 279]], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 47] (73 - 23 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[70, 279], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 2] (4 - 5 $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 
               Rational[1, 47] (73 - 23 $CellContext`t1)]]]}, {
           Rational[6075, 434] + Rational[1035, 217] $CellContext`t1 + 
            Rational[529, 1302] $CellContext`t1^2 + 
            Rational[2115, 217] $CellContext`t2 + (
              Rational[1081, 651] $CellContext`t1) $CellContext`t2 + 
            Rational[2209, 1302] $CellContext`t2^2, 
            Or[
             And[$CellContext`t1 >= Rational[10, 9], 
              Inequality[
              Rational[1, 47] (-135 - 23 $CellContext`t1), 
               Less, $CellContext`t2, Less, 
               Rational[1, 47] (-51 - 23 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], Less, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 47] (-135 - 23 $CellContext`t1), 
               Less, $CellContext`t2, LessEqual, 
               Rational[1, 6] (-8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[70, 279]], 
              Inequality[
              Rational[1, 47] (-135 - 23 $CellContext`t1), 
               Less, $CellContext`t2, LessEqual, 
               Rational[1, 6] (-8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[70, 279], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 47] (-135 - 23 $CellContext`t1), 
               Less, $CellContext`t2, Less, 
               Rational[1, 47] (-51 - 23 $CellContext`t1)]]]}, {
           Rational[93, 14] + Rational[155, 28] $CellContext`t1 + 
            Rational[775, 672] $CellContext`t1^2 + 
            Rational[31, 14] $CellContext`t2 + (
              Rational[155, 168] $CellContext`t1) $CellContext`t2 + 
            Rational[31, 168] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-442, 279]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                LessEqual, Rational[1, 47] (-51 - 23 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-442, 279], LessEqual, $CellContext`t1, LessEqual, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 2] (-12 - 5 $CellContext`t1), Less, $CellContext`t2,
                Less, Rational[1, 47] (-51 - 23 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], Less, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 47] (-51 - 23 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[70, 279]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 47] (-51 - 23 $CellContext`t1)]]]}, {
           Rational[144, 31] + Rational[463, 124] $CellContext`t1 + 
            Rational[741, 992] $CellContext`t1^2 + 
            Rational[-91, 62] $CellContext`t2 + (
              Rational[-183, 248] $CellContext`t1) $CellContext`t2 + 
            Rational[-375, 248] $CellContext`t2^2, 
            Or[
             And[
              Inequality[
               Rational[-22, 9], Less, $CellContext`t1, Less, 
               Rational[-442, 279]], 
              Inequality[
              Rational[1, 47] (-51 - 23 $CellContext`t1), 
               Less, $CellContext`t2, Less, 
               Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-442, 279], LessEqual, $CellContext`t1, LessEqual, 
               Rational[-14, 9]], 
              Inequality[
              Rational[1, 47] (-51 - 23 $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 
               Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[-14, 9], Less, $CellContext`t1, LessEqual, 
               Rational[2, 9]], 
              Inequality[
              Rational[1, 47] (-51 - 23 $CellContext`t1), 
               LessEqual, $CellContext`t2, Less, 
               Rational[1, 6] (8 + 3 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[2, 9], Less, $CellContext`t1, Less, 
               Rational[70, 279]], 
              Inequality[
              Rational[1, 47] (-51 - 23 $CellContext`t1), 
               LessEqual, $CellContext`t2, LessEqual, 
               Rational[1, 2] (4 - 5 $CellContext`t1)]], 
             And[
              Inequality[
               Rational[70, 279], Less, $CellContext`t1, Less, 
               Rational[10, 9]], 
              Inequality[
              Rational[1, 6] (-8 + 3 $CellContext`t1), Less, $CellContext`t2, 
               Less, Rational[1, 2] (4 - 5 $CellContext`t1)]]]}}, 0]) == 0.3, 
      "Tooltip"]& ]}],
  AspectRatio->1,
  Frame->True,
  Method->{},
  PlotRange->{{-5, 5}, {-5, 5}},
  PlotRangeClipping->True,
  PlotRangePadding->{
    Scaled[0.02], 
    Scaled[0.02]}]], "Output", "PluginEmbeddedContent"]
}, Open  ]]
},
WindowSize->{730.9833333333333, 3402.62},
Visible->True,
AuthoredSize->{730.9833333333333, 3402.62},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"9.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (January 25, \
2013)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1463, 33, 1713, 50, 150, "Input",
 InitializationCell->True],
Cell[3179, 85, 3376, 107, 307, "Text"],
Cell[6558, 194, 1486, 47, 73, "Input",
 InitializationCell->True],
Cell[8047, 243, 99, 0, 16, "Text"],
Cell[CellGroupData[{
Cell[8171, 247, 736, 23, 31, "Input"],
Cell[8910, 272, 108225, 1745, 252, "Output"]
}, Open  ]],
Cell[117150, 2020, 180, 3, 35, "Text"],
Cell[CellGroupData[{
Cell[117355, 2027, 3114, 90, 201, "Input"],
Cell[120472, 2119, 20213, 428, 327, "Output"]
}, Open  ]],
Cell[140700, 2550, 117, 2, 16, "Text"],
Cell[CellGroupData[{
Cell[140842, 2556, 1002, 31, 48, "Input"],
Cell[141847, 2589, 78958, 1768, 359, "Output"]
}, Open  ]],
Cell[220820, 4360, 1115, 29, 135, "Text"],
Cell[221938, 4391, 5151, 161, 284, "Input",
 InitializationCell->True],
Cell[227092, 4554, 1429, 52, 122, "Text"],
Cell[228524, 4608, 1149, 37, 73, "Input",
 InitializationCell->True],
Cell[229676, 4647, 169, 3, 16, "Text"],
Cell[CellGroupData[{
Cell[229870, 4654, 3705, 106, 133, "Input"],
Cell[233578, 4762, 45599, 973, 327, "Output"]
}, Open  ]],
Cell[279192, 5738, 346, 6, 54, "Text"],
Cell[CellGroupData[{
Cell[279563, 5748, 1580, 47, 65, "Input"],
Cell[281146, 5797, 194932, 4368, 359, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature wuD2X8Z#DngxaCKVrGQnrHhn *)
