%dll
uedai_userdef/commands.hsp
%group
���[�U��`�R�}���h

%index
elsif
else : if
%sample
	if ( ����1 ) {
		//����1���^
	} elsif ( ����2 ) {
		//����1���U�A������2���^
	} elsif ( ����3 ) {
		//����1,2���U�A������3���^
	} else {
		//����1,2,3���U
	}
	
%href
if
else



%index
mousex2
�}�E�X�J�[�\����X���W
%inst
mousex �Ɠ��l�����A�}�E�X���E�B���h�E�̊O�ɂ����Ă��������v�Z�����B



%index
mousey2
�}�E�X�J�[�\����Y���W
%inst
mousey �Ɠ��l�����A�}�E�X���E�B���h�E�̊O�ɂ����Ă��������v�Z�����B



%index
dir_exe2
���s�t�@�C���̃f�B���N�g��
%inst
�f�o�b�O���́A���s���ꂽ�X�N���v�g�t�@�C��(.hsp)������t�H���_�̃p�X�B
�����[�X���́A���s�t�@�C��(.exe)������t�H���_�̃p�X�B(dir_exe �Ɠ���)



%index
delfile
�t�@�C�����폜����
%prm
path
%inst
delete ���߂Ɠ����B



%index
ignore
�������s����
%prm
(ignored)
ignored: ��
%inst
�����v�Z����B���̒l�͖��������B



%index
in_interval
���l������ԓ��ɂ��邩�H
%prm
(x, first, last)
x: �����l
first: ��Ԃ̎n�_ (�[�_���܂�)
last: ��Ԃ̏I�_ (�[�_�͊܂܂�Ȃ�)
%inst
(first <= x < last) �̗��L�B



%index
in_rect
�_����`��ɂ��邩�H
%prm
(px, py, x1, y1, x2, y2)
px, py: �_�̍��W
x1, y1: ��`�̍�����W (�[�_���܂�)
x2, y2: ��`�̍������W (�[�_���܂�)
%inst
��`�̋��E�͂��ׂĊ܂܂�邱�Ƃɒ��ӁB



%index
compare_v
�l�̏�����r
%prm
(lhs, rhs)
var lhs: ���ӂ̒l
var rhs: �E�ӂ̒l
return: ��r�l
%href
��r�l�Ƃ́A���̂悤�ȈӖ����������l�ł���B
�� ���u����(lhs)�̂ق����E��(rhs)��菬�����v
0  ���u���ӂ͉E�ӂƓ������v
�� ���u���ӂ̂ق����傫���v

lhs, rhs �͓����^�łȂ���΂����Ȃ��B�܂��Astruct �^�Acomobj �^�̑召�֌W�͔�r�ł��Ȃ��B

int �^�́A�ʏ�̑召�֌W�Ŕ�r�����B
double �^���ʏ�̑召�֌W���g�����A�L��������8���ł���B
label �^�́A�X�N���v�g�̑O���ɂ���ق����u�������v�Ƃ݂Ȃ��B

���̑��̌^�́A(!=) ���Z�q�̌��ʂ��g���B



%index
major_s
2�̕�����̂����傫���ق�
%prm
(lhs, rhs)
return: lhs, rhs �̂����傫���ق�
%href
minor_s
major_d
major_i



%index
minor_s
2�̕�����̂����������ق�
%prm
(lhs, rhs)
return: lhs, rhs �̂����������ق�
%href
major_s
minor_d
minor_i



%index
major_d
2�̏����l�̂����傫���ق�
%prm
(lhs, rhs)
return: lhs, rhs �̂����傫���ق�
%href
minor_d
major_s
major_i



%index
minor_d
2�̏����l�̂����������ق�
%prm
(lhs, rhs)
return: lhs, rhs �̂����������ق�
%href
major_d
minor_s
minor_i



%index
major_i
2�̐����̂����傫���ق�
%prm
(lhs, rhs)
return: lhs, rhs �̂����傫���ق�
%href
minor_i
major_s
major_d



%index
minor_i
2�̐����l�̂����������ق�
%prm
(lhs, rhs)
return: lhs, rhs �̂����������ق�
%href
major_i
minor_s
minor_d


%index
cond_s
���i�������Z�q (str)
%prm
(cond, x, y)
%inst
cond_i ���Q�ƁB



%index
cond_d
���i�������Z�q (double)
%prm
(cond, x, y)
%inst
cond_i ���Q�ƁB



%index
cond_i
���i�������Z�q (int)
%prm
(cond, x, y)
return: cond ���^�Ȃ� x�A�U�Ȃ� y
%inst
if �̎��o�[�W�����B

���i�Ƃ́Acond �̒l�Ɋ֌W�Ȃ��A�� x, y �̗������v�Z�����Ƃ������ƁB
%href
cond_s
cond_d
if



%index
ref_expr_tmpl_1
�Q�Ǝ��̒�` (1����)
%prm
(f, p1)
f: �Q�Ǝ��̐ݒ���s���֐�
p1: f �̑�1����
%inst
�ϐ���Ԃ��֐����`���邽�߂̃e���v���B
���ۂɂ́A�uref(f(p1, ref))�v�ɓW�J�����}�N���B������ ref �͈�ӂȎ��ʎq�ŕ\�����ϐ��B

�֐� f �̂Ȃ��ŕϐ� ref ��ݒ肷�邱�Ƃɂ��A�� ref_expr_templ_1(...) �͋[���I�ɕϐ���ԋp������̂Ƃ݂Ȃ���B
��̓I�Ȏg�������� ref_xs �֐��̒�`�Ȃǂ��Q�ƁB

f �̈����̐��𑝂₵���ώ�ɁAref_expr_tmpl_2, ..., ref_expr_tmpl_5, ref_expr_tmpl_8 ������B���� ref �́A��� f �̑�2�����ɓn�����B



%index
ref_expr_tmpl_2
�Q�Ǝ��̒�` (2����)
%prm
(f, p1, p2)
%inst
�uref(f(p1, ref, p2))�v�ɓW�J�����}�N���Bref_expr_tmpl_1 ���Q�ƁB



%index
ref_expr_tmpl_3
�Q�Ǝ��̒�` (3����)
%inst
ref_expr_tmpl_1 ���Q�ƁB
%index
ref_expr_tmpl_4
�Q�Ǝ��̒�` (4����)
%inst
ref_expr_tmpl_1 ���Q�ƁB
%index
ref_expr_tmpl_5
�Q�Ǝ��̒�` (5����)
%inst
ref_expr_tmpl_1 ���Q�ƁB
%index
ref_expr_tmpl_8
�Q�Ǝ��̒�` (8����)
%inst
ref_expr_tmpl_1 ���Q�ƁB



%index
ref_xs
������l�̎Q��
%prm
(value)
str value: �n��������
return: value ��������ꂽ�ϐ�
%inst
������^�́u�ϐ��v���󂯎������ɁA������́u�l�v value ��n���Ƃ��Ɏg���B

���̊֐��́A�����܂ŕϐ����󂯎������ɂ����g�p�ł���B���̊֐����Ԃ��u�l�v���g�p���Ă͂����Ȃ��B
�ċA�֐��̂Ȃ��ȂǁA����������������ċA�I�ɌĂяo����邱�Ƃ�����ꍇ�́A�g�p�ł��Ȃ��B
%href
ref_xd
ref_xi
ref_expr_tmpl_1



%index
ref_xd
�����l�̎Q��
%prm
(value)
double value: �n�������l
return: value ��������ꂽ�ϐ�
%inst
ref_xs �� double �ŁB



%index
ref_xi
�����l�̎Q��
%prm
(value)
int value: �n�������l
return: value ��������ꂽ�ϐ�
%inst
ref_xs �� int �ŁB



%index
ref_xsa8
������l�z��(8�v�f)�̎Q��
%prm
(v0, ..., v7)
str v0, ..., v7 [""]: �n��������l�̗�
return: v0, ..., v7 ��������ꂽ�z��ϐ�
%href
ref_xs



%index
ref_xda8
�����l�z��(8�v�f)�̎Q��
%prm
(v0, ..., v7)
double v0, ..., v7 [0]: �n�������l�̗�
return: v0, ..., v7 ��������ꂽ�z��ϐ�
%href
ref_xs



%index
ref_xia8
�����l�z��(8�v�f)�̎Q��
%prm
(v0, ..., v7)
int v0, ..., v7 [0]: �n�������l�̗�
return: v0, ..., v7 ��������ꂽ�z��ϐ�
%href
ref_xs



%index
ref_xia_iota
�����l�z��(0�`n)�̎Q��
%prm
(len)
int len: �v�f��
return: 0, ..., (n - 1) ��������ꂽ�z��ϐ�
%inst
0, ..., (n - 1) �����ꂼ�������ꂽ�A���� n �̐����l�z��ւ̎Q�Ƃ�Ԃ��B
%href
ref_xs



%index
ref_xva_replicate
�����l����Ȃ�z��̎Q��
%prm
(value, len)
var value: �l
int len: �v�f��
return: value �� len ������ꂽ�z��ϐ�
%inst
�e�l�͑�����Z�q(=)�ŃR�s�[�����B
HSP�̔z��̎d�l���番����ʂ�Alen ��1�ȏ�łȂ���΂Ȃ�Ȃ��B
%href
ref_xs



%index
RGB
�P�x����J���[�R�[�h�����
%prm
(r, g, b)
r: �Ԃ̋P�x
g: �΂̋P�x
b: �̋P�x
return: �w�肳�ꂽ�F��COLORREF�l(int)
%inst
COLORREF�^�̒l��Ԃ��B
%href
color32
ginfo_rgb



%index
color32
�J���[�R�[�h�ŐF���w�肷��
%prm
cref
cref: COLORREF�l
%inst
�F cref �� color ���߂����s����B



%index
ginfo_rgb
���ݐݒ肳��Ă���J���[�R�[�h
%prm

return: RGB(ginfo_r, ginfo_g, ginfo_b)



%index
dir_exists
�f�B���N�g�������݂��邩�H
%prm
(dir)
dir: �f�B���N�g���ւ̃p�X
return: dir �����݂���� true�A���Ȃ���� false
%href
dirlist



%index
mkdir_unless_exists
�f�B���N�g������� (�����Ȃ牽�����Ȃ�)
%prm
dir
dir: �쐬����f�B���N�g��
%inst
mkdir ���߂Ɠ��l�B�������Adir �����łɂ���ꍇ�͉����N���Ȃ��B
%href
dir_exists
