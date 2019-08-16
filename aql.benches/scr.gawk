# FILE. . . . . /home/hak/hlt/src/hlt/language/jaccapps/aql/benches/scr.gawk
# EDIT BY . . . Hassan Ait-Kaci
# ON MACHINE. . Hp-Dv7
# STARTED ON. . Thu Oct 18 14:01:59 2012

# Last modified on Thu Oct 18 14:09:41 2012 by hak

/^$/ {next}
/^com init/ {next}
#/^Number of fails/             {next}
#/^Number of choice points/     {next}
#/^Number of variables/         {next}
#/^Number of constraints/       {next}
/^Presolve time/    {next}
/^Reversible stack/    {next}
/^Solver heap/         {next}
/^Solver global heap/  {next}
/^And stack/           {next}
/^Or stack/            {next}
/^Search Stack/        {next}
/^Constraint queue/    {next}
/^Total memory used/   {next}
/^Running time since creation/ {next}
{
print gensub("\r","","g",$0)
}
