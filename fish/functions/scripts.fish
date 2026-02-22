function scripts --description "Executable bash scripts"
  argparse 'l/list' 'sync' 'sas' 'build' 'makescript' -- $argv
  or return

  set -gx SCRIPTS_DIR '/Schreibtisch/scripts'

  if set -q _flag_list
    echo ""
    echo "–––––––––––––––––––––––––"
    echo "«Executable Bash Scripts»"
    echo "–––––––––––––––––––––––––"
    echo "Located at:"
    echo "$HOME$SCRIPTS_DIR"
    echo ""
    echo " ⎧ · 'sync'"
    echo " ⎪ · 'build'"
    echo " ⎪ · 'makescript'"
    echo " ⎪ "
    echo " ⎩ "
    return
  end

  if set -q _flag_sync
    echo "1"
  end

  if set -q _flag_build
    echo "2"
  end

  if set -q _flag_makescript
    echo "3"
  end

  echo "$argv"
end
