%dll
uedai_userdef/commands.hsp
%group
ユーザ定義コマンド

%index
elsif
else : if
%sample
	if ( 条件1 ) {
		//条件1が真
	} elsif ( 条件2 ) {
		//条件1が偽、かつ条件2が真
	} elsif ( 条件3 ) {
		//条件1,2が偽、かつ条件3が真
	} else {
		//条件1,2,3が偽
	}
	
%href
if
else



%index
mousex2
マウスカーソルのX座標
%inst
mousex と同様だが、マウスがウィンドウの外にあっても正しく計算される。



%index
mousey2
マウスカーソルのY座標
%inst
mousey と同様だが、マウスがウィンドウの外にあっても正しく計算される。



%index
dir_exe2
実行ファイルのディレクトリ
%inst
デバッグ時は、実行されたスクリプトファイル(.hsp)があるフォルダのパス。
リリース時は、実行ファイル(.exe)があるフォルダのパス。(dir_exe と同じ)



%index
delfile
ファイルを削除する
%prm
path
%inst
delete 命令と同じ。



%index
ignore
式を実行する
%prm
(ignored)
ignored: 式
%inst
式を計算する。その値は無視される。



%index
in_interval
数値が半区間内にあるか？
%prm
(x, first, last)
x: 整数値
first: 区間の始点 (端点を含む)
last: 区間の終点 (端点は含まれない)
%inst
(first <= x < last) の略記。



%index
in_rect
点が矩形上にあるか？
%prm
(px, py, x1, y1, x2, y2)
px, py: 点の座標
x1, y1: 矩形の左上座標 (端点を含む)
x2, y2: 矩形の左下座標 (端点を含む)
%inst
矩形の境界はすべて含まれることに注意。



%index
major_s
2つの文字列のうち大きいほう
%prm
(lhs, rhs)
return: lhs, rhs のうち大きいほう
%href
minor_s
major_d
major_i



%index
minor_s
2つの文字列のうち小さいほう
%prm
(lhs, rhs)
return: lhs, rhs のうち小さいほう
%href
major_s
minor_d
minor_i



%index
major_d
2つの小数値のうち大きいほう
%prm
(lhs, rhs)
return: lhs, rhs のうち大きいほう
%href
minor_d
major_s
major_i



%index
minor_d
2つの小数値のうち小さいほう
%prm
(lhs, rhs)
return: lhs, rhs のうち小さいほう
%href
major_d
minor_s
minor_i



%index
major_i
2つの整数のうち大きいほう
%prm
(lhs, rhs)
return: lhs, rhs のうち大きいほう
%href
minor_i
major_s
major_d



%index
minor_i
2つの整数値のうち小さいほう
%prm
(lhs, rhs)
return: lhs, rhs のうち小さいほう
%href
major_i
minor_s
minor_d


%index
cond_s
正格条件演算子 (str)
%prm
(cond, x, y)
%inst
cond_i を参照。



%index
cond_d
正格条件演算子 (double)
%prm
(cond, x, y)
%inst
cond_i を参照。



%index
cond_i
正格条件演算子 (int)
%prm
(cond, x, y)
return: cond が真なら x、偽なら y
%inst
if の式バージョン。

正格とは、cond の値に関係なく、式 x, y の両方が計算されるということ。
%href
cond_s
cond_d
if



%index
ref_expr_tmpl_1
参照式の定形 (1引数)
%prm
(f, p1)
f: 参照式の設定を行う関数
p1: f の第1引数
%inst
変数を返す関数を定義するためのテンプレ。
実際には、「ref(f(p1, ref))」に展開されるマクロ。ただし ref は一意な識別子で表される変数。

関数 f のなかで変数 ref を設定することにより、式 ref_expr_templ_1(...) は擬似的に変数を返却するものとみなせる。
具体的な使いかたは ref_xs 関数の定義などを参照。

f の引数の数を増やした変種に、ref_expr_tmpl_2, ..., ref_expr_tmpl_5 がある。引数 ref は、常に f の第2引数に渡される。



%index
ref_expr_tmpl_2
参照式の定形 (2引数)
%prm
(f, p1, p2)
%inst
「ref(f(p1, ref, p2))」に展開されるマクロ。ref_expr_tmpl_1 を参照。



%index
ref_expr_tmpl_3
参照式の定形 (3引数)
%inst
ref_expr_tmpl_1 を参照。
%index
ref_expr_tmpl_4
参照式の定形 (4引数)
%inst
ref_expr_tmpl_1 を参照。
%index
ref_expr_tmpl_5
参照式の定形 (5引数)
%inst
ref_expr_tmpl_1 を参照。



%index
RGB
輝度からカラーコードを作る
%prm
(r, g, b)
r: 赤の輝度
g: 緑の輝度
b: 青の輝度
return: 指定された色のCOLORREF値(int)
%inst
COLORREF型の値を返す。
%href
color32
ginfo_rgb



%index
color32
カラーコードで色を指定する
%prm
cref
cref: COLORREF値
%inst
色 cref で color 命令を実行する。



%index
ginfo_rgb
現在設定されているカラーコード
%prm

return: RGB(ginfo_r, ginfo_g, ginfo_b)



%index
dir_exists
ディレクトリが存在するか？
%prm
(dir)
dir: ディレクトリへのパス
return: dir が存在すれば true、しなければ false
%href
dirlist



%index
mkdir_unless_exists
ディレクトリを作る (既存なら何もしない)
%prm
dir
dir: 作成するディレクトリ
%inst
mkdir 命令と同様。ただし、dir がすでにある場合は何も起きない。
%href
dir_exists
