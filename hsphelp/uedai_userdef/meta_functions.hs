%dll
uedai_userdef/meta_functions.hsp

%group
���^�֐�

%index
_empty
��̃X�N���v�g



%index
_rm
��̃X�N���v�g (���ʂ�)
%prm
(ignored)
%inst
�p�����[�^���Ə�������A��̃X�N���v�g�ɓW�J�����B



%index
_cat
���ʎq�̘A��
%prm
(i1, i2)
%inst
���ʎq i1, i2 �����̏��ŘA���������ʎq�ɓW�J�����B
�X�y�[�X������Ǝ��s����B



%index
_cat_scope
���ʎq�ƃX�R�[�v�����̘A��
%prm
(ident, scope)
%inst
���ʎq ident �ɃX�R�[�v scope �����āA���ʎq ident@scope �ɓW�J�����B
�X�y�[�X������Ǝ��s����B



%index
_comma
�J���} (,)



%index
_colon
�R���� (:)



%index
_unique_ident
�������ʎq
%prm
([postfix])
postfix [_empty]: �ڔ���
return: ��ӂȎ��ʎq�ɁApostfix ��A����������
%inst
����W�J�}�N�� %n �̈�ʉ��B



%index
_stringify
���̕����񃊃e������
%prm
(code)
code: �X�N���v�g�f��
return: code �𕶎��񃊃e�����ɂ�������
%inst
���ӁF
1. code �̂Ȃ��� {"..."} �͎g���Ȃ��B
2. code �̂Ȃ��̏�]���Z�q \\ ���G�X�P�[�v�E�V�[�P���X�Ƃ��ē����Ă��܂��B
3. code �̂Ȃ��̃}�N���͓W�J����Ȃ��B



%index
_replicate2
�R�[�h�𕡐�����
%prm
(c)
return: �R�[�h�� c ��2���ׂ��R�[�h
%inst
���l�� _replicate7 �܂Œ�`�ς݁B
