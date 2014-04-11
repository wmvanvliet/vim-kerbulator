" Vim syntax file
" Language: Kerbulator mathematics language
" Maintainer: Marijn van Vliet
" Latest Revision: 01 April 2014
"
" Optional highlighting can be controlled using these variables.
"
"   let kerbulator_no_number_highlight = 1
"   let kerbulator_no_operator_highlight = 1
"   let kerbulator_no_function_highlight = 1

if exists("b:current_syntax")
	finish
endif


syn match kerbulatorParameter 'in:'
syn match kerbulatorParameter 'out:'

if !exists("kerbulator_no_function_highlight")
	syn keyword kerbulatorFunction abs acos acos_rad asin asin_rad atan atan_rad ceil cos cos_rad cosh cosh_rad exp
	syn keyword kerbulatorFunction floor ln log log10 max min pow rand
	syn keyword kerbulatorFunction round sign sin sin_rad sinh sinh_rad sqrt tan tan_rad tanh tanh_rad len
	syn keyword kerbulatorFunction mag norm dot cross 
endif

if !exists("kerbulator_no_operator_highlight")
	syn match kerbulatorOperator '='
	syn match kerbulatorOperator ':'
	syn match kerbulatorOperator '\-'
	syn match kerbulatorOperator '+'
	syn match kerbulatorOperator '/'
	syn match kerbulatorOperator '%'
	syn match kerbulatorOperator '\*'
	syn match kerbulatorOperator '·'
	syn match kerbulatorOperator '\^'
	syn match kerbulatorOperator '×'
	syn match kerbulatorOperator '÷'
	syn match kerbulatorOperator '√'
	syn match kerbulatorOperator '|'
	syn match kerbulatorOperator '⌊'
	syn match kerbulatorOperator '⌋'
	syn match kerbulatorOperator '⌈'
	syn match kerbulatorOperator '⌉'
endif

if !exists("kerbulator_no_number_highlight")
	" Regular int like number with - + or nothing in front
	syn match kerbulatorNumber '\<\d\+\>'
	syn match kerbulatorNumber '\<[-+]\d\+\>'

	" Floating point number with decimal no E or e (+,-)
	syn match kerbulatorNumber '\<\d\+\.\d*\>'
	syn match kerbulatorNumber '\<[-+]\d\+\.\d*\>'

	" Floating point like number with E and no decimal point (+,-)
	syn match kerbulatorNumber '\<[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+\>'
	syn match kerbulatorNumber '\<\d[[:digit:]]*[eE][\-+]\=\d\+\>'

	" Floating point like number with E and decimal point (+,-)
	syn match kerbulatorNumber '\<[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+\>'
	syn match kerbulatorNumber '\<\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+\>'
endif

syn match kerbulatorComment '".*"'
syn match kerbulatorComment '#.*$'

let b:current_syntax = "kerbulator"
hi def link kerbulatorParameter Statement

if !exists("kerbulator_no_function_highlight")
	hi def link kerbulatorFunction Function
endif

if !exists("kerbulator_no_operator_highlight")
	hi def link kerbulatorOperator Operator
endif

if !exists("kerbulator_no_number_highlight")
	hi def link kerbulatorNumber Number
endif

hi def link kerbulatorComment Comment
