%dll
hsp_green
%group
�v���O��������}�N��



%index
xswitch
�r���I��r���̊J�n
%prm
val
val [true]: ��r���̒l
%inst
xswitch-xcase-xswend �\���́A����l val �Ɋւ����������ł���B

�W���}�N���� switch-case-swend �Ɏ��Ă��邪�A�قȂ�_��2����B
1. xswitch ���͂�����ufallthrough�v���N�����Ȃ��B���Ȃ킿�Axcase �߂̍Ō�Ŏ����I�� xswend �Ɉړ�����Bfallthrough ���s�������Ƃ��́Axswfall ���߂��g�p����B
2. xswitch ���́A�K�������ꂩ�̃P�[�X�����s���Ȃ���΂Ȃ�Ȃ��B�f�o�b�O���s���ɂ����Ăǂ̃P�[�X�ɂ��}�b�`���邱�ƂȂ� xswend �ɓ��B�����Ƃ��́Aassert_sentinel �̃G���[�𐶂���B
%href
xswitch
xcase
xcase_if
xdefault
xswend
xswbreak
xswfall
go_case
go_default



%index
xswend
�r���I��r���̏I�[
%inst
xswitch ���̏I�[���w�肷��B



%index
xcase
�r���I��r�� (��������)
%prm
val
val: ��r����l
%inst
xswitch ���̂Ȃ��ŁA��r���̒l(xswthis)�� val �ɓ������Ƃ��Ɏ��s����鏈�����w�肷��B���̐߂����s���ꂽ��A����ȍ~�� xcase �߂� xdefault �߂͎��s����Ȃ��B

��r�ɂ͓���(==)���g�p����B�^�� xswthis �̂ق��ɍ��킹����B�����ȊO�̏������w�肷��ɂ́Axcase_if ���g�p����B
%href
case
go_case
xswfall



%index
xcase_if
�r���I��r��
%prm
cond
cond: ������
%inst
xswitch ���̂Ȃ��ŁA���� cond ���^�ł���Ƃ��Ɏ��s����鏈�����w�肷��B���̐߂����s���ꂽ��A����ȍ~�� xcase �߂� xdefault �߂͎��s����Ȃ��B

if ���Ǝ��Ă��邪�A���̏������͔�r���̒l xswthis ���g���ׂ��ł���B
%href
go_case



%index
xdefault
�r���I��r�� (���̑�)
%inst
xswitch ���̂Ȃ��ŁA�ق��̏������^�łȂ������Ƃ��Ɏ��s����鏈�����w�肷��B���̐߂����s���ꂽ��A����ȍ~�� xcase �߂� xdefault �߂͎��s����Ȃ��B

%href
default
go_default



%index
xswfall
�r���I��r���̎��̐�
%inst
xswitch ���̂Ȃ��ŁA���� xcase ��(�܂��� xcase_if, xdefault ��)�Ɉړ�����B�Ō�̐߂Ȃ�Axswbreak �Ɠ��l�Axswend �Ɉړ�����B



%index
xswberak
�r���I��r������E�o
%inst
xswitch ������E�o���A���� xswend ���߂̒���Ɉړ�����B



%index
swcontinue
�r���I��r������蒼�� (�X�V����)
%inst
xswitch ���̐擪�ɖ߂�Bxswitch �̃p�����[�^�����Ȃ�A���̎����Ăьv�Z����B
%href
xswredo



%index
swredo
�r���I��r������蒼�� (�X�V�Ȃ�)
%inst
xswitch ���̐擪�ɖ߂�B��r���̒l(xswthis)�͕ύX����Ȃ��B
%href
xswcontinue



%index
go_case
xcase �߂Ɉړ�����
%prm
val
%inst
���݂� xswitch ���́A�l val �ɑΉ�����߂Ɉړ�����B

���ۂɂ́A��r���̒l(xswthis)�� val �ɕύX���Ă���Aswredo ����B



%index
go_default
xdefault �߂Ɉړ�����
%inst
���݂� xswitch ���� xdefault �߂Ɉړ�����B
���� xdefault ���O�� xcase, xcase_if �߂����ׂĂ̏ꍇ��ԗ����Ă����Ƃ��Ă��Axdefault �߂ɓ���B

xdefault �߂��Ȃ��ꍇ�́Axswend �Ɉړ�����B�f�o�b�O���ɂ� assert_sentinel �G���[�ƂȂ�B



%index
xswthis
�r���I��r���̔�r���̒l
%inst
���݂� xswitch ���̔�r���̒l���������ϐ��B�㏑���s�B

��� xcase_if ���̂Ȃ��Ŏg�p����B
