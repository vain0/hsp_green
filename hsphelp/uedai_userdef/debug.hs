%dll
uedai_userdef/debug.hsp

%group
�f�o�b�O�x��



%index
dbgstr
���Ƃ��̒l�̕�����
%prm
(expr)



%index
dbgpair
���̃y�A�Ƃ��̒l�̕�����
%prm
(expr_lhs, expr_rhs)



%index
dbghex
���Ƃ��̐��l(16�i���\�L)�̕�����
%prm
(expr_int)



%index
dbgchar
���Ƃ��̕����̕�����
%prm
(expr_char)



%index
dbgcode
�f�o�b�O�����ۂ��̏������Z��
%prm
(x_debug, x_release)
%inst
�f�o�b�O���� x_debug �ɁA�����[�X���� x_release �ɓW�J�����B



%index
var_type_name
�^�^�C�v�l����^�����擾����
%prm
(type_index)



%index
logmes@__debug
���O�o��
%prm
msg [, log_level, there]
%inst
�f�o�b�O�E�B���h�E�A����у��O�t�@�C���Ƀ��b�Z�[�W msg ��ǋL����B



%index
logwarn
���O�o�� (�x��)
%prm
msg



%index
logerr
���O�o�� (�G���[)
%prm
msg
%inst
LogLevel_Error �Ń��O�o��(logmes@__debug)���A�G���[�I������B



%index
logvar
�ϐ������O�o��
%prm
v [, log_level, there]
%inst
�ϐ��Ƃ��̖��O�� logmes@__debug ����B�ʏ�̕�����(str)�����ڂ����A�����₷���o�͂����B



%index
logmode
logmes@__debug �̏o�͌`�����w�肷��
%prm
mode



%index
logecho
logmes@__debug �̑��M����w�肷��
%prm
flags
%inst
����2�̃r�b�g�t���O�̑g�ݍ��킹�Ŏw�肷��B
LogEcho_DbgWnd: �f�o�b�O�E�B���h�E
LogEcho_File: ���O�t�@�C��



%index
dbgchk_T
�������̎�
%prm
(expr, cond)
%inst
�� expr �̒l�Ɋւ������ cond ���`�F�b�N����Bexpr ��Ԃ��B
���� cond ���s�����Ȃ�A�x�����o�͂���(logwarn)�B

�� cond �̂Ȃ��ł́A�V�X�e���ϐ� dbgchkValue = expr ���g�p�ł���B

T �́Aexpr �� str �^�Ȃ� s�Aint �^�Ȃ� i�Adouble �^�Ȃ� d�B
