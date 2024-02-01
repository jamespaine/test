601,100
602,"Process Control Logging"
562,"NULL"
586,
585,
564,
565,"hInhD2<4a`;TumpUhO<bAR\jnWxy]O`@<^TAGLNUWLae?fFi;Epq:yBwX5bC5^ztFoyQ5kF>\qnrU_p0VB=x8YhBRpEcNqulvqLM7f2bMZ]@Q\L?m0c61z=33Ni@37R>MYzF<QTR_hsa4VtJgIpv\sh<@kvQCuD:6G?R?uop_R2xerJB:qC_rik4;t3B1uE\B_UTn2ri"
559,1
928,0
593,
594,
595,
597,
598,
596,
800,
801,
566,0
567,","
588,"."
589,","
568,""""
570,
571,
569,0
592,0
599,1000
560,5
pProcessName
pUser
pErrors
pPrologNow
pMessage
561,5
2
2
1
1
2
590,5
pProcessName,"0"
pUser,"0"
pErrors,0
pPrologNow,0
pMessage,"0"
637,5
pProcessName,"GetProcessName"
pUser,"Tm1User"
pErrors,"nErrors"
pPrologNow,"Now"
pMessage,"pMessage"
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,32
## Process to write to logging cube 

# put in prolog of process to log:
# pPrologNow = Now; 

# put in epilog of process to log:
# ExecuteProcess('Process Control Logging', 'pProcessName', GetProcessName, 'pUser', tm1user, 'pPrologNow', pPrologNow, 'pErrors', nErrors, 'pMessage', pMessage);
# pMessage and nErrors must be defined in the process to log with exeption handling.

User = ATTRS( '}clients', pUser, '}TM1_DefaultDisplayValue' );

# User from User() function in prolog of process to log
CellPutS( User, 'Process Control', pProcessName, 'Last Run By');

# Time prolog is ran from Now function in prolog of proces to log
CellPutN( pPrologNow, 'Process Control', pProcessName, 'Last Run Time'  );


# Time difference between end of epilog and start of prolog
Elapsed = pPrologNow-Now;
CellPutN( 864*(Now-pPrologNow), 'Process Control', pProcessName, 'Time Taken'  );

# Number of errors counted in exception handling of process to log and passed as parameter.
CellPutN( pErrors, 'Process Control', pProcessName, 'Number of Errors'  );

# Message as defined in process to log
CellPutS( pMessage, 'Process Control', pProcessName, 'Message'  );





573,1

574,1

575,1

576,_ParameterConstraints=e30=
930,0
638,1
804,0
1217,0
900,
901,
902,
938,0
937,
936,
935,
934,
932,0
933,0
903,
906,
929,
907,
908,
904,0
905,0
909,0
911,
912,
913,
914,
915,
916,
917,0
918,1
919,0
920,50000
921,""
922,""
923,0
924,""
925,""
926,""
927,""
