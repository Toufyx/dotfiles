
function fish_prompt

    if not set -q __fish_prompt_char
        set -g __fish_prompt_char "->"
    end

    if not set -q __arrow
        set -g __arrow \ue0b0
    end

    # manage colors
    set -l normal (set_color normal)
    set -l bnormal (set_color -b normal)
    set -l bwhite (set_color -b white)
    set -l white (set_color white)
    set -l black (set_color black)
    set -l bcyan (set_color -b cyan)
    set -l cyan (set_color cyan)
    set -l bred (set_color -b red)
    set -l red (set_color -b red)

    echo -n $bcyan $white(date "+%T") $bwhite$cyan$__arrow $black(prompt_pwd) $bnormal$white$__arrow $__fish_prompt_char $normal

end


function fish_right_prompt

    if not set -q __trailing_arrow
        set -g __trailing_arrow "<-"
    end

    # manage colors
    set -l normal (set_color normal)
    set -l red (set_color red)

    set -l branch (git symbolic-ref --short HEAD ^ /dev/null)
    if test -n "$branch"
        echo -n $red(git symbolic-ref --short HEAD ^ /dev/null) $__trailing_arrow$normal
    end

end

