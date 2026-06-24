" 既に別のsyntaxがロードされていたら終了
if exists("b:current_syntax")
    finish
endif

syntax match MicoComment /\v^#.*$/
syntax match MicoRegex /\v^\/.*\/[isuvm]*$/
syntax match MicoDirective /\v^\@end\s*$/
syntax match MicoDirective /\v^\@%(comment-user-id|comment-commands|comment-body)\s*$/
syntax match MicoDirective /\v^\@%(video-id|video-owner-id|video-owner-name|video-title)\s*$/
syntax match MicoDirective /\v^\@%(include-tags|include-video-ids|include-user-ids|include-series-ids)\s/
syntax match MicoDirective /\v^\@%(exclude-tags|exclude-video-ids|exclude-user-ids|exclude-series-ids)\s/
syntax match MicoDirective /\v^\@%(strict|s)\s*$/
syntax match MicoDirective /\v^\@disable\s*$/

" defaultに設定することで上書き可能にする
highlight default link MicoComment Comment
highlight default link MicoRegex String
highlight default link MicoDirective PreProc

let b:current_syntax = "mico"
