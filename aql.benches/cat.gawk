# FILE. . . . . /home/hak/hlt/src/hlt/language/jaccapps/aql/benches/cat.gawk
# EDIT BY . . . Hassan Ait-Kaci
# ON MACHINE. . Hp-Dv7
# STARTED ON. . Thu Oct 18 13:58:15 2012

# Last modified on Thu Oct 18 13:58:43 2012 by hak

BEGIN {
  rLen = length(REPORT)
  star = "**********************************************************************"
  subStar = substr(star,0, 70 - rLen)
  print REPORT subStar
}
END {
  print "**********************************************************************"
}
{
   if (FILENAME != LASTFN) {
      fLen = length(FILENAME)
      dash = "----------------------------------------------------------------------"
      subDash = substr(dash,0,49 - fLen)
      print "--------------------" FILENAME " " subDash
    }
  print $0
  LASTFN = FILENAME
}
