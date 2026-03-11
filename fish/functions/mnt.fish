function mnt --description "Mount known devices"
  argparse 's/status' 'm/mount' 'u/umount' -- $argv
  or return

  if set -q _flag_status
    lsblk
    echo ""
    echo "/dev/sda1 = 'Archive'"
  end

  if set -q _flag_mount; and test $argv = "Archive"
    sudo mount /dev/sda1 /home/marcelb/media/Archive
    echo "Mounted!"
  else if set -q _flag_mount
    echo "Drive does not exist!"
  end

  if set -q _flag_umount; and test $argv = "Archive"
    sudo umount /dev/sda1 /home/marcelb/media/Archive
    echo "Unounted!"
  else if set -q _flag_umount
    echo "Drive does not exist!"
  end
end
