" 既に別のsyntaxがロードされていたら終了
if exists("b:current_syntax")
    finish
endif

syn match MicoComment /\v^#.*$/
syn match MicoRegex /\v^\/.*\/[isuvm]*$/
syn match MicoDirective /\v^\@end\s*$/
syn match MicoDirective /\v^\@%(comment-user-id|comment-commands|comment-body)\s*$/
syn match MicoDirective /\v^\@%(video-id|video-owner-id|video-owner-name|video-title)\s*$/
syn match MicoDirective /\v^\@%(include-tags|include-video-ids|include-user-ids|include-series-ids)\s/
syn match MicoDirective /\v^\@%(exclude-tags|exclude-video-ids|exclude-user-ids|exclude-series-ids)\s/
syn match MicoDirective /\v^\@%(strict|s)\s*$/
syn match MicoDirective /\v^\@disable\s*$/

" defaultに設定することで上書き可能にする
hi def link MicoComment Comment
hi def link MicoRegex String
hi def link MicoDirective PreProc

let b:current_syntax = "mico"
