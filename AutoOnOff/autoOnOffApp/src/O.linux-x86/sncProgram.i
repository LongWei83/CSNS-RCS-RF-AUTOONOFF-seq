# 1 "../sncProgram.st"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "../sncProgram.st"
# 1 "./../sncExample.stt" 1
program sncExample
double interval;
double statusFlag;
string logMsg;
double pvToSet;
int pvToSwitch;
double parameters[36];
double process_parameters[96];
int devNo = 0;
string pvName;

assign parameters[0] to "AutoOnOff:Parameter0";
assign parameters[1] to "AutoOnOff:Parameter1";
assign parameters[2] to "AutoOnOff:Parameter2";
assign parameters[3] to "AutoOnOff:Parameter3";
assign parameters[4] to "AutoOnOff:Parameter4";
assign parameters[5] to "AutoOnOff:Parameter5";
assign parameters[6] to "AutoOnOff:Parameter6";
assign parameters[7] to "AutoOnOff:Parameter7";
assign parameters[8] to "AutoOnOff:Parameter8";
assign parameters[9] to "AutoOnOff:Parameter9";
assign parameters[10] to "AutoOnOff:Parameter10";
assign parameters[11] to "AutoOnOff:Parameter11";
assign parameters[12] to "AutoOnOff:Parameter12";
assign parameters[13] to "AutoOnOff:Parameter13";
assign parameters[14] to "AutoOnOff:Parameter14";
assign parameters[15] to "AutoOnOff:Parameter15";
assign parameters[16] to "AutoOnOff:Parameter16";
assign parameters[17] to "AutoOnOff:Parameter17";
assign parameters[18] to "AutoOnOff:Parameter18";
assign parameters[19] to "AutoOnOff:Parameter19";
assign parameters[20] to "AutoOnOff:Parameter20";
assign parameters[21] to "AutoOnOff:Parameter21";
assign parameters[22] to "AutoOnOff:Parameter22";
assign parameters[23] to "AutoOnOff:Parameter23";
assign parameters[24] to "AutoOnOff:Parameter24";
assign parameters[25] to "AutoOnOff:Parameter25";
assign parameters[26] to "AutoOnOff:Parameter26";
assign parameters[27] to "AutoOnOff:Parameter27";
assign parameters[28] to "AutoOnOff:Parameter28";
assign parameters[29] to "AutoOnOff:Parameter29";
assign parameters[30] to "AutoOnOff:Parameter30";
assign parameters[31] to "AutoOnOff:Parameter31";
assign parameters[32] to "AutoOnOff:Parameter32";
assign parameters[33] to "AutoOnOff:Parameter33";
assign parameters[34] to "AutoOnOff:Parameter34";
assign parameters[35] to "AutoOnOff:Parameter35";

assign process_parameters[0] to "AutoOnOff:Process_Parameter0";
assign process_parameters[1] to "AutoOnOff:Process_Parameter1";
assign process_parameters[2] to "AutoOnOff:Process_Parameter2";
assign process_parameters[3] to "AutoOnOff:Process_Parameter3";
assign process_parameters[4] to "AutoOnOff:Process_Parameter4";
assign process_parameters[5] to "AutoOnOff:Process_Parameter5";
assign process_parameters[6] to "AutoOnOff:Process_Parameter6";
assign process_parameters[7] to "AutoOnOff:Process_Parameter7";
assign process_parameters[8] to "AutoOnOff:Process_Parameter8";
assign process_parameters[9] to "AutoOnOff:Process_Parameter9";
assign process_parameters[10] to "AutoOnOff:Process_Parameter10";
assign process_parameters[11] to "AutoOnOff:Process_Parameter11";

assign process_parameters[12] to "AutoOnOff:Process_Parameter12";
assign process_parameters[13] to "AutoOnOff:Process_Parameter13";
assign process_parameters[14] to "AutoOnOff:Process_Parameter14";
assign process_parameters[15] to "AutoOnOff:Process_Parameter15";
assign process_parameters[16] to "AutoOnOff:Process_Parameter16";
assign process_parameters[17] to "AutoOnOff:Process_Parameter17";
assign process_parameters[18] to "AutoOnOff:Process_Parameter18";
assign process_parameters[19] to "AutoOnOff:Process_Parameter19";
assign process_parameters[20] to "AutoOnOff:Process_Parameter20";
assign process_parameters[21] to "AutoOnOff:Process_Parameter21";
assign process_parameters[22] to "AutoOnOff:Process_Parameter22";
assign process_parameters[23] to "AutoOnOff:Process_Parameter23";

assign process_parameters[24] to "AutoOnOff:Process_Parameter24";
assign process_parameters[25] to "AutoOnOff:Process_Parameter25";
assign process_parameters[26] to "AutoOnOff:Process_Parameter26";
assign process_parameters[27] to "AutoOnOff:Process_Parameter27";
assign process_parameters[28] to "AutoOnOff:Process_Parameter28";
assign process_parameters[29] to "AutoOnOff:Process_Parameter29";
assign process_parameters[30] to "AutoOnOff:Process_Parameter30";
assign process_parameters[31] to "AutoOnOff:Process_Parameter31";
assign process_parameters[32] to "AutoOnOff:Process_Parameter32";
assign process_parameters[33] to "AutoOnOff:Process_Parameter33";
assign process_parameters[34] to "AutoOnOff:Process_Parameter34";
assign process_parameters[35] to "AutoOnOff:Process_Parameter35";

assign process_parameters[36] to "AutoOnOff:Process_Parameter36";
assign process_parameters[37] to "AutoOnOff:Process_Parameter37";
assign process_parameters[38] to "AutoOnOff:Process_Parameter38";
assign process_parameters[39] to "AutoOnOff:Process_Parameter39";
assign process_parameters[40] to "AutoOnOff:Process_Parameter40";
assign process_parameters[41] to "AutoOnOff:Process_Parameter41";
assign process_parameters[42] to "AutoOnOff:Process_Parameter42";
assign process_parameters[43] to "AutoOnOff:Process_Parameter43";
assign process_parameters[44] to "AutoOnOff:Process_Parameter44";
assign process_parameters[45] to "AutoOnOff:Process_Parameter45";
assign process_parameters[46] to "AutoOnOff:Process_Parameter46";
assign process_parameters[47] to "AutoOnOff:Process_Parameter47";

assign process_parameters[48] to "AutoOnOff:Process_Parameter48";
assign process_parameters[49] to "AutoOnOff:Process_Parameter49";
assign process_parameters[50] to "AutoOnOff:Process_Parameter50";
assign process_parameters[51] to "AutoOnOff:Process_Parameter51";
assign process_parameters[52] to "AutoOnOff:Process_Parameter52";
assign process_parameters[53] to "AutoOnOff:Process_Parameter53";
assign process_parameters[54] to "AutoOnOff:Process_Parameter54";
assign process_parameters[55] to "AutoOnOff:Process_Parameter55";
assign process_parameters[56] to "AutoOnOff:Process_Parameter56";
assign process_parameters[57] to "AutoOnOff:Process_Parameter57";
assign process_parameters[58] to "AutoOnOff:Process_Parameter58";
assign process_parameters[59] to "AutoOnOff:Process_Parameter59";

assign process_parameters[60] to "AutoOnOff:Process_Parameter60";
assign process_parameters[61] to "AutoOnOff:Process_Parameter61";
assign process_parameters[62] to "AutoOnOff:Process_Parameter62";
assign process_parameters[63] to "AutoOnOff:Process_Parameter63";
assign process_parameters[64] to "AutoOnOff:Process_Parameter64";
assign process_parameters[65] to "AutoOnOff:Process_Parameter65";
assign process_parameters[66] to "AutoOnOff:Process_Parameter66";
assign process_parameters[67] to "AutoOnOff:Process_Parameter67";
assign process_parameters[68] to "AutoOnOff:Process_Parameter68";
assign process_parameters[69] to "AutoOnOff:Process_Parameter69";
assign process_parameters[70] to "AutoOnOff:Process_Parameter70";
assign process_parameters[71] to "AutoOnOff:Process_Parameter71";

assign process_parameters[72] to "AutoOnOff:Process_Parameter72";
assign process_parameters[73] to "AutoOnOff:Process_Parameter73";
assign process_parameters[74] to "AutoOnOff:Process_Parameter74";
assign process_parameters[75] to "AutoOnOff:Process_Parameter75";
assign process_parameters[76] to "AutoOnOff:Process_Parameter76";
assign process_parameters[77] to "AutoOnOff:Process_Parameter77";
assign process_parameters[78] to "AutoOnOff:Process_Parameter78";
assign process_parameters[79] to "AutoOnOff:Process_Parameter79";
assign process_parameters[80] to "AutoOnOff:Process_Parameter80";
assign process_parameters[81] to "AutoOnOff:Process_Parameter81";
assign process_parameters[82] to "AutoOnOff:Process_Parameter82";
assign process_parameters[83] to "AutoOnOff:Process_Parameter83";

assign process_parameters[84] to "AutoOnOff:Process_Parameter84";
assign process_parameters[85] to "AutoOnOff:Process_Parameter85";
assign process_parameters[86] to "AutoOnOff:Process_Parameter86";
assign process_parameters[87] to "AutoOnOff:Process_Parameter87";
assign process_parameters[88] to "AutoOnOff:Process_Parameter88";
assign process_parameters[89] to "AutoOnOff:Process_Parameter89";
assign process_parameters[90] to "AutoOnOff:Process_Parameter90";
assign process_parameters[91] to "AutoOnOff:Process_Parameter91";
assign process_parameters[92] to "AutoOnOff:Process_Parameter92";
assign process_parameters[93] to "AutoOnOff:Process_Parameter93";
assign process_parameters[94] to "AutoOnOff:Process_Parameter94";
assign process_parameters[95] to "AutoOnOff:Process_Parameter95";


assign logMsg to "AutoOnOff:logMsg";
assign statusFlag to "AutoOnOff:StatusFlag";
assign interval to "AutoOnOff:Interval";
assign devNo to "AutoOnOff:CavityNum";

assign pvToSet to "";
assign pvToSwitch to "";
monitor interval;
monitor devNo;
monitor statusFlag;


ss ssOnOff {
    state standBy {
 when (statusFlag == 0 && delay(3)) {
     sprintf(logMsg,"StandBy...");
     pvPut(logMsg);
 } state standBy

 when (statusFlag == 1 && (devNo == 1 || devNo == 2 || devNo == 3 || devNo == 4 || devNo == 5 || devNo == 6 || devNo == 7 || devNo == 8)) {
     printf("AutoOnOff: Turn On System: OnInit\n");
 } state OnInit

 when (statusFlag == 10 && (devNo == 1 || devNo == 2 || devNo == 3 || devNo == 4 || devNo == 5 || devNo == 6 || devNo == 7 || devNo == 8)) {
     printf("AutoOnOff: Turn Off System: OffInit\n");
 } state OffInit
    }
    state OnInit {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(interval)) {
     sprintf(logMsg,"AutoOnOff:rcsRf%d: On Init...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:fixFrequency_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[0]);
     pvToSet = parameters[0];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:workPeriod_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[1]);
     pvToSet = parameters[1];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:amp_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[2]);
     pvToSet = parameters[2];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:FF_Delay_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[3]);
     pvToSet = parameters[3];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:ampCoefficient_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[5]);
     pvToSet = parameters[5];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:ampPSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[6]);
     pvToSet = parameters[6];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:ampISet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[7]);
     pvToSet = parameters[7];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:biasSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[8]);
     pvToSet = parameters[8];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:fixTuningAngle_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[9]);
     pvToSet = parameters[9];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tunePSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[10]);
     pvToSet = parameters[10];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneISet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[11]);
     pvToSet = parameters[11];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneISet1_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[12]);
     pvToSet = parameters[12];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneISet2_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[13]);
     pvToSet = parameters[13];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneISet3_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[14]);
     pvToSet = parameters[14];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:frontBiasSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[15]);
     pvToSet = parameters[15];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:frontFixTuningAngle_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[16]);
     pvToSet = parameters[16];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:frontTunePSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[17]);
     pvToSet = parameters[17];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:frontTuneISet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[18]);
     pvToSet = parameters[18];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:initial_Phase_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[19]);
     pvToSet = parameters[19];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:phase_p_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[20]);
     pvToSet = parameters[20];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:phase_i_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[21]);
     pvToSet = parameters[21];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:pointSweep_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:sweepOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:intEnable_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:sgMode_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:ampOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:ampFFOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:ampModifyOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneFFOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneModifyOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:frontTuneOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:phaseOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:phaseFFOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:phaseModifyOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:rfReset_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:drvReset_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:rfReset_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:drvReset_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     printf("AutoOnOff: On Init System: End\n");
 } state OnInit2
    }
    state OnInit2 {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
        when (devNo == 1) {
 } state OnModify
        when (devNo == 2) {
            sprintf(pvName,"AutoOnOff:rcsRf%d:biasSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[22]);
     pvToSet = parameters[22];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);
     sprintf(pvName,"AutoOnOff:rcsRf%d:frontBiasSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[23]);
     pvToSet = parameters[23];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);
 } state OnModify
        when (devNo == 3) {
            sprintf(pvName,"AutoOnOff:rcsRf%d:biasSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[24]);
     pvToSet = parameters[24];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);
     sprintf(pvName,"AutoOnOff:rcsRf%d:frontBiasSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[25]);
     pvToSet = parameters[25];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);
 } state OnModify
        when (devNo == 4) {
            sprintf(pvName,"AutoOnOff:rcsRf%d:biasSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[26]);
     pvToSet = parameters[26];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);
     sprintf(pvName,"AutoOnOff:rcsRf%d:frontBiasSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[27]);
     pvToSet = parameters[27];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);
 } state OnModify
        when (devNo == 5) {
            sprintf(pvName,"AutoOnOff:rcsRf%d:biasSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[28]);
     pvToSet = parameters[28];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);
     sprintf(pvName,"AutoOnOff:rcsRf%d:frontBiasSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[29]);
     pvToSet = parameters[29];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);
 } state OnModify
        when (devNo == 6) {
            sprintf(pvName,"AutoOnOff:rcsRf%d:biasSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[30]);
     pvToSet = parameters[30];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);
     sprintf(pvName,"AutoOnOff:rcsRf%d:frontBiasSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[31]);
     pvToSet = parameters[31];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);
 } state OnModify
        when (devNo == 7) {
            sprintf(pvName,"AutoOnOff:rcsRf%d:biasSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[32]);
     pvToSet = parameters[32];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);
     sprintf(pvName,"AutoOnOff:rcsRf%d:frontBiasSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[33]);
     pvToSet = parameters[33];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);
 } state OnModify
        when (devNo == 8) {
            sprintf(pvName,"AutoOnOff:rcsRf%d:biasSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[34]);
     pvToSet = parameters[34];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);
     sprintf(pvName,"AutoOnOff:rcsRf%d:frontBiasSet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(parameters[35]);
     pvToSet = parameters[35];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);
 } state OnModify
    }
    state OnModify {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(interval)) {
     printf("AutoOnOff: Turn On System: Turn On Modify\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Turn On Modify...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:ampModifyOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneModifyOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:phaseModifyOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     printf("AutoOnOff: Turn On System: Turn On Modify End\n");
 } state OnReset
    }
    state OnReset {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(interval)) {
     printf("AutoOnOff: Turn On System: Reset System\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Reset System...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:rfReset_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:drvReset_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:rfReset_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:drvReset_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     printf("AutoOnOff: Turn On System: Reset System End\n");
 } state OnAmpPoint
    }
    state OnAmpPoint {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(1)) {
     printf("AutoOnOff: Turn On System: Set Amp Point Value\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Set Amp Point...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:amp_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(process_parameters[12*(devNo-1)+0]);
     pvToSet = process_parameters[12*(devNo-1)+0];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     printf("AutoOnOff: Turn On System: Set Amp Point Value End\n");
 } state OnCloseTuneLoop
    }
    state OnCloseTuneLoop {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(1)) {
     printf("AutoOnOff: Turn On System: Close Tune Loop\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Close Tune Loop...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     printf("AutoOnOff: Turn On System: Close Tune Loop End\n");
 } state OnCloseGridTune
    }
    state OnCloseGridTune {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(1)) {
     printf("AutoOnOff: Turn On System: Close Grid Tune\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Close Grid Tune...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:frontTuneOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     printf("AutoOnOff: Turn On System: Close Grid Tune End\n");
 } state OnTuneFF
    }
    state OnTuneFF {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(interval)) {
     printf("AutoOnOff: Turn On System: Turn On Tune FF\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Turn On Tune FF...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneFFOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     printf("AutoOnOff: Turn On System: Turn On Tune FF End\n");
 } state OnTuneMOff
    }
    state OnTuneMOff {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(interval*1.6)) {
     printf("AutoOnOff: Turn On System: Turn Off Tune M\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Turn Off Tune M...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneModifyOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     printf("AutoOnOff: Turn On System: Turn Off Tune M End\n");
 } state OnGridTuneISet
    }
    state OnGridTuneISet {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(interval)) {
     printf("AutoOnOff: Turn On System: Tune Grid I Set\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Grid Tune I Set...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:frontTuneISet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(process_parameters[12*(devNo-1)+1]);
     pvToSet = process_parameters[12*(devNo-1)+1];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     printf("AutoOnOff: Turn On System: Tune I Set End\n");
 } state OnCloseAmpLoop
    }
    state OnCloseAmpLoop {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(interval)) {
     printf("AutoOnOff: Turn On System: Close Amp Loop\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Close Amp Loop...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:ampOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     printf("AutoOnOff: Turn On System: Close Amp Loop End\n");
 } state OnTuneISet
    }
    state OnTuneISet {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(interval)) {
     printf("AutoOnOff: Turn On System: Tune I Set\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Tune I Set...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneISet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(process_parameters[12*(devNo-1)+2]);
     pvToSet = process_parameters[12*(devNo-1)+2];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneISet1_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(process_parameters[12*(devNo-1)+3]);
     pvToSet = process_parameters[12*(devNo-1)+3];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneISet2_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(process_parameters[12*(devNo-1)+4]);
     pvToSet = process_parameters[12*(devNo-1)+4];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneISet3_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(process_parameters[12*(devNo-1)+5]);
     pvToSet = process_parameters[12*(devNo-1)+5];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     printf("AutoOnOff: Turn On System: Tune I Set End\n");
 } state OnAmpFF
    }
    state OnAmpFF {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(interval)) {
     printf("AutoOnOff: Turn On System: Turn On Amp FF\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Turn On Amp FF...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:ampFFOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     printf("AutoOnOff: Turn On System: Turn On Amp FF End\n");
 } state OnAmpCoefficUp1
    }
    state OnAmpCoefficUp1 {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(1)) {
     printf("AutoOnOff: Turn On System: Amp Coeffic Up\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Amp Coeffic Up...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:ampCoefficient_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(process_parameters[12*(devNo-1)+6]);
     pvToSet = process_parameters[12*(devNo-1)+6];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     printf("AutoOnOff: Turn On System: Amp Coeffic Up 1 End\n");
 } state OnAmpCoefficUp2
    }
    state OnAmpCoefficUp2 {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(1)) {
     printf("AutoOnOff: Turn On System: Amp Coeffic Up\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Amp Coeffic Up...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:ampCoefficient_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(process_parameters[12*(devNo-1)+7]);
     pvToSet = process_parameters[12*(devNo-1)+7];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     printf("AutoOnOff: Turn On System: Amp Coeffic Up 2 End\n");
 } state OnAmpCoefficUp3
    }
    state OnAmpCoefficUp3 {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(1)) {
     printf("AutoOnOff: Turn On System: Amp Coeffic Up\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Amp Coeffic Up...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:ampCoefficient_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(process_parameters[12*(devNo-1)+8]);
     pvToSet = process_parameters[12*(devNo-1)+8];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     printf("AutoOnOff: Turn On System: Amp Coeffic Up 3 End\n");
 } state OnTuneComplexI
    }
    state OnTuneComplexI {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(1)) {
     printf("AutoOnOff: Turn On System: Tune Complex I\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Tune Complex I...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:frontTuneISet_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(process_parameters[12*(devNo-1)+9]);
     pvToSet = process_parameters[12*(devNo-1)+9];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneISet3_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(process_parameters[12*(devNo-1)+10]);
     pvToSet = process_parameters[12*(devNo-1)+10];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);

     printf("AutoOnOff: Turn On System: Tune Complex I End\n");
 } state OnTuneFFAgain
    }
    state OnTuneFFAgain {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(1)) {
     printf("AutoOnOff: Turn On System: Tune FF Again\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Tune FF Again...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneModifyOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     printf("AutoOnOff: Turn On System: Tune FF Again End\n");
 } state OnClosePhaseLoop
    }
    state OnClosePhaseLoop {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(interval)) {
     printf("AutoOnOff: Turn On System: Close Phase Loop\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Close Phase Loop...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:phaseOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     printf("AutoOnOff: Turn On System: Close Phase Loop End\n");
 } state OnPhaseFF
    }
    state OnPhaseFF {
 when (statusFlag == 10) {
     printf("AutoOnOff: Turn On System: Interrupt!!!\n");
     sprintf(logMsg,"rcsRf%d: Turn On Interrupt!!!",devNo);
     pvPut(logMsg);
 }state standBy
 when (delay(interval)) {
     printf("AutoOnOff: Turn On System: Turn On Phase FF\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Turn On Phase FF...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:phaseFFOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 1;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     printf("AutoOnOff: Turn On System: Turn On Phase FF End\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Turn On System End",devNo);
     pvPut(logMsg);
     printf("AutoOnOff: Turn On System: Turn On System End\n");
     statusFlag = 0;
     pvPut(statusFlag);
 } state standBy
    }
    state OffInit {
 when (delay(0.5)) {
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Off Init",devNo);
     pvPut(logMsg);

     printf("AutoOnOff: Turn Off System: Open Phase Loop...\n");

     sprintf(pvName,"AutoOnOff:rcsRf%d:phaseOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     printf("AutoOnOff: Turn Off System: Open Phase Loop End\n");
 } state OffOpenGridLoop
    }
    state OffOpenGridLoop {
 when (delay(0.5)) {
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Open Grid Tune Loop",devNo);
     pvPut(logMsg);

     printf("AutoOnOff: Turn Off System: Open Grid Loop\n");

     sprintf(pvName,"AutoOnOff:rcsRf%d:frontTuneOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     printf("AutoOnOff: Turn Off System: Open Grid Tune Loop End\n");
 } state OffAmpZero
    }
    state OffAmpZero {
 when (delay(0.5)) {
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Amp Zero",devNo);
     pvPut(logMsg);
     printf("AutoOnOff: Turn Off System: Amp Zero\n");

     sprintf(pvName,"AutoOnOff:rcsRf%d:amp_set",devNo);
     pvAssign(pvToSet,pvName);
     pvGet(process_parameters[12*(devNo-1)+11]);
     pvToSet = process_parameters[12*(devNo-1)+11];
     pvPut(pvToSet);
     printf("AutoOnOff: %s is set to: %f\n",pvName, pvToSet);
 } state OffOpenFFM
    }
    state OffOpenFFM {
 when (delay(0.5)) {
     printf("AutoOnOff: Turn Off System: Turn Off Modify\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Turn Off Modify...",devNo);
     pvPut(logMsg);

     sprintf(pvName,"AutoOnOff:rcsRf%d:ampModifyOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneModifyOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:phaseModifyOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:tuneFFOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:ampFFOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     sprintf(pvName,"AutoOnOff:rcsRf%d:phaseFFOption_set",devNo);
     pvAssign(pvToSwitch,pvName);
     pvToSwitch = 0;
     pvPut(pvToSwitch);
     printf("AutoOnOff: %s is set to: %d\n",pvName, pvToSwitch);

     printf("AutoOnOff: Turn Off System: Amp Zero End\n");
     printf("AutoOnOff: Turn Off System: Turn Off System End\n");
     sprintf(logMsg,"AutoOnOff:rcsRf%d: Turn Off System End",devNo);
     pvPut(logMsg);
     statusFlag = 0;
     pvPut(statusFlag);
 } state standBy
    }
}
# 1 "../sncProgram.st" 2
