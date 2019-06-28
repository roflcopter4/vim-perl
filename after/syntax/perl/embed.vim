" A bunch of crap
" Maintainer:   roflcopter4
" Installation: Put into after/syntax/perl/embed.vim

" C
if exists('b:current_syntax')
    unlet b:current_syntax
endif
syntax include @cSyntax syntax/c.vim
syntax region Inline_C_Data	matchgroup=perlInline start="__C__"	                          end="\ze__\w\+__" contains=@cSyntax containedin=perlDATA contained
syntax region Inline_C_Heredoc	matchgroup=perlInline start="\%(/\* INLINE C \*/\|// INLINE C\)$" end="\%(/\* INLINE C \*/\|// INLINE C\)$" contains=@cSyntax containedin=perlHereDoc,perlIndentedHereDoc contained


" Python
if exists('b:current_syntax')
    unlet b:current_syntax
endif
syntax include @pythonSyntax syntax/python.vim
syntax region Inline_Python_Data	matchgroup=perlInline start="__Python__"	end="\ze__\w\+__"      contains=@pythonSyntax containedin=perlDATA contained
syntax region Inline_Python_Heredoc	matchgroup=perlInline start="# INLINE PYTHON$"  end="# INLINE PYTHON$" contains=@pythonSyntax containedin=perlHereDoc,perlIndentedHereDoc contained


" Lua
if exists('b:current_syntax')
    unlet b:current_syntax
endif
syntax include @luaSyntax syntax/lua.vim
syntax region Inline_Lua_Data		matchgroup=perlInline start="__Lua__"	      end="\ze__\w\+__"    contains=@luaSyntax containedin=perlDATA contained
syntax region Inline_Lua_Heredoc	matchgroup=perlInline start="-- INLINE LUA$"  end="-- INLINE LUA$" contains=@luaSyntax containedin=perlHereDoc,perlIndentedHereDoc contained
 

" " C++
" if exists('b:current_syntax')
"     unlet b:current_syntax
" endif
" syntax include @luaSyntax syntax/cpp.vim
" syntax region Inline_Cpp_Data		matchgroup=perlInline start="__CPP__"	end="\ze__\w\+__"    contains=@cppSyntax containedin=perlDATA contained
" syntax region Inline_Cpp_Heredoc	matchgroup=perlInline start="\%(/\* INLINE C++ \*/\|// INLINE C++\)$" end="\%(/\* INLINE C++ \*/\|// INLINE C++\)$" contains=@cppSyntax containedin=perlHereDoc,perlIndentedHereDoc contained
 

highlight def link perlInline PreProc
