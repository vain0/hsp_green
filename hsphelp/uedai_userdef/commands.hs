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
gradf2
��`���O���f�[�V�����œh��Ԃ�
%prm
x1, y1, sx, sy, mode, rgb1, rgb2
x1: ��`�̍���X���W
x1: ��`�̍���Y���W
sx: ��`��X�T�C�Y
sy: ��`��Y�T�C�Y
mode: �O���f�[�V�����̃��[�h
rgb1: �ŏ��̐F
rgb2: �Ō�̐F
%inst
gradf ���߂ɁAboxf ���߂Ǝ����`���̃p�����[�^��n����悤�ɂ������́B



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
