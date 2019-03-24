
function fish_prompt

    if not set -q __fish_prompt_char
        set -g __fish_prompt_char "->"
    end

    if not set -q __arrow
        set -g __arrow ""
    end

    if not set -q $__fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname)
    end

    # manage colors
    set -l normal (set_color normal)
    set -l bnormal (set_color -b normal)
    set -l bwhite (set_color -b white)
    set -l white (set_color white)
    set -l black (set_color black)
    set -l bservercolor (set_color -b green)
    set -l servercolor (set_color green)

    echo -n $bservercolor $white$__fish_prompt_hostname $bwhite$servercolor$__arrow $black(prompt_pwd) $bnormal$white$__arrow $__fish_prompt_char $normal

end

