==========================================================
C x C f   : To Create a new file OR To Open existing file.
C x 3     : Add a new Buffer right of active window.
C x 1     : Close all Buffer except active

C x b     : List all the buffer.
C x C L/R : Cycle through buffer.
--------------------------------
C p       : previous line
  n       : next lin
  f       : next Character
  b       : previous character
  e       : end of line
  a       : begining of the line
  _	  : undo
  s	  : search forward
  r 	  : search reverse
--------------------------------

M f       : next word
  b       : previous word
  a	  : begining of sentence
  b	  : end of sentence
  %	  : query replace(<space> to replace,'n' to skip, '!' to replace all')
--------------------------------
kill      : is cut
yank      : is paste
region	  : area to cut/copy/paste

--------------------------------
C <space> : Mark set (select area for kill)
          : Mark deactivated.
C k	  : kill(cut) the selected region
  y       : yank(paste) the killed area at the place where the Point(cursor) is present.






