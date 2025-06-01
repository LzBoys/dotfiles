if status is-interactive
    # Commands to run in interactive sessions can go here
    eval (ssh-agent -c)
    set -gx EDITOR vim
    loadhyprland

    function co
	g++ -std=c++17 -O2 -o (path change-extension '' $argv[1]) $argv[1] -Wall
    end

    function run
	set binary (path change-extension '' $argv[1])
	co $argv[1] && ./{$binary} & fg
    end

    starship init fish | source
end
