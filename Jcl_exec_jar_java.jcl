//RACFX JOB RACF,'ZOS LINUX',CLASS=M,NOTIFY=RACF,
// MSGCLASS=1,MSGLEVEL=(1,1),TIME(,4),REGION=0M,COND=(16,LT)
// SET VAR='/java/J17.0_64/javac'
//*EXEC jar in java 17
//STEP1   EXEC PGM=BPXBATCH,REGION=0M,
// PARM='SH &VAR -jar /tmp/your_racf Test.jar'
//STDOUT  DD SYSOUT=*
//STDERR  DD SYSOUT=*