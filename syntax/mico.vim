" 既に別のsyntaxがロードされていたら終了
if exists("b:current_syntax")
    finish
endif

syntax match MicoComment /\v^#.*$/
syntax match MicoRegex /\v^\/.*\/[isuvm]*$/
syntax match MicoDirective /\v^\@end\s*$/
syntax match MicoDirective /\v^\@%(comment-user-id|comment-commands|comment-body)\s*$/
syntax match MicoDirective /\v^\@%(video-id|video-owner-id|video-owner-name|video-title)\s*$/
syntax match MicoDirective /\v^\@%(enable-if-tags|enable-if-video-ids|enable-if-user-ids|enable-if-series-ids)\s/
syntax match MicoDirective /\v^\@%(disable-if-tags|disable-if-video-ids|disable-if-user-ids|disable-if-series-ids)\s/
syntax match MicoDirective /\v^\@%(strict|s)\s*$/
syntax match MicoDirective /\v^\@remove\s*$/

" defaultに設定することで上書き可能にする
highlight default link MicoComment Comment
highlight default link MicoRegex String
highlight default link MicoDirective PreProc

let b:current_syntax = "mico"
