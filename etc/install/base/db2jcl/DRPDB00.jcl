//*********************************************************************
//*                                                                   *
//*   Copyright IBM Corp. 2022                                        *
//*                                                                   *
//*********************************************************************
//DRPDB00 JOB 'DB2',NOTIFY=&SYSUID,CLASS=A,MSGCLASS=H,
//          MSGLEVEL=(1,1),REGION=4M
//*
//JCLLIB  JCLLIB ORDER=DSNC10.PROCLIB
//JOBLIB  DD  DISP=SHR,DSN=DSNC10.SDSNLOAD
//GRANT   EXEC PGM=IKJEFT01,DYNAMNBR=20
//SYSTSPRT DD  SYSOUT=*
//SYSPRINT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSTSIN  DD  *
  DSN SYSTEM(DBCG)
  RUN PROGRAM(DSNTEP2)  PLAN(DSNTEP12) -
       LIB('DSNC10.DBCG.RUNLIB.LOAD') PARMS('/ALIGN(MID)')
  END
//SYSIN    DD  *
SET CURRENT SQLID = 'IBMUSER';
DROP DATABASE CBSA;
/*