// userdef
// "hspdef.as" �̖����� #addition ����悤�ɕύX����

#ifndef        IG_USERDEF_HEADER_AS
#define global IG_USERDEF_HEADER_AS

#define global __userdef__

	;#include "hsp3_64.as"
	#include "uedai_userdef/debug.hsp"

//�W�����ߗp�萔�l
#define global ctype mref_param(%1) (%1)
#define global mref_stat 64
#define global mref_refstr 65
#define global mref_vram 66
#define global mref_current_screen 67
#define global mref_ctx 68
#define global mref_palette 69
#define global ctype mref_screen(%1) (96 + (%1))

#define global noteadd_add 0
#define global noteadd_overwrite 1

#define global getpath_filename 1
#define global getpath_ext 2
#define global getpath_exclude_dir 8
#define global getpath_tolower 16
#define global getpath_dir 32

#define global strtrim_head 1
#define global strtrim_tail 2
#define global strtrim_everywhere 3

#define global gsel_hide -1
#define global gsel_none 0
#define global gsel_show 1
#define global gsel_topmost 2

#define global redraw_off 0
#define global redraw_on 1
#define global redraw_nopaint 2

#define global mesbox_disable 0
#define global mesbox_enable 1
#define global mesbox_vscroll 0
#define global mesbox_hscroll 4

#define global exec_normal 0
#define global exec_minimized 2
#define global exec_application 16
#define global exec_print 32

#define global dialog_ok 0
#define global dialog_warn 1
#define global dialog_yesno 2
#define global dialog_open 16
#define global dialog_save 17
#define global dialog_color 32
#define global dialog_colorex 33

#define global hsptv_up_clearscore 0x1000
#define global hsptv_up_anonymous 0x2000

#define global gettime_year gettime(0)
#define global gettime_month gettime(1)
#define global gettime_wday gettime(2)// from struct tm
#define global gettime_mday gettime(3)
#define global gettime_hour gettime(4)
#define global gettime_min gettime(5)
#define global gettime_sec gettime(6)
#define global gettime_millsec gettime(7)

//�F�ݒ�
#define self
#undef  self
#define global global
#undef  global
#define ctype ctype
#undef  ctype

#define global null     0
#ifndef __clhsp__
 #define global true    1
 #define global false   0
#endif
#define global MAX_INT  0x7FFFFFFF//  2147483647
#define global MIN_INT  0x80000000// -2147483648
#define global MAX_PATH 260
#define global INFINITY (logf@hsp(0))

//actually helpers
#define global elsif else : if
#define global delfile delete
#define global gradf2(%1 = 0, %2 = 0, %3, %4, %5 = 0, %6, %7) gradf (%1), (%2), (%3) - (%1), (%4) - (%2), (%5), (%6), (%7)
#define global mousex2 (ginfo_mx - (ginfo_wx1 + (ginfo_sizex - ginfo_winx) / 2))
#define global mousey2 (ginfo_my - (ginfo_wy1 + (ginfo_sizey - ginfo_winy) - (ginfo_sizex - ginfo_winx) / 2))

#ifdef _DEBUG
 #define global dir_exe2 dir_exe@__debug
 dir_exe2 = dir_cur
#else //defined(_DEBUG)
 #define global dir_exe2 dir_exe
#endif //defined(_DEBUG)

//others
#define global ignore(%1) __ignored_value@__uedai = (%1)

// ���l����}�N��
#define global ctype MAKELONG(%1,%2) (LOWORD(%1) | (LOWORD(%2) << 16))
#define global ctype MAKELONG4(%1=0,%2=0,%3=0,%4=0) MAKELONG(MAKEWORD((%1),(%2)),MAKEWORD((%3),(%4)))
#define global ctype HIWORD(%1) (((%1) >> 16) & 0xFFFF)
#define global ctype LOWORD(%1) ((%1) & 0xFFFF)
#define global ctype bit_sub(%1,%2=0) ((%1) & bit_complement(%2))
#define global ctype RGB(%1,%2,%3) (LOBYTE(%1) | LOBYTE(%2) << 8 | LOBYTE(%3) << 16)
#define global ctype pow_2(%1) (1 << ((%1) - 1))

#define global ctype MAKEWORD(%1,%2) (LOBYTE(%1) | LOBYTE(%2) << 8)
#define global ctype HIBYTE(%1) LOBYTE((%1) >> 8)
#define global ctype LOBYTE(%1) ((%1) & 0xFF)
#define global ctype bit_complement(%1) ((%1) ^ -1)
#define global ctype byte_at(%1,%2=0) LOBYTE((%1) >> ((%2) * 8))
#define global ctype bit_at(%1,%2=0) (((%1) >> (%2)) & 1)

#ifdef __hsp64__
 #const global pointer_size 64
#else
 #const global pointer_size 32
#endif

// ���^�֐�
#define global _empty// empty
#define global ctype _rm(%1)/*%1*/
#define global ctype _cat(%1,%2)%1%2
#define global ctype _cat3(%1,%2,%3)%1%2%3
#define global ctype _cat_scope(%1,%2)_cat3(%1,@,%2)

#define global _comma ,
#define global _colon :

//---- switch --------------------------------
#undef switch
#undef case
#undef default
#undef swend
#undef swbreak

// %p0: ��r���̒l�����ϐ�
// %p1: swend �ւ̃��x��
// %p2: switch �̐擪�ւ̃��x�� (for: swcontinue)
// %p3: switch �̐擪�ւ̃��x�� (for: swredo)
#define global switch(%1=true) %tswitch %i0 %i0 %i0 %i0  swthis_bgn(%p) swdefault_init : *%p2 : %p = (%1) : *%p3 : if ( 0 ) {
#define global case(%1)     %tswitch %i0 goto *%p } if ( (%p1) == (%1) ) { *%o
#define global case_not(%1) %tswitch %i0 goto *%p } if ( (%p1) != (%1) ) { *%o
#define global case_if(%1)  %tswitch %i0 goto *%p } if ( (%1) ) { *%o
#define global default      %tswitch } swdefault_place_default : if ( 1 ) {
#define global swend        %tswitch } swdefault_place_swend : %o0 *%o %o0 %o0 : swthis_end swdefault_term
#define global swbreak      %tswitch goto *%p1
#define global swcontinue   %tswitch goto *%p2					// �ĕ��� (��r�l���X�V)
#define global swredo       %tswitch goto *%p3					// �ĕ��� (��r�l�͓���)
#define global go_case(%1)  %tswitch %p = (%1) : swredo			// ��r�l��ύX���čĕ���
#define global go_default   %tswitch goto swdefault_label		// default ������΂����ɁA�Ȃ���� swend �ɔ��
//	#define global swthis       %tswitch (%p)

#define global xcase    swbreak : case
#define global xdefault swbreak : default

// swthis ���Aswitch �Ƃ͕ʂ̃X�^�b�N�ɂ��ݒ肵�Ă���
// %p: ��r���̒l�����ϐ� (switch����^������)
#define global ctype swthis_bgn(%1) %tswitch_this %s1
#define global swthis     %tswitch_this %p
#define global swthis_end %tswitch_this %o0

// default �p�̃��x���X�^�b�N (���Ȃ蕡�G)
// ��������2�̃��j�[�N���ʎq�� A, B �Ƃ���B
// �ŏ��AA, B, A �̏��ɃX�^�b�N�ɐς܂�� ({ %p: A, %p1: B, %p2: A })�B
// @ %p2 �� A �� swdefault_label �ŎQ�Ƃ��邽�߁B
// default ������Ƃ�:
// @	1. A �� default �ɔz�u�E���������BB ���X�^�b�N��ɐς܂�� ({ %p: B, %p1: B, %p2: A })�B
// @	2. ��ԏ�� B �� swend �ɔz�u�����B�c��2�͂��̂܂܎�菜�����B
// default ���Ȃ��Ƃ�: 
// @	1. ��ԏ�� A �� swend �ɔz�u�����B�c��2�͂��̂܂܎�菜�����B
// ��A (swdefault_label) �� default ������Ƃ� default ���A�Ȃ��Ƃ��� swend (�G���[����) ���w���B
#define global swdefault_init          %tswitch_default %i0 %i0 swdefault_push(%p1)		// [ A, B, A ] ��ς�
#define global swdefault_term          %tswitch_default %o0 %o0 %o0
#define global swdefault_place_default %tswitch_default *%o : swdefault_push(%p)		// A ��z�u���ď���, B �� doubling-push
#define global swdefault_place_swend   %tswitch_default do_not { *%p : logmes@hsp "go_default error: default doesn't exist.\n\t" + __HERE__ : assert@hsp }
#define global swdefault_label         %tswitch_default *%p2

#define global ctype swdefault_push(%1) %tswitch_default %s1

#module  _userdef_cleanup
#ifdef _DEBUG
#deffunc _userdef_cleanup_sttm onexit
	delfile_if_exists "obj"
	delfile_if_exists "hsptmp"
	return
#endif
#deffunc delfile_if_exists str path
	exist path : if (strsize >= 0) { delfile path }
	return
#global

// ���X�}�N������������
#module
#define global ctype in_interval(%1,%2=0,%3=INT_MAX@) _in_interval@__uedai(%1,%2,%3)// %1 ����� [%2, %3) �����ۂ�
#defcfunc _in_interval@__ue_dai int self, int min_, int max_
	return (min_ <= self && self <= max_)
#global
#module
#define global ctype in_rect(%1= 0, %2 = 0, %3 = 640, %4 = 480, %5 = mousex, %6 = mousey) _in_rect@__uedai(%1,%2,%3,%4,%5,%6);( (((%1) <= (%5)) && ((%5) <= (%3))) && (((%2) <= (%6)) && ((%6) <= (%4))) )
#defcfunc _in_rect@__uedai int x1, int y1, int x2, int y2,  int px, int py
	return (x1 <= px && px <= x2) && (y1 <= py && py <= y2)
#global

#module
#defcfunc major_i int lhs, int rhs
	if (lhs < rhs) { return rhs } else { return lhs }
#defcfunc minor_i int lhs, int rhs
	if (lhs > rhs) { return rhs } else { return lhs }
#defcfunc major_d double lhs, double rhs
	if (lhs < rhs) { return rhs } else { return lhs }
#defcfunc minor_d double lhs, double rhs
	if (lhs > rhs) { return rhs } else { return lhs }
#defcfunc major_s str lhs, str rhs
	if ((lhs != rhs) < 0) { return rhs } else { return lhs }
#defcfunc minor_s str lhs, str rhs
	if ((lhs != rhs) > 0) { return rhs } else { return lhs }
#global

#module
///set current color decomposing RGB
#deffunc color32 int cref
	color byte_at(cref, 0), byte_at(cref, 1), byte_at(cref, 2)
	return
#global

#endif // !defined(__userdef__)
