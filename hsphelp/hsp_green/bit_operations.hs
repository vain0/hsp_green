%dll
hsp_green
%group
�r�b�g���Z


%index
MAKELONG
2��16�r�b�g�l����32�r�b�g�l�����
%prm
(lo, hi)
lo: ���ʃ��[�h
hi: ��ʃ��[�h



%index
MAKELONG4
4��8�r�b�g�l����32�r�b�g�l�����
%prm
(lolo, lohi, hilo, hihi)
lolo: ���ʃ��[�h�̉��ʃo�C�g
lohi: ���ʃ��[�h�̏�ʃo�C�g
hilo: ��ʃ��[�h�̉��ʃo�C�g
hihi: ��ʃ��[�h�̏�ʃo�C�g



%index
HIWORD
��ʃ��[�h
%prm
(l)
l: 32�r�b�g�l
return: l �̏��16�r�b�g�̒l



%index
LOWORD
���ʃ��[�h
%prm
(l)
l: 32�r�b�g�l
return: l �̉���16�r�b�g�̒l



%index
MAKEWORD
2��8�r�b�g�l����16�r�b�g�l�����
%prm
(lo, hi)
lo: ���ʃo�C�g
hi: ��ʃo�C�g



%index
HIBYTE
��ʃo�C�g
%prm
(w)
w: 16�r�b�g�l



%index
LOBYTE
���ʃo�C�g
%prm
(w)
w: 16�r�b�g�l




%index
byte_at
�����l����1�o�C�g�����o��
%prm
(l, i)
return: l �̉����� i �Ԗڂ�1�o�C�g�̒l



%index
pow_2
2�̙p��
%prm
(i)
i: �w��
return: 2��i�� (2^i)



%index
bit_sub
�r�b�g���Ƃ̍�
%prm
(lhs, rhs)
lhs, rhs: int
%inst
lhs ����Arhs �̗����Ă���r�b�g�ɑΉ�����r�b�g����菜�������̂�Ԃ��B

��Fbit_sub(0b1100, 0b1010) = 0b0100




%index
bit_complement
�r�b�g���Ƃ̕�
%prm
(bs)
bs: int
%inst
bs �̗����Ă���r�b�g�����낵�A����Ă���r�b�g�𗧂Ă����̂�Ԃ��B

��Fbit_complement(0b11110101) = 0b00001010



%index
bit_at
�����l����1�r�b�g���o��
%prm
(l, i)
return: l �̉����� i �Ԗڂ̃r�b�g



%index
int_from_signed_short
������16�r�b�g�����l��int�ɕϊ�����
%prm
(ss)
return: ss ��32�r�b�g�Ɋg�����������l
%inst
�����r�b�g��ۂB
