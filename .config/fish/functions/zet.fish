function zet --description 'Open vim to create a new note'
  set executable nvim
  $executable "+Zet $argv"
end

