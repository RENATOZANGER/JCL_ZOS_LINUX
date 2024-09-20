//RACFX JOB RACF,'ZOS LINUX',CLASS=M,NOTIFY=RACF,
// MSGCLASS=1,MSGLEVEL=(1,1),TIME(,4),REGION=0M,COND=(16,LT)
//*EXEC SCRIPT SH
//STEP1   EXEC PGM=BPXBATCH,REGION=0M,
// PARM='sh /tmp/your_racf/execute.sh'
//STDOUT  DD SYSOUT=*
//STDERR  DD SYSOUT=*
//*
//*CREATE EXECUTE.SH IN /tmp/your_racf/
//* this sh print java version from zos and java version 17
//* and exec de class Test and save ls -l in test.log 
//*
//*#!/bin/bash
//*java --version
//*export JAVA_HOME=/folder_java/J17.0_64
//*export PATH=$JAVA_HOME/bin:$PATH
//*java --version
//*/folder_java/J17.0_64/bin/java -cp /tmp/your_racf/class_java Test
//*echo "java version"
//*ls -l /tmp/your_racf > /tmp/your_racf/test.log > &1
//*echo "Finish" 