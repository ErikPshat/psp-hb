
/*
 *   Recovery Flasher
 *   by ---==> HELLCAT <==---
 *
 *   Kernel Helper Module
 *   Header Include
 *
 */
 
void hcRfHelperGetMoboVersions( int* baryon, int* tachyon, int* fuseid_high, int* fuseid_low );
int hcRfHelperLoadStartModule( char *module );
u32 hcRfHelperPspFindProc(const char* szMod, const char* szLib, u32 nid);
int hcRfHelperIoBridgeUnassign( char* dev );
int hcRfHelperRebootToUpdater( void );
int hcRfHelperIoBridgeLFatfmt( int flash, int UseUpdaterModule );
int hcRfHelperInitMangleSyscall( void );
int hcRfHelperPspEncrypt( u32 *buf, int size );
void hcRfHelperPatchLFatEncryption( int patch_type );
int hcRfHelperIoBridgeWriteFile(char* file, void* buffer, int size);
int hcRfHelperIoBridgeUnloadModule( char* module );
void hfRfHelperPoweroff( void );
int hcRfHelperLaunchEBOOT( char* path );
int hcRfHelperPspDecryptSC(u32 *buf, int size);
int hcRfHelperDumpNandIplToBuffer( u8* buffer );
int hcRfHelperBatSetSerial(char* serial);
void hcRfHelperBatGetSerial(char* serial);
int hcRfHelperDumpNandBlockRangeToBuffer( u8* buffer, int startblock, int blockcount );
int hcRfHelperWriteNandBlockRange( u8* user, u8* spare, int startblock, int blockcount );
