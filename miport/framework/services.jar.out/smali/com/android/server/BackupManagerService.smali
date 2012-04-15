.class Lcom/android/server/BackupManagerService;
.super Landroid/app/backup/IBackupManager$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$4;,
        Lcom/android/server/BackupManagerService$ActiveRestoreSession;,
        Lcom/android/server/BackupManagerService$PerformInitializeTask;,
        Lcom/android/server/BackupManagerService$PerformClearTask;,
        Lcom/android/server/BackupManagerService$PerformRestoreTask;,
        Lcom/android/server/BackupManagerService$RestoreState;,
        Lcom/android/server/BackupManagerService$PerformFullRestoreTask;,
        Lcom/android/server/BackupManagerService$RestorePolicy;,
        Lcom/android/server/BackupManagerService$FileMetadata;,
        Lcom/android/server/BackupManagerService$PerformFullBackupTask;,
        Lcom/android/server/BackupManagerService$PerformBackupTask;,
        Lcom/android/server/BackupManagerService$BackupState;,
        Lcom/android/server/BackupManagerService$BackupRestoreTask;,
        Lcom/android/server/BackupManagerService$ClearDataObserver;,
        Lcom/android/server/BackupManagerService$RunInitializeReceiver;,
        Lcom/android/server/BackupManagerService$RunBackupReceiver;,
        Lcom/android/server/BackupManagerService$BackupHandler;,
        Lcom/android/server/BackupManagerService$Operation;,
        Lcom/android/server/BackupManagerService$FullRestoreParams;,
        Lcom/android/server/BackupManagerService$FullBackupParams;,
        Lcom/android/server/BackupManagerService$FullParams;,
        Lcom/android/server/BackupManagerService$ClearParams;,
        Lcom/android/server/BackupManagerService$RestoreParams;,
        Lcom/android/server/BackupManagerService$RestoreGetSetsParams;,
        Lcom/android/server/BackupManagerService$BackupRequest;
    }
.end annotation


# static fields
.field static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field static final BACKUP_FILE_VERSION:I = 0x1

.field private static final BACKUP_INTERVAL:J = 0x36ee80L

.field static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field static final BACKUP_MANIFEST_VERSION:I = 0x1

.field static final COMPRESS_FULL_BACKUPS:Z = true

.field static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field private static final DEBUG:Z = true

.field static final ENCRYPTION_ALGORITHM_NAME:Ljava/lang/String; = "AES-256"

.field private static final FIRST_BACKUP_INTERVAL:J = 0x2932e00L

.field private static final FUZZ_MILLIS:I = 0x493e0

.field static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field private static final MORE_DEBUG:Z = false

.field static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field private static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field static final MSG_OP_COMPLETE:I = 0x15

.field private static final MSG_RESTORE_TIMEOUT:I = 0x8

.field private static final MSG_RUN_BACKUP:I = 0x1

.field private static final MSG_RUN_CLEAR:I = 0x4

.field private static final MSG_RUN_FULL_BACKUP:I = 0x2

.field private static final MSG_RUN_FULL_RESTORE:I = 0xa

.field private static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field private static final MSG_RUN_INITIALIZE:I = 0x5

.field private static final MSG_RUN_RESTORE:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x7

.field static final OP_ACKNOWLEDGED:I = 0x1

.field static final OP_PENDING:I = 0x0

.field static final OP_TIMEOUT:I = -0x1

.field static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field static final PBKDF2_HASH_ROUNDS:I = 0x2710

.field static final PBKDF2_KEY_SIZE:I = 0x100

.field static final PBKDF2_SALT_SIZE:I = 0x200

.field private static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field private static final RUN_CLEAR_ACTION:Ljava/lang/String; = "android.app.backup.intent.CLEAR"

.field private static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field private static final TAG:Ljava/lang/String; = "BackupManagerService"

.field static final TIMEOUT_BACKUP_INTERVAL:J = 0x7530L

.field static final TIMEOUT_FULL_BACKUP_INTERVAL:J = 0x493e0L

.field static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field static final TIMEOUT_INTERVAL:J = 0x2710L

.field static final TIMEOUT_RESTORE_INTERVAL:J = 0xea60L

.field static final TIMEOUT_SHARED_BACKUP_INTERVAL:J = 0x1b7740L


# instance fields
.field mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

.field private mActivityManager:Landroid/app/IActivityManager;

.field final mAgentConnectLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAncestralToken:J

.field mAutoRestore:Z

.field mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

.field mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field volatile mBackupRunning:Z

.field mBaseStateDir:Ljava/io/File;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClearDataLock:Ljava/lang/Object;

.field volatile mClearingData:Z

.field mConnectedAgent:Landroid/app/IBackupAgent;

.field volatile mConnecting:Z

.field private mContext:Landroid/content/Context;

.field final mCurrentOpLock:Ljava/lang/Object;

.field final mCurrentOperations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/BackupManagerService$Operation;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentToken:J

.field mCurrentTransport:Ljava/lang/String;

.field mDataDir:Ljava/io/File;

.field mEnabled:Z

.field private mEverStored:Ljava/io/File;

.field mEverStoredApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mFullConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/BackupManagerService$FullParams;",
            ">;"
        }
    .end annotation
.end field

.field mGoogleConnection:Landroid/content/ServiceConnection;

.field mGoogleTransport:Lcom/android/internal/backup/IBackupTransport;

.field mHandlerThread:Landroid/os/HandlerThread;

.field mJournal:Ljava/io/File;

.field mJournalDir:Ljava/io/File;

.field volatile mLastBackupPass:J

.field mLocalTransport:Lcom/android/internal/backup/IBackupTransport;

.field private mMountService:Landroid/os/storage/IMountService;

.field volatile mNextBackupPass:J

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPasswordHash:Ljava/lang/String;

.field private mPasswordHashFile:Ljava/io/File;

.field private mPasswordSalt:[B

.field mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mPendingInits:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field mProvisioned:Z

.field final mQueueLock:Ljava/lang/Object;

.field private final mRng:Ljava/security/SecureRandom;

.field mRunBackupIntent:Landroid/app/PendingIntent;

.field mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field mRunInitIntent:Landroid/app/PendingIntent;

.field mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field mTokenFile:Ljava/io/File;

.field final mTokenGenerator:Ljava/util/Random;

.field final mTransports:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/backup/IBackupTransport;",
            ">;"
        }
    .end annotation
.end field

.field mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 25
    .parameter "context"

    .prologue
    .line 657
    invoke-direct/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    .line 198
    new-instance v20, Landroid/os/HandlerThread;

    const-string v21, "backup"

    const/16 v22, 0xa

    invoke-direct/range {v20 .. v22}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 203
    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 218
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 225
    new-instance v20, Ljava/lang/Object;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 231
    new-instance v20, Ljava/lang/Object;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 239
    new-instance v20, Ljava/lang/Object;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 243
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    .line 366
    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    .line 367
    new-instance v20, Ljava/lang/Object;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    .line 368
    new-instance v20, Ljava/util/Random;

    invoke-direct/range {v20 .. v20}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 370
    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    .line 384
    new-instance v20, Ljava/security/SecureRandom;

    invoke-direct/range {v20 .. v20}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 399
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    .line 403
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 404
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 405
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 409
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    .line 1272
    new-instance v20, Lcom/android/server/BackupManagerService$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$1;-><init>(Lcom/android/server/BackupManagerService;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1338
    new-instance v20, Lcom/android/server/BackupManagerService$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService$2;-><init>(Lcom/android/server/BackupManagerService;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mGoogleConnection:Landroid/content/ServiceConnection;

    .line 658
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    .line 659
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 660
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 661
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 663
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/AlarmManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 664
    const-string v20, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PowerManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 665
    const-string v20, "mount"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/BackupManagerService;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 670
    new-instance v20, Landroid/os/HandlerThread;

    const-string v21, "backup"

    const/16 v22, 0xa

    invoke-direct/range {v20 .. v22}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/HandlerThread;->start()V

    .line 672
    new-instance v20, Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$BackupHandler;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "backup_enabled"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_3f8

    const/4 v4, 0x1

    .line 677
    .local v4, areEnabled:Z
    :goto_17f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "backup_provisioned"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_3fb

    const/16 v20, 0x1

    :goto_18f
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 679
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "backup_auto_restore"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_3ff

    const/16 v20, 0x1

    :goto_1a5
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    .line 683
    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v21

    const-string v22, "backup"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 685
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    .line 687
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v21, v0

    const-string v22, "pwhash"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_234

    .line 689
    const/4 v8, 0x0

    .line 690
    .local v8, fin:Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 692
    .local v10, in:Ljava/io/DataInputStream;
    :try_start_1f0
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1fd
    .catchall {:try_start_1f0 .. :try_end_1fd} :catchall_421
    .catch Ljava/io/IOException; {:try_start_1f0 .. :try_end_1fd} :catch_403

    .line 693
    .end local v8           #fin:Ljava/io/FileInputStream;
    .local v9, fin:Ljava/io/FileInputStream;
    :try_start_1fd
    new-instance v11, Ljava/io/DataInputStream;

    new-instance v20, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20b
    .catchall {:try_start_1fd .. :try_end_20b} :catchall_463
    .catch Ljava/io/IOException; {:try_start_1fd .. :try_end_20b} :catch_46a

    .line 696
    .end local v10           #in:Ljava/io/DataInputStream;
    .local v11, in:Ljava/io/DataInputStream;
    :try_start_20b
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 697
    .local v18, saltLen:I
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 698
    .local v17, salt:[B
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 699
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 700
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mPasswordSalt:[B
    :try_end_22a
    .catchall {:try_start_20b .. :try_end_22a} :catchall_466
    .catch Ljava/io/IOException; {:try_start_20b .. :try_end_22a} :catch_46d

    .line 705
    if-eqz v11, :cond_22f

    :try_start_22c
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 706
    :cond_22f
    if-eqz v9, :cond_234

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_234
    .catch Ljava/io/IOException; {:try_start_22c .. :try_end_234} :catch_45d

    .line 714
    .end local v9           #fin:Ljava/io/FileInputStream;
    .end local v11           #in:Ljava/io/DataInputStream;
    .end local v17           #salt:[B
    .end local v18           #saltLen:I
    :cond_234
    :goto_234
    new-instance v20, Lcom/android/server/BackupManagerService$RunBackupReceiver;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    .line 715
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 716
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v20, "android.app.backup.intent.RUN"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const-string v21, "android.permission.BACKUP"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 720
    new-instance v20, Lcom/android/server/BackupManagerService$RunInitializeReceiver;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 721
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7           #filter:Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 722
    .restart local v7       #filter:Landroid/content/IntentFilter;
    const-string v20, "android.app.backup.intent.INIT"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    const-string v21, "android.permission.BACKUP"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 726
    new-instance v5, Landroid/content/Intent;

    const-string v20, "android.app.backup.intent.RUN"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 727
    .local v5, backupIntent:Landroid/content/Intent;
    const/high16 v20, 0x4000

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 728
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    .line 730
    new-instance v13, Landroid/content/Intent;

    const-string v20, "android.app.backup.intent.INIT"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .local v13, initIntent:Landroid/content/Intent;
    const/high16 v20, 0x4000

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 732
    const/16 v20, 0x5

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 735
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v21, v0

    const-string v22, "pending"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 737
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 740
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->initPackageTracking()V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 746
    const/16 v20, 0x0

    :try_start_314
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLocked(Ljava/lang/String;)V

    .line 747
    monitor-exit v21
    :try_end_31c
    .catchall {:try_start_314 .. :try_end_31c} :catchall_42d

    .line 752
    new-instance v20, Lcom/android/internal/backup/LocalTransport;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/backup/LocalTransport;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mLocalTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 753
    new-instance v15, Landroid/content/ComponentName;

    const-class v20, Lcom/android/internal/backup/LocalTransport;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 754
    .local v15, localName:Landroid/content/ComponentName;
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mLocalTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    .line 756
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mGoogleTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 757
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "backup_transport"

    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 759
    const-string v20, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_377

    .line 760
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 762
    :cond_377
    const-string v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Starting with transport "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    new-instance v19, Landroid/content/ComponentName;

    const-string v20, "com.google.android.backup"

    const-string v21, "com.google.android.backup.BackupTransportService"

    invoke-direct/range {v19 .. v21}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    .local v19, transportComponent:Landroid/content/ComponentName;
    :try_start_39e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 775
    .local v12, info:Landroid/content/pm/ApplicationInfo;
    iget v0, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_430

    .line 776
    const-string v20, "BackupManagerService"

    const-string v21, "Binding to Google transport"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    .line 778
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mGoogleConnection:Landroid/content/ServiceConnection;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v14, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_3db
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39e .. :try_end_3db} :catch_44b

    .line 789
    .end local v12           #info:Landroid/content/pm/ApplicationInfo;
    .end local v14           #intent:Landroid/content/Intent;
    :goto_3db
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->parseLeftoverJournals()V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const-string v22, "*backup*"

    invoke-virtual/range {v20 .. v22}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 795
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/BackupManagerService;->setBackupEnabled(Z)V

    .line 796
    return-void

    .line 675
    .end local v4           #areEnabled:Z
    .end local v5           #backupIntent:Landroid/content/Intent;
    .end local v7           #filter:Landroid/content/IntentFilter;
    .end local v13           #initIntent:Landroid/content/Intent;
    .end local v15           #localName:Landroid/content/ComponentName;
    .end local v19           #transportComponent:Landroid/content/ComponentName;
    :cond_3f8
    const/4 v4, 0x0

    goto/16 :goto_17f

    .line 677
    .restart local v4       #areEnabled:Z
    :cond_3fb
    const/16 v20, 0x0

    goto/16 :goto_18f

    .line 679
    :cond_3ff
    const/16 v20, 0x0

    goto/16 :goto_1a5

    .line 701
    .restart local v8       #fin:Ljava/io/FileInputStream;
    .restart local v10       #in:Ljava/io/DataInputStream;
    :catch_403
    move-exception v6

    .line 702
    .local v6, e:Ljava/io/IOException;
    :goto_404
    :try_start_404
    const-string v20, "BackupManagerService"

    const-string v21, "Unable to read saved backup pw hash"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40b
    .catchall {:try_start_404 .. :try_end_40b} :catchall_421

    .line 705
    if-eqz v10, :cond_410

    :try_start_40d
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 706
    :cond_410
    if-eqz v8, :cond_234

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_415
    .catch Ljava/io/IOException; {:try_start_40d .. :try_end_415} :catch_417

    goto/16 :goto_234

    .line 707
    :catch_417
    move-exception v6

    .line 708
    const-string v20, "BackupManagerService"

    const-string v21, "Unable to close streams"

    .end local v8           #fin:Ljava/io/FileInputStream;
    .end local v10           #in:Ljava/io/DataInputStream;
    :goto_41c
    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_234

    .line 704
    .end local v6           #e:Ljava/io/IOException;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    .restart local v10       #in:Ljava/io/DataInputStream;
    :catchall_421
    move-exception v20

    .line 705
    :goto_422
    if-eqz v10, :cond_427

    :try_start_424
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 706
    :cond_427
    if-eqz v8, :cond_42c

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_42c
    .catch Ljava/io/IOException; {:try_start_424 .. :try_end_42c} :catch_454

    .line 704
    :cond_42c
    :goto_42c
    throw v20

    .line 747
    .end local v8           #fin:Ljava/io/FileInputStream;
    .end local v10           #in:Ljava/io/DataInputStream;
    .restart local v5       #backupIntent:Landroid/content/Intent;
    .restart local v7       #filter:Landroid/content/IntentFilter;
    .restart local v13       #initIntent:Landroid/content/Intent;
    :catchall_42d
    move-exception v20

    :try_start_42e
    monitor-exit v21
    :try_end_42f
    .catchall {:try_start_42e .. :try_end_42f} :catchall_42d

    throw v20

    .line 780
    .restart local v12       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v15       #localName:Landroid/content/ComponentName;
    .restart local v19       #transportComponent:Landroid/content/ComponentName;
    :cond_430
    :try_start_430
    const-string v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Possible Google transport spoof: ignoring "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_430 .. :try_end_44a} :catch_44b

    goto :goto_3db

    .line 782
    .end local v12           #info:Landroid/content/pm/ApplicationInfo;
    :catch_44b
    move-exception v16

    .line 784
    .local v16, nnf:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "BackupManagerService"

    const-string v21, "Google transport not present"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3db

    .line 707
    .end local v5           #backupIntent:Landroid/content/Intent;
    .end local v7           #filter:Landroid/content/IntentFilter;
    .end local v13           #initIntent:Landroid/content/Intent;
    .end local v15           #localName:Landroid/content/ComponentName;
    .end local v16           #nnf:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19           #transportComponent:Landroid/content/ComponentName;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    .restart local v10       #in:Ljava/io/DataInputStream;
    :catch_454
    move-exception v6

    .line 708
    .restart local v6       #e:Ljava/io/IOException;
    const-string v21, "BackupManagerService"

    const-string v22, "Unable to close streams"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42c

    .line 707
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #fin:Ljava/io/FileInputStream;
    .end local v10           #in:Ljava/io/DataInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    .restart local v11       #in:Ljava/io/DataInputStream;
    .restart local v17       #salt:[B
    .restart local v18       #saltLen:I
    :catch_45d
    move-exception v6

    .line 708
    .restart local v6       #e:Ljava/io/IOException;
    const-string v20, "BackupManagerService"

    const-string v21, "Unable to close streams"

    goto :goto_41c

    .line 704
    .end local v6           #e:Ljava/io/IOException;
    .end local v11           #in:Ljava/io/DataInputStream;
    .end local v17           #salt:[B
    .end local v18           #saltLen:I
    .restart local v10       #in:Ljava/io/DataInputStream;
    :catchall_463
    move-exception v20

    move-object v8, v9

    .end local v9           #fin:Ljava/io/FileInputStream;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    goto :goto_422

    .end local v8           #fin:Ljava/io/FileInputStream;
    .end local v10           #in:Ljava/io/DataInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    .restart local v11       #in:Ljava/io/DataInputStream;
    :catchall_466
    move-exception v20

    move-object v10, v11

    .end local v11           #in:Ljava/io/DataInputStream;
    .restart local v10       #in:Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9           #fin:Ljava/io/FileInputStream;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    goto :goto_422

    .line 701
    .end local v8           #fin:Ljava/io/FileInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    :catch_46a
    move-exception v6

    move-object v8, v9

    .end local v9           #fin:Ljava/io/FileInputStream;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    goto :goto_404

    .end local v8           #fin:Ljava/io/FileInputStream;
    .end local v10           #in:Ljava/io/DataInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    .restart local v11       #in:Ljava/io/DataInputStream;
    :catch_46d
    move-exception v6

    move-object v10, v11

    .end local v11           #in:Ljava/io/DataInputStream;
    .restart local v10       #in:Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9           #fin:Ljava/io/FileInputStream;
    .restart local v8       #fin:Ljava/io/FileInputStream;
    goto :goto_404
.end method

.method static synthetic access$000(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/BackupManagerService;I)[B
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->randomBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/BackupManagerService;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/BackupManagerService;)Ljava/security/SecureRandom;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/BackupManagerService;[B)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/BackupManagerService;[B[BI)[B
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService;->makeKeyChecksum([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/BackupManagerService;Ljava/lang/String;)[B
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/BackupManagerService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/BackupManagerService;)Landroid/app/AlarmManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/BackupManagerService;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/BackupManagerService;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    return-void
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1374
    .local p2, targetPkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1375
    .local v1, pkg:Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_1a

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1376
    :cond_1a
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1377
    .local v3, uid:I
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1378
    .local v2, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v2, :cond_32

    .line 1379
    new-instance v2, Ljava/util/HashSet;

    .end local v2           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1380
    .restart local v2       #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1382
    :cond_32
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1385
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1386
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " never backed up; scheduling"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_4

    .line 1392
    .end local v1           #pkg:Landroid/content/pm/PackageInfo;
    .end local v2           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3           #uid:I
    :cond_67
    return-void
.end method

.method private buildCharArrayKey([C[BI)Ljavax/crypto/SecretKey;
    .registers 9
    .parameter "pwArray"
    .parameter "salt"
    .parameter "rounds"

    .prologue
    .line 984
    :try_start_0
    const-string v3, "PBKDF2WithHmacSHA1"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 985
    .local v1, keyFactory:Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v3, 0x100

    invoke-direct {v2, p1, p2, p3, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 986
    .local v2, ks:Ljava/security/spec/KeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_10
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_10} :catch_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_10} :catch_1c

    move-result-object v3

    .line 992
    .end local v1           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    .end local v2           #ks:Ljava/security/spec/KeySpec;
    :goto_11
    return-object v3

    .line 987
    :catch_12
    move-exception v0

    .line 988
    .local v0, e:Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "BackupManagerService"

    const-string v4, "Invalid key spec for PBKDF2!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    .end local v0           #e:Ljava/security/spec/InvalidKeySpecException;
    :goto_1a
    const/4 v3, 0x0

    goto :goto_11

    .line 989
    :catch_1c
    move-exception v0

    .line 990
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v3, "BackupManagerService"

    const-string v4, "PBKDF2 unavailable!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private buildPasswordHash(Ljava/lang/String;[BI)Ljava/lang/String;
    .registers 6
    .parameter "pw"
    .parameter "salt"
    .parameter "rounds"

    .prologue
    .line 996
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BackupManagerService;->buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 997
    .local v0, key:Ljavax/crypto/SecretKey;
    if-eqz v0, :cond_f

    .line 998
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 1000
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private buildPasswordKey(Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .registers 5
    .parameter "pw"
    .parameter "salt"
    .parameter "rounds"

    .prologue
    .line 979
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/BackupManagerService;->buildCharArrayKey([C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private byteArrayToHex([B)Ljava/lang/String;
    .registers 6
    .parameter "data"

    .prologue
    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1005
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 1006
    aget-byte v2, p1, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1008
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dataChangedImpl(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 4694
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 4695
    .local v0, targets:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 4696
    return-void
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 9
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4702
    .local p2, targets:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    const/16 v3, 0xb04

    invoke-static {v3, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 4704
    if-nez p2, :cond_34

    .line 4705
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dataChanged but no participant pkg=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4736
    :goto_33
    return-void

    .line 4710
    :cond_34
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4712
    :try_start_37
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 4715
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 4718
    new-instance v2, Lcom/android/server/BackupManagerService$BackupRequest;

    invoke-direct {v2, p0, p1}, Lcom/android/server/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    .line 4719
    .local v2, req:Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3b

    .line 4723
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V

    goto :goto_3b

    .line 4735
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #req:Lcom/android/server/BackupManagerService$BackupRequest;
    :catchall_62
    move-exception v3

    monitor-exit v4
    :try_end_64
    .catchall {:try_start_37 .. :try_end_64} :catchall_62

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_65
    :try_start_65
    monitor-exit v4
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_62

    goto :goto_33
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 10
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4742
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_27

    .line 4744
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 4745
    :try_start_16
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    monitor-exit v5

    .line 4761
    :goto_23
    return-object v4

    .line 4746
    :catchall_24
    move-exception v4

    monitor-exit v5
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_24

    throw v4

    .line 4751
    :cond_27
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4752
    .local v3, targets:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 4753
    :try_start_2f
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 4754
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_36
    if-ge v1, v0, :cond_48

    .line 4755
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 4756
    .local v2, s:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v2, :cond_45

    .line 4757
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4754
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 4760
    .end local v2           #s:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    :cond_48
    monitor-exit v5

    move-object v4, v3

    .line 4761
    goto :goto_23

    .line 4760
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_4b
    move-exception v4

    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_4b

    throw v4
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 28
    .parameter "pw"

    .prologue
    .line 5699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "android.permission.DUMP"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_47

    .line 5701
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Permission Denial: can\'t dump Backup Manager service from from pid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", uid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " without permission "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "android.permission.DUMP"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5771
    :goto_46
    return-void

    .line 5709
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 5710
    :try_start_4e
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Backup Manager is "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_26d

    const-string v22, "enabled"

    :goto_67
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " / "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    move/from16 v22, v0

    if-nez v22, :cond_271

    const-string v22, "not "

    :goto_83
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "provisioned / "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->size()I

    move-result v22

    if-nez v22, :cond_275

    const-string v22, "not "

    :goto_a3
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, "pending init"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5713
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Auto-restore is "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    move/from16 v22, v0

    if-eqz v22, :cond_279

    const-string v22, "enabled"

    :goto_d9
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5714
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    move/from16 v22, v0

    if-eqz v22, :cond_fd

    const-string v22, "Backup currently running"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5715
    :cond_fd
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Last backup pass started: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " (now = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v24, 0x29

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5717
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  next scheduled: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5719
    const-string v22, "Available transports:"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5720
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v5

    .local v5, arr$:[Ljava/lang/String;
    array-length v13, v5

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    move v12, v11

    .end local v5           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .local v12, i$:I
    :goto_17d
    if-ge v12, v13, :cond_2b2

    aget-object v19, v5, v12

    .line 5721
    .local v19, t:Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_27d

    const-string v22, "  * "

    :goto_198
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b3
    .catchall {:try_start_4e .. :try_end_1b3} :catchall_317

    .line 5723
    :try_start_1b3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v20

    .line 5724
    .local v20, transport:Lcom/android/internal/backup/IBackupTransport;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5725
    .local v7, dir:Ljava/io/File;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "       destination: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5726
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "       intent: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5727
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .local v6, arr$:[Ljava/io/File;
    array-length v14, v6

    .local v14, len$:I
    const/4 v11, 0x0

    .end local v12           #i$:I
    .restart local v11       #i$:I
    :goto_220
    if-ge v11, v14, :cond_2ad

    aget-object v9, v6, v11

    .line 5728
    .local v9, f:Ljava/io/File;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "       "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " - "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, " state bytes"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_26a
    .catchall {:try_start_1b3 .. :try_end_26a} :catchall_317
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_26a} :catch_281

    .line 5727
    add-int/lit8 v11, v11, 0x1

    goto :goto_220

    .line 5710
    .end local v6           #arr$:[Ljava/io/File;
    .end local v7           #dir:Ljava/io/File;
    .end local v9           #f:Ljava/io/File;
    .end local v11           #i$:I
    .end local v14           #len$:I
    .end local v19           #t:Ljava/lang/String;
    .end local v20           #transport:Lcom/android/internal/backup/IBackupTransport;
    :cond_26d
    :try_start_26d
    const-string v22, "disabled"

    goto/16 :goto_67

    :cond_271
    const-string v22, ""

    goto/16 :goto_83

    :cond_275
    const-string v22, ""

    goto/16 :goto_a3

    .line 5713
    :cond_279
    const-string v22, "disabled"

    goto/16 :goto_d9

    .line 5721
    .restart local v12       #i$:I
    .restart local v19       #t:Ljava/lang/String;
    :cond_27d
    const-string v22, "    "

    goto/16 :goto_198

    .line 5730
    .end local v12           #i$:I
    :catch_281
    move-exception v8

    .line 5731
    .local v8, e:Ljava/lang/Exception;
    const-string v22, "BackupManagerService"

    const-string v24, "Error in transport"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5732
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "        Error: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5720
    .end local v8           #e:Ljava/lang/Exception;
    :cond_2ad
    add-int/lit8 v11, v12, 0x1

    .restart local v11       #i$:I
    move v12, v11

    .end local v11           #i$:I
    .restart local v12       #i$:I
    goto/16 :goto_17d

    .line 5736
    .end local v19           #t:Ljava/lang/String;
    :cond_2b2
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Pending init: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12           #i$:I
    .local v11, i$:Ljava/util/Iterator;
    :goto_2e8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_31a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 5738
    .local v18, s:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2e8

    .line 5770
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v18           #s:Ljava/lang/String;
    :catchall_317
    move-exception v22

    monitor-exit v23
    :try_end_319
    .catchall {:try_start_26d .. :try_end_319} :catchall_317

    throw v22

    .line 5741
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_31a
    :try_start_31a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 5742
    .local v3, N:I
    const-string v22, "Participants:"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5743
    const/4 v10, 0x0

    .local v10, i:I
    :goto_32e
    if-ge v10, v3, :cond_394

    .line 5744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    .line 5745
    .local v21, uid:I
    const-string v22, "  uid: "

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5746
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 5747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashSet;

    .line 5748
    .local v15, participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_35e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_391

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 5749
    .local v4, app:Landroid/content/pm/ApplicationInfo;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_35e

    .line 5743
    .end local v4           #app:Landroid/content/pm/ApplicationInfo;
    :cond_391
    add-int/lit8 v10, v10, 0x1

    goto :goto_32e

    .line 5753
    .end local v15           #participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v21           #uid:I
    :cond_394
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ancestral packages: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    if-nez v22, :cond_401

    const-string v22, "none"

    :goto_3ad
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    if-eqz v22, :cond_410

    .line 5756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3d2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_410

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 5757
    .local v16, pkg:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3d2

    .line 5753
    .end local v16           #pkg:Ljava/lang/String;
    :cond_401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    goto :goto_3ad

    .line 5761
    :cond_410
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ever backed up: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_446
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_475

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 5763
    .restart local v16       #pkg:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_446

    .line 5766
    .end local v16           #pkg:Ljava/lang/String;
    :cond_475
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Pending backup: "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4af
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4de

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 5768
    .local v17, req:Lcom/android/server/BackupManagerService$BackupRequest;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4af

    .line 5770
    .end local v17           #req:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_4de
    monitor-exit v23
    :try_end_4df
    .catchall {:try_start_31a .. :try_end_4df} :catchall_317

    goto/16 :goto_46
.end method

.method private getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 7
    .parameter "transportName"

    .prologue
    .line 1589
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v2

    .line 1590
    :try_start_3
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    .line 1591
    .local v0, transport:Lcom/android/internal/backup/IBackupTransport;
    if-nez v0, :cond_25

    .line 1592
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested unavailable transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_25
    monitor-exit v2

    return-object v0

    .line 1595
    .end local v0           #transport:Lcom/android/internal/backup/IBackupTransport;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private hexToByteArray(Ljava/lang/String;)[B
    .registers 8
    .parameter "digits"

    .prologue
    .line 1012
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1013
    .local v0, bytes:I
    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_16

    .line 1014
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Hex string must have an even number of digits"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1017
    :cond_16
    new-array v2, v0, [B

    .line 1018
    .local v2, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_33

    .line 1019
    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1018
    add-int/lit8 v1, v1, 0x2

    goto :goto_19

    .line 1021
    :cond_33
    return-object v2
.end method

.method private initPackageTracking()V
    .registers 23

    .prologue
    .line 857
    const-string v19, "BackupManagerService"

    const-string v20, "Initializing package tracking"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    const-string v21, "ancestral"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTokenFile:Ljava/io/File;

    .line 862
    :try_start_1a
    new-instance v17, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mTokenFile:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "r"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 863
    .local v17, tf:Ljava/io/RandomAccessFile;
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v18

    .line 864
    .local v18, version:I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_73

    .line 865
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 866
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 868
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    .line 869
    .local v10, numPackages:I
    if-ltz v10, :cond_73

    .line 870
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 871
    const/4 v6, 0x0

    .local v6, i:I
    :goto_5f
    if-ge v6, v10, :cond_73

    .line 872
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v12

    .line 873
    .local v12, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 871
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    .line 877
    .end local v6           #i:I
    .end local v10           #numPackages:I
    .end local v12           #pkgName:Ljava/lang/String;
    :cond_73
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_76} :catch_f4
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_76} :catch_fe

    .line 888
    .end local v17           #tf:Ljava/io/RandomAccessFile;
    .end local v18           #version:I
    :goto_76
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    const-string v21, "processed"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    .line 889
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "processed.new"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 894
    .local v16, tempProcessedFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_a5

    .line 895
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 900
    :cond_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_153

    .line 901
    const/4 v14, 0x0

    .line 902
    .local v14, temp:Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .line 905
    .local v7, in:Ljava/io/RandomAccessFile;
    :try_start_b3
    new-instance v15, Ljava/io/RandomAccessFile;

    const-string v19, "rws"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_be
    .catchall {:try_start_b3 .. :try_end_be} :catchall_1c7
    .catch Ljava/io/EOFException; {:try_start_b3 .. :try_end_be} :catch_10c
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_be} :catch_1ae

    .line 906
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .local v15, temp:Ljava/io/RandomAccessFile;
    :try_start_be
    new-instance v8, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "r"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_be .. :try_end_cf} :catchall_1dc
    .catch Ljava/io/EOFException; {:try_start_be .. :try_end_cf} :catch_1ea
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_cf} :catch_1e3

    .line 910
    .end local v7           #in:Ljava/io/RandomAccessFile;
    .local v8, in:Ljava/io/RandomAccessFile;
    :goto_cf
    :try_start_cf
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_1df
    .catch Ljava/io/EOFException; {:try_start_cf .. :try_end_d2} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_1e6

    move-result-object v11

    .line 912
    .local v11, pkg:Ljava/lang/String;
    :try_start_d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 913
    .local v9, info:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 914
    invoke-virtual {v15, v11}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_f1
    .catchall {:try_start_d3 .. :try_end_f1} :catchall_1df
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d3 .. :try_end_f1} :catch_f2
    .catch Ljava/io/EOFException; {:try_start_d3 .. :try_end_f1} :catch_1ee
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_f1} :catch_1e6

    goto :goto_cf

    .line 916
    .end local v9           #info:Landroid/content/pm/PackageInfo;
    :catch_f2
    move-exception v19

    goto :goto_cf

    .line 878
    .end local v8           #in:Ljava/io/RandomAccessFile;
    .end local v11           #pkg:Ljava/lang/String;
    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .end local v16           #tempProcessedFile:Ljava/io/File;
    :catch_f4
    move-exception v5

    .line 880
    .local v5, fnf:Ljava/io/FileNotFoundException;
    const-string v19, "BackupManagerService"

    const-string v20, "No ancestral data"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76

    .line 881
    .end local v5           #fnf:Ljava/io/FileNotFoundException;
    :catch_fe
    move-exception v3

    .line 882
    .local v3, e:Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to read token file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_76

    .line 921
    .end local v3           #e:Ljava/io/IOException;
    .restart local v7       #in:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    .restart local v16       #tempProcessedFile:Ljava/io/File;
    :catch_10c
    move-exception v3

    .line 924
    .local v3, e:Ljava/io/EOFException;
    :goto_10d
    :try_start_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v19

    if-nez v19, :cond_149

    .line 925
    const-string v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error renaming "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catchall {:try_start_10d .. :try_end_149} :catchall_1c7

    .line 930
    :cond_149
    if-eqz v14, :cond_14e

    :try_start_14b
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14e} :catch_1d7

    .line 931
    :cond_14e
    :goto_14e
    if-eqz v7, :cond_153

    :try_start_150
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_1c5

    .line 937
    .end local v3           #e:Ljava/io/EOFException;
    .end local v7           #in:Ljava/io/RandomAccessFile;
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    :cond_153
    :goto_153
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 938
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 939
    const-string v19, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 940
    const-string v19, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 941
    const-string v19, "package"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 944
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 945
    .local v13, sdFilter:Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 946
    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 948
    return-void

    .line 927
    .end local v4           #filter:Landroid/content/IntentFilter;
    .end local v13           #sdFilter:Landroid/content/IntentFilter;
    .restart local v7       #in:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    :catch_1ae
    move-exception v3

    .line 928
    .local v3, e:Ljava/io/IOException;
    :goto_1af
    :try_start_1af
    const-string v19, "BackupManagerService"

    const-string v20, "Error in processed file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ba
    .catchall {:try_start_1af .. :try_end_1ba} :catchall_1c7

    .line 930
    if-eqz v14, :cond_1bf

    :try_start_1bc
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1bf
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1bf} :catch_1da

    .line 931
    :cond_1bf
    :goto_1bf
    if-eqz v7, :cond_153

    :try_start_1c1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c4
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_1c4} :catch_1c5

    goto :goto_153

    .end local v3           #e:Ljava/io/IOException;
    :catch_1c5
    move-exception v19

    goto :goto_153

    .line 930
    :catchall_1c7
    move-exception v19

    :goto_1c8
    if-eqz v14, :cond_1cd

    :try_start_1ca
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1cd
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1cd} :catch_1d3

    .line 931
    :cond_1cd
    :goto_1cd
    if-eqz v7, :cond_1d2

    :try_start_1cf
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_1d2} :catch_1d5

    .line 930
    :cond_1d2
    :goto_1d2
    throw v19

    :catch_1d3
    move-exception v20

    goto :goto_1cd

    .line 931
    :catch_1d5
    move-exception v20

    goto :goto_1d2

    .line 930
    .local v3, e:Ljava/io/EOFException;
    :catch_1d7
    move-exception v19

    goto/16 :goto_14e

    .local v3, e:Ljava/io/IOException;
    :catch_1da
    move-exception v19

    goto :goto_1bf

    .end local v3           #e:Ljava/io/IOException;
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catchall_1dc
    move-exception v19

    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto :goto_1c8

    .end local v7           #in:Ljava/io/RandomAccessFile;
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v8       #in:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catchall_1df
    move-exception v19

    move-object v7, v8

    .end local v8           #in:Ljava/io/RandomAccessFile;
    .restart local v7       #in:Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto :goto_1c8

    .line 927
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catch_1e3
    move-exception v3

    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto :goto_1af

    .end local v7           #in:Ljava/io/RandomAccessFile;
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v8       #in:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catch_1e6
    move-exception v3

    move-object v7, v8

    .end local v8           #in:Ljava/io/RandomAccessFile;
    .restart local v7       #in:Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto :goto_1af

    .line 921
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catch_1ea
    move-exception v3

    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto/16 :goto_10d

    .end local v7           #in:Ljava/io/RandomAccessFile;
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v8       #in:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catch_1ee
    move-exception v3

    move-object v7, v8

    .end local v8           #in:Ljava/io/RandomAccessFile;
    .restart local v7       #in:Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto/16 :goto_10d
.end method

.method private makeKeyChecksum([B[BI)[B
    .registers 8
    .parameter "pwBytes"
    .parameter "salt"
    .parameter "rounds"

    .prologue
    .line 1025
    array-length v3, p1

    new-array v2, v3, [C

    .line 1026
    .local v2, mkAsChar:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v3, p1

    if-ge v1, v3, :cond_f

    .line 1027
    aget-byte v3, p1, v1

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 1026
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1030
    :cond_f
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/BackupManagerService;->buildCharArrayKey([C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1031
    .local v0, checksum:Ljava/security/Key;
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    return-object v3
.end method

.method private parseLeftoverJournals()V
    .registers 12

    .prologue
    .line 951
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v6, :cond_7f

    aget-object v2, v0, v3

    .line 952
    .local v2, f:Ljava/io/File;
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    invoke-virtual {v2, v8}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v8

    if-eqz v8, :cond_51

    .line 956
    :cond_18
    const/4 v4, 0x0

    .line 958
    .local v4, in:Ljava/io/RandomAccessFile;
    :try_start_19
    const-string v8, "BackupManagerService"

    const-string v9, "Found stale backup journal, scheduling"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v5, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_75
    .catch Ljava/io/EOFException; {:try_start_19 .. :try_end_27} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_27} :catch_54

    .line 961
    .end local v4           #in:Ljava/io/RandomAccessFile;
    .local v5, in:Ljava/io/RandomAccessFile;
    :goto_27
    :try_start_27
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 962
    .local v7, packageName:Ljava/lang/String;
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-direct {p0, v7}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_27 .. :try_end_46} :catchall_84
    .catch Ljava/io/EOFException; {:try_start_27 .. :try_end_46} :catch_47
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_46} :catch_87

    goto :goto_27

    .line 965
    .end local v7           #packageName:Ljava/lang/String;
    :catch_47
    move-exception v8

    move-object v4, v5

    .line 971
    .end local v5           #in:Ljava/io/RandomAccessFile;
    .restart local v4       #in:Ljava/io/RandomAccessFile;
    :goto_49
    if-eqz v4, :cond_4e

    :try_start_4b
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_80

    .line 972
    :cond_4e
    :goto_4e
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 951
    .end local v4           #in:Ljava/io/RandomAccessFile;
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 967
    .restart local v4       #in:Ljava/io/RandomAccessFile;
    :catch_54
    move-exception v1

    .line 968
    .local v1, e:Ljava/lang/Exception;
    :goto_55
    :try_start_55
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_55 .. :try_end_6d} :catchall_75

    .line 971
    if-eqz v4, :cond_4e

    :try_start_6f
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_4e

    :catch_73
    move-exception v8

    goto :goto_4e

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_75
    move-exception v8

    :goto_76
    if-eqz v4, :cond_7b

    :try_start_78
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_82

    .line 972
    :cond_7b
    :goto_7b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 971
    throw v8

    .line 976
    .end local v2           #f:Ljava/io/File;
    .end local v4           #in:Ljava/io/RandomAccessFile;
    :cond_7f
    return-void

    .line 971
    .restart local v2       #f:Ljava/io/File;
    .restart local v4       #in:Ljava/io/RandomAccessFile;
    :catch_80
    move-exception v8

    goto :goto_4e

    :catch_82
    move-exception v9

    goto :goto_7b

    .end local v4           #in:Ljava/io/RandomAccessFile;
    .restart local v5       #in:Ljava/io/RandomAccessFile;
    :catchall_84
    move-exception v8

    move-object v4, v5

    .end local v5           #in:Ljava/io/RandomAccessFile;
    .restart local v4       #in:Ljava/io/RandomAccessFile;
    goto :goto_76

    .line 967
    .end local v4           #in:Ljava/io/RandomAccessFile;
    .restart local v5       #in:Ljava/io/RandomAccessFile;
    :catch_87
    move-exception v1

    move-object v4, v5

    .end local v5           #in:Ljava/io/RandomAccessFile;
    .restart local v4       #in:Ljava/io/RandomAccessFile;
    goto :goto_55

    .line 965
    :catch_8a
    move-exception v8

    goto :goto_49
.end method

.method private randomBytes(I)[B
    .registers 4
    .parameter "bits"

    .prologue
    .line 1036
    div-int/lit8 v1, p1, 0x8

    new-array v0, v1, [B

    .line 1037
    .local v0, array:[B
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1038
    return-object v0
.end method

.method private registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 14
    .parameter "name"
    .parameter "transport"

    .prologue
    .line 1233
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v6

    .line 1234
    :try_start_3
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Registering transport "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    if-eqz p2, :cond_62

    .line 1236
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v5, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_78

    .line 1251
    :try_start_2d
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    .line 1252
    .local v4, transportName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1253
    .local v3, stateDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1255
    new-instance v2, Ljava/io/File;

    const-string v5, "_need_init_"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1256
    .local v2, initSentinel:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 1257
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4b} :catch_7e

    .line 1258
    :try_start_4b
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1261
    const-wide/32 v0, 0xea60

    .line 1262
    .local v0, delay:J
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v8, v0

    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1264
    monitor-exit v6
    :try_end_61
    .catchall {:try_start_4b .. :try_end_61} :catchall_7b

    .line 1269
    .end local v0           #delay:J
    .end local v2           #initSentinel:Ljava/io/File;
    .end local v3           #stateDir:Ljava/io/File;
    .end local v4           #transportName:Ljava/lang/String;
    :cond_61
    :goto_61
    return-void

    .line 1238
    :cond_62
    :try_start_62
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    if-eqz v5, :cond_76

    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 1240
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 1243
    :cond_76
    monitor-exit v6

    goto :goto_61

    .line 1245
    :catchall_78
    move-exception v5

    monitor-exit v6
    :try_end_7a
    .catchall {:try_start_62 .. :try_end_7a} :catchall_78

    throw v5

    .line 1264
    .restart local v2       #initSentinel:Ljava/io/File;
    .restart local v3       #stateDir:Ljava/io/File;
    .restart local v4       #transportName:Ljava/lang/String;
    :catchall_7b
    move-exception v5

    :try_start_7c
    monitor-exit v6
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    :try_start_7d
    throw v5
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_7e} :catch_7e

    .line 1266
    .end local v2           #initSentinel:Ljava/io/File;
    .end local v3           #stateDir:Ljava/io/File;
    .end local v4           #transportName:Ljava/lang/String;
    :catch_7e
    move-exception v5

    goto :goto_61
.end method

.method private removePackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .registers 13
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1420
    .local p2, allPackageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1421
    .local v5, pkg:Ljava/lang/String;
    if-eqz p1, :cond_18

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1422
    :cond_18
    const/4 v7, -0x1

    .line 1424
    .local v7, uid:I
    :try_start_19
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1425
    .local v4, info:Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v8, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_24} :catch_58

    .line 1431
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 1432
    .local v6, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v6, :cond_4

    .line 1435
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1436
    .local v1, entry:Landroid/content/pm/ApplicationInfo;
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 1438
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1439
    invoke-virtual {p0, v5}, Lcom/android/server/BackupManagerService;->removeEverBackedUp(Ljava/lang/String;)V

    .line 1443
    .end local v1           #entry:Landroid/content/pm/ApplicationInfo;
    :cond_4c
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 1444
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_4

    .line 1426
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    .end local v6           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    :catch_58
    move-exception v0

    .line 1428
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_4

    .line 1449
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #pkg:Ljava/lang/String;
    .end local v7           #uid:I
    :cond_5a
    return-void
.end method

.method private signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .registers 13
    .parameter "storedSigs"
    .parameter "target"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3990
    iget-object v8, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2b

    .line 3991
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "System app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - skipping sig check"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    :cond_2a
    :goto_2a
    return v6

    .line 3997
    :cond_2b
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 4000
    .local v0, deviceSigs:[Landroid/content/pm/Signature;
    if-eqz p1, :cond_32

    array-length v8, p1

    if-nez v8, :cond_37

    :cond_32
    if-eqz v0, :cond_2a

    array-length v8, v0

    if-eqz v8, :cond_2a

    .line 4004
    :cond_37
    if-eqz p1, :cond_3b

    if-nez v0, :cond_3d

    :cond_3b
    move v6, v7

    .line 4005
    goto :goto_2a

    .line 4011
    :cond_3d
    array-length v5, p1

    .line 4012
    .local v5, nStored:I
    array-length v4, v0

    .line 4014
    .local v4, nDevice:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_40
    if-ge v1, v5, :cond_2a

    .line 4015
    const/4 v3, 0x0

    .line 4016
    .local v3, match:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_44
    if-ge v2, v4, :cond_51

    .line 4017
    aget-object v8, p1, v1

    aget-object v9, v0, v2

    invoke-virtual {v8, v9}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_55

    .line 4018
    const/4 v3, 0x1

    .line 4022
    :cond_51
    if-nez v3, :cond_58

    move v6, v7

    .line 4023
    goto :goto_2a

    .line 4016
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 4014
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_40
.end method

.method private startBackupAlarmsLocked(J)V
    .registers 13
    .parameter "delayBeforeFirstBackup"

    .prologue
    const v6, 0x493e0

    .line 5173
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 5174
    .local v7, random:Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v4, v4

    add-long v2, v0, v4

    .line 5176
    .local v2, when:J
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    const-wide/32 v4, 0x36ee80

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-long v8, v6

    add-long/2addr v4, v8

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 5178
    iput-wide v2, p0, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    .line 5179
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .registers 8
    .parameter "str"

    .prologue
    .line 4765
    const/4 v1, 0x0

    .line 4767
    .local v1, out:Ljava/io/RandomAccessFile;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    if-nez v3, :cond_10

    const-string v3, "journal"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 4768
    :cond_10
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    const-string v4, "rws"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_54
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_2a

    .line 4769
    .end local v1           #out:Ljava/io/RandomAccessFile;
    .local v2, out:Ljava/io/RandomAccessFile;
    :try_start_19
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4770
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_5f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_62

    .line 4775
    if-eqz v2, :cond_28

    :try_start_25
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_5d

    :cond_28
    :goto_28
    move-object v1, v2

    .line 4777
    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    :cond_29
    :goto_29
    return-void

    .line 4771
    :catch_2a
    move-exception v0

    .line 4772
    .local v0, e:Ljava/io/IOException;
    :goto_2b
    :try_start_2b
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to backup journal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4773
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;
    :try_end_4c
    .catchall {:try_start_2b .. :try_end_4c} :catchall_54

    .line 4775
    if-eqz v1, :cond_29

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_29

    :catch_52
    move-exception v3

    goto :goto_29

    .end local v0           #e:Ljava/io/IOException;
    :catchall_54
    move-exception v3

    :goto_55
    if-eqz v1, :cond_5a

    :try_start_57
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    :cond_5a
    :goto_5a
    throw v3

    :catch_5b
    move-exception v4

    goto :goto_5a

    .end local v1           #out:Ljava/io/RandomAccessFile;
    .restart local v2       #out:Ljava/io/RandomAccessFile;
    :catch_5d
    move-exception v3

    goto :goto_28

    :catchall_5f
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    goto :goto_55

    .line 4771
    .end local v1           #out:Ljava/io/RandomAccessFile;
    .restart local v2       #out:Ljava/io/RandomAccessFile;
    :catch_62
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    goto :goto_2b
.end method


# virtual methods
.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 18
    .parameter "token"
    .parameter "allow"
    .parameter "curPassword"
    .parameter "encPpassword"
    .parameter "observer"

    .prologue
    .line 5031
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "acknowledgeFullBackupOrRestore : token="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " allow="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5036
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BACKUP"

    const-string v10, "acknowledgeFullBackupOrRestore"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5038
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5042
    .local v4, oldId:J
    :try_start_2f
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v9
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_b9

    .line 5043
    :try_start_32
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/BackupManagerService$FullParams;

    .line 5044
    .local v6, params:Lcom/android/server/BackupManagerService$FullParams;
    if-eqz v6, :cond_be

    .line 5045
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v10, 0x9

    invoke-virtual {v8, v10, v6}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 5046
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 5048
    if-eqz p2, :cond_ab

    .line 5049
    instance-of v8, v6, Lcom/android/server/BackupManagerService$FullBackupParams;

    if-eqz v8, :cond_99

    const/4 v7, 0x2

    .line 5053
    .local v7, verb:I
    :goto_4f
    move-object/from16 v0, p5

    iput-object v0, v6, Lcom/android/server/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 5054
    iput-object p3, v6, Lcom/android/server/BackupManagerService$FullParams;->curPassword:Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_32 .. :try_end_55} :catchall_b6

    .line 5058
    :try_start_55
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v8}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_9c

    const/4 v2, 0x1

    .line 5059
    .local v2, isEncrypted:Z
    :goto_5f
    if-eqz v2, :cond_68

    const-string v8, "BackupManagerService"

    const-string v10, "Device is encrypted; forcing enc password"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_55 .. :try_end_68} :catchall_b6
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_68} :catch_9e

    .line 5065
    :cond_68
    :goto_68
    if-eqz v2, :cond_a8

    .end local p3
    :goto_6a
    :try_start_6a
    iput-object p3, v6, Lcom/android/server/BackupManagerService$FullParams;->encryptPassword:Ljava/lang/String;

    .line 5067
    const-string v8, "BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending conf message with verb "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5069
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v8, v7, v6}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 5070
    .local v3, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v8, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5079
    .end local v2           #isEncrypted:Z
    .end local v3           #msg:Landroid/os/Message;
    .end local v7           #verb:I
    :goto_94
    monitor-exit v9
    :try_end_95
    .catchall {:try_start_6a .. :try_end_95} :catchall_b6

    .line 5081
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5083
    return-void

    .line 5049
    .restart local p3
    :cond_99
    const/16 v7, 0xa

    goto :goto_4f

    .line 5058
    .restart local v7       #verb:I
    :cond_9c
    const/4 v2, 0x0

    goto :goto_5f

    .line 5060
    :catch_9e
    move-exception v1

    .line 5062
    .local v1, e:Landroid/os/RemoteException;
    :try_start_9f
    const-string v8, "BackupManagerService"

    const-string v10, "Unable to contact mount service!"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5063
    const/4 v2, 0x1

    .restart local v2       #isEncrypted:Z
    goto :goto_68

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_a8
    move-object/from16 p3, p4

    .line 5065
    goto :goto_6a

    .line 5072
    .end local v2           #isEncrypted:Z
    .end local v7           #verb:I
    :cond_ab
    const-string v8, "BackupManagerService"

    const-string v10, "User rejected full backup/restore operation"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5074
    invoke-virtual {p0, v6}, Lcom/android/server/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/BackupManagerService$FullParams;)V

    goto :goto_94

    .line 5079
    .end local v6           #params:Lcom/android/server/BackupManagerService$FullParams;
    .end local p3
    :catchall_b6
    move-exception v8

    monitor-exit v9
    :try_end_b8
    .catchall {:try_start_9f .. :try_end_b8} :catchall_b6

    :try_start_b8
    throw v8
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b9

    .line 5081
    :catchall_b9
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 5077
    .restart local v6       #params:Lcom/android/server/BackupManagerService$FullParams;
    .restart local p3
    :cond_be
    :try_start_be
    const-string v8, "BackupManagerService"

    const-string v10, "Attempted to ack full backup/restore with invalid token"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_be .. :try_end_c5} :catchall_b6

    goto :goto_94
.end method

.method addPackageParticipantsLocked(Ljava/lang/String;)V
    .registers 6
    .parameter "packageName"

    .prologue
    .line 1356
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPackageParticipantsLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 1358
    .local v0, targetApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1359
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8
    .parameter "packageName"
    .parameter "agentBinder"

    .prologue
    .line 5288
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5289
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_3d

    .line 5290
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "agentConnected pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " agent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5291
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 5292
    .local v0, agent:Landroid/app/IBackupAgent;
    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 5293
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 5298
    .end local v0           #agent:Landroid/app/IBackupAgent;
    :goto_36
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5299
    monitor-exit v2

    .line 5300
    return-void

    .line 5295
    :cond_3d
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " claiming agent connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 5299
    :catchall_60
    move-exception v1

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 6
    .parameter "packageName"

    .prologue
    .line 5307
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5308
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_18

    .line 5309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 5310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 5315
    :goto_11
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5316
    monitor-exit v1

    .line 5317
    return-void

    .line 5312
    :cond_18
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " claiming agent disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 5316
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method allAgentPackages()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1454
    const/16 v4, 0x40

    .line 1455
    .local v4, flags:I
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 1456
    .local v5, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1457
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, a:I
    :goto_e
    if-ltz v1, :cond_40

    .line 1458
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 1460
    .local v6, pkg:Landroid/content/pm/PackageInfo;
    :try_start_16
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1461
    .local v2, app:Landroid/content/pm/ApplicationInfo;
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_24

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v7, :cond_2a

    .line 1463
    :cond_24
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1457
    .end local v2           #app:Landroid/content/pm/ApplicationInfo;
    :goto_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1467
    .restart local v2       #app:Landroid/content/pm/ApplicationInfo;
    :cond_2a
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1469
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_3a} :catch_3b

    goto :goto_27

    .line 1471
    .end local v2           #app:Landroid/content/pm/ApplicationInfo;
    :catch_3b
    move-exception v3

    .line 1472
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_27

    .line 1475
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #pkg:Landroid/content/pm/PackageInfo;
    :cond_40
    return-object v5
.end method

.method public backupNow()V
    .registers 6

    .prologue
    .line 4848
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "backupNow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4850
    const-string v1, "BackupManagerService"

    const-string v2, "Scheduling immediate backup pass"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4851
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4855
    const-wide/32 v3, 0x36ee80

    :try_start_16
    invoke-direct {p0, v3, v4}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_29

    .line 4857
    :try_start_19
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_29
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_19 .. :try_end_1e} :catch_20

    .line 4862
    :goto_1e
    :try_start_1e
    monitor-exit v2

    .line 4863
    return-void

    .line 4858
    :catch_20
    move-exception v0

    .line 4860
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "BackupManagerService"

    const-string v3, "run-backup intent cancelled!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 4862
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 10
    .parameter "packageName"
    .parameter "transport"

    .prologue
    .line 5360
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginRestoreSession: pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transport="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5363
    const/4 v1, 0x1

    .line 5364
    .local v1, needPermission:Z
    if-nez p2, :cond_3c

    .line 5365
    iget-object p2, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 5367
    if-eqz p1, :cond_3c

    .line 5368
    const/4 v0, 0x0

    .line 5370
    .local v0, app:Landroid/content/pm/PackageInfo;
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_30} :catch_56

    move-result-object v0

    .line 5376
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_3c

    .line 5380
    const/4 v1, 0x0

    .line 5385
    .end local v0           #app:Landroid/content/pm/PackageInfo;
    :cond_3c
    if-eqz v1, :cond_8e

    .line 5386
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string v5, "beginRestoreSession"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5392
    :goto_47
    monitor-enter p0

    .line 5393
    :try_start_48
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eqz v3, :cond_96

    .line 5394
    const-string v3, "BackupManagerService"

    const-string v4, "Restore session requested but one already active"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5395
    const/4 v3, 0x0

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_ab

    .line 5400
    :goto_55
    return-object v3

    .line 5371
    .restart local v0       #app:Landroid/content/pm/PackageInfo;
    :catch_56
    move-exception v2

    .line 5372
    .local v2, nnf:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5373
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5389
    .end local v0           #app:Landroid/content/pm/PackageInfo;
    .end local v2           #nnf:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8e
    const-string v3, "BackupManagerService"

    const-string v4, "restoring self on current transport; no permission needed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 5397
    :cond_96
    :try_start_96
    new-instance v3, Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/BackupManagerService$ActiveRestoreSession;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    .line 5398
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5399
    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_96 .. :try_end_a8} :catchall_ab

    .line 5400
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    goto :goto_55

    .line 5399
    :catchall_ab
    move-exception v3

    :try_start_ac
    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v3
.end method

.method bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .registers 14
    .parameter "app"
    .parameter "mode"

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1600
    const/4 v0, 0x0

    .line 1601
    .local v0, agent:Landroid/app/IBackupAgent;
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1602
    const/4 v6, 0x1

    :try_start_7
    iput-boolean v6, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 1603
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_6d

    .line 1605
    :try_start_c
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6, p1, p2}, Landroid/app/IActivityManager;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 1606
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "awaiting agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v2, v6, v8

    .line 1612
    .local v2, timeoutMark:J
    :goto_34
    iget-boolean v6, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    if-eqz v6, :cond_4f

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v6, :cond_4f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_6d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_3f} :catch_75

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_4f

    .line 1614
    :try_start_44
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_6d
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_4b} :catch_4c
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4b} :catch_75

    goto :goto_34

    .line 1615
    :catch_4c
    move-exception v1

    .line 1617
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_6d

    .line 1632
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #timeoutMark:J
    :goto_4e
    return-object v4

    .line 1622
    .restart local v2       #timeoutMark:J
    :cond_4f
    :try_start_4f
    iget-boolean v6, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    if-ne v6, v10, :cond_70

    .line 1623
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timeout waiting for agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_4f .. :try_end_6b} :catchall_6d
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_6b} :catch_75

    .line 1624
    :try_start_6b
    monitor-exit v5

    goto :goto_4e

    .line 1631
    .end local v2           #timeoutMark:J
    :catchall_6d
    move-exception v4

    monitor-exit v5
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_6d

    throw v4

    .line 1626
    .restart local v2       #timeoutMark:J
    :cond_70
    :try_start_70
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_72
    .catchall {:try_start_70 .. :try_end_72} :catchall_6d
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_72} :catch_75

    .line 1631
    .end local v2           #timeoutMark:J
    :cond_72
    :goto_72
    :try_start_72
    monitor-exit v5
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_6d

    move-object v4, v0

    .line 1632
    goto :goto_4e

    .line 1628
    :catch_75
    move-exception v4

    goto :goto_72
.end method

.method clearApplicationDataSynchronous(Ljava/lang/String;)V
    .registers 13
    .parameter "packageName"

    .prologue
    .line 1639
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1640
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_10

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_30

    .line 1671
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_f
    return-void

    .line 1645
    :catch_10
    move-exception v0

    .line 1646
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tried to clear data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1650
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    :cond_30
    new-instance v2, Lcom/android/server/BackupManagerService$ClearDataObserver;

    invoke-direct {v2, p0}, Lcom/android/server/BackupManagerService$ClearDataObserver;-><init>(Lcom/android/server/BackupManagerService;)V

    .line 1652
    .local v2, observer:Lcom/android/server/BackupManagerService$ClearDataObserver;
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1653
    const/4 v5, 0x1

    :try_start_39
    iput-boolean v5, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_61

    .line 1655
    :try_start_3b
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v5, p1, v2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_61
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_66

    .line 1661
    :goto_40
    :try_start_40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x2710

    add-long v3, v7, v9

    .line 1662
    .local v3, timeoutMark:J
    :goto_48
    iget-boolean v5, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z

    if-eqz v5, :cond_64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_61

    move-result-wide v7

    cmp-long v5, v7, v3

    if-gez v5, :cond_64

    .line 1664
    :try_start_54
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_61
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_5b} :catch_5c

    goto :goto_48

    .line 1665
    :catch_5c
    move-exception v0

    .line 1667
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v5, 0x0

    :try_start_5e
    iput-boolean v5, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z

    goto :goto_48

    .line 1670
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v3           #timeoutMark:J
    :catchall_61
    move-exception v5

    monitor-exit v6
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_61

    throw v5

    .restart local v3       #timeoutMark:J
    :cond_64
    :try_start_64
    monitor-exit v6
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_61

    goto :goto_f

    .line 1656
    .end local v3           #timeoutMark:J
    :catch_66
    move-exception v5

    goto :goto_40
.end method

.method public clearBackupData(Ljava/lang/String;)V
    .registers 21
    .parameter "packageName"

    .prologue
    .line 4798
    const-string v14, "BackupManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "clearBackupData() of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4801
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v15, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_25} :catch_ad

    move-result-object v9

    .line 4810
    .local v9, info:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-virtual/range {v14 .. v17}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_cf

    .line 4812
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 4828
    .local v5, apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    :cond_49
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_4d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_ac

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 4829
    .local v4, app:Landroid/content/pm/ApplicationInfo;
    iget-object v14, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4d

    .line 4830
    const-string v14, "BackupManagerService"

    const-string v15, "Found the app - running clear process"

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4832
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v15

    .line 4833
    :try_start_6f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 4834
    .local v11, oldId:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4835
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v16, 0x4

    new-instance v17, Lcom/android/server/BackupManagerService$ClearParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/BackupManagerService$ClearParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 4837
    .local v10, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v14, v10}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4838
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4839
    monitor-exit v15
    :try_end_ac
    .catchall {:try_start_6f .. :try_end_ac} :catchall_f8

    .line 4843
    .end local v4           #app:Landroid/content/pm/ApplicationInfo;
    .end local v5           #apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Landroid/content/pm/PackageInfo;
    .end local v10           #msg:Landroid/os/Message;
    .end local v11           #oldId:J
    :cond_ac
    :goto_ac
    return-void

    .line 4802
    :catch_ad
    move-exception v6

    .line 4803
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "BackupManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No such package \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' - not clearing backup data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 4816
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #info:Landroid/content/pm/PackageInfo;
    :cond_cf
    const-string v14, "BackupManagerService"

    const-string v15, "Privileged caller, allowing clear of other apps"

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4817
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 4818
    .restart local v5       #apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 4819
    .local v3, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_e4
    if-ge v7, v3, :cond_49

    .line 4820
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashSet;

    .line 4821
    .local v13, s:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v13, :cond_f5

    .line 4822
    invoke-virtual {v5, v13}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 4819
    :cond_f5
    add-int/lit8 v7, v7, 0x1

    goto :goto_e4

    .line 4839
    .end local v3           #N:I
    .end local v7           #i:I
    .end local v13           #s:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v4       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v8       #i$:Ljava/util/Iterator;
    :catchall_f8
    move-exception v14

    :try_start_f9
    monitor-exit v15
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    throw v14
.end method

.method clearRestoreSession(Lcom/android/server/BackupManagerService$ActiveRestoreSession;)V
    .registers 4
    .parameter "currentSession"

    .prologue
    .line 5404
    monitor-enter p0

    .line 5405
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eq p1, v0, :cond_e

    .line 5406
    const-string v0, "BackupManagerService"

    const-string v1, "ending non-current restore session"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5412
    :goto_c
    monitor-exit p0

    .line 5413
    return-void

    .line 5408
    :cond_e
    const-string v0, "BackupManagerService"

    const-string v1, "Clearing restore session and halting timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    .line 5410
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    goto :goto_c

    .line 5412
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 6
    .parameter "packageName"

    .prologue
    .line 4782
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 4783
    .local v0, targets:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v0, :cond_33

    .line 4784
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataChanged but no participant pkg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4794
    :goto_32
    return-void

    .line 4789
    :cond_33
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    new-instance v2, Lcom/android/server/BackupManagerService$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/BackupManagerService$3;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_32
.end method

.method deviceIsProvisioned()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4866
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4867
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 5690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5692
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0, p2}, Lcom/android/server/BackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 5694
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5696
    return-void

    .line 5694
    :catchall_b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZ[Ljava/lang/String;)V
    .registers 19
    .parameter "fd"
    .parameter "includeApks"
    .parameter "includeShared"
    .parameter "doAllApps"
    .parameter "includeSystem"
    .parameter "pkgList"

    .prologue
    .line 4875
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "fullBackup"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4878
    if-nez p4, :cond_1c

    .line 4879
    if-nez p3, :cond_1c

    .line 4883
    if-eqz p6, :cond_14

    move-object/from16 v0, p6

    array-length v2, v0

    if-nez v2, :cond_1c

    .line 4884
    :cond_14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Backup requested but neither shared nor any apps named"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4890
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4893
    .local v9, oldId:J
    :try_start_20
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->deviceIsProvisioned()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 4894
    const-string v2, "BackupManagerService"

    const-string v3, "Full backup not supported before setup"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_d3

    .line 4929
    :try_start_2d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_107

    .line 4933
    :goto_30
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4934
    const-string v2, "BackupManagerService"

    const-string v3, "Full backup processing complete."

    :goto_37
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4936
    return-void

    .line 4898
    :cond_3b
    :try_start_3b
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting full backup: apks="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shared="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " all="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkgs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4901
    const-string v2, "BackupManagerService"

    const-string v3, "Beginning full backup..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4903
    new-instance v1, Lcom/android/server/BackupManagerService$FullBackupParams;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/BackupManagerService$FullBackupParams;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZ[Ljava/lang/String;)V

    .line 4905
    .local v1, params:Lcom/android/server/BackupManagerService$FullBackupParams;
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v11

    .line 4906
    .local v11, token:I
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_92
    .catchall {:try_start_3b .. :try_end_92} :catchall_d3

    .line 4907
    :try_start_92
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v2, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4908
    monitor-exit v3
    :try_end_98
    .catchall {:try_start_92 .. :try_end_98} :catchall_d0

    .line 4911
    :try_start_98
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting backup confirmation UI, token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4912
    const-string v2, "fullback"

    invoke-virtual {p0, v11, v2}, Lcom/android/server/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e2

    .line 4913
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to launch full backup confirmation"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4914
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->delete(I)V
    :try_end_c4
    .catchall {:try_start_98 .. :try_end_c4} :catchall_d3

    .line 4929
    :try_start_c4
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_10a

    .line 4933
    :goto_c7
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4934
    const-string v2, "BackupManagerService"

    const-string v3, "Full backup processing complete."

    goto/16 :goto_37

    .line 4908
    :catchall_d0
    move-exception v2

    :try_start_d1
    monitor-exit v3
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d0

    :try_start_d2
    throw v2
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d3

    .line 4928
    .end local v1           #params:Lcom/android/server/BackupManagerService$FullBackupParams;
    .end local v11           #token:I
    :catchall_d3
    move-exception v2

    .line 4929
    :try_start_d4
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_105

    .line 4933
    :goto_d7
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4934
    const-string v3, "BackupManagerService"

    const-string v4, "Full backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4928
    throw v2

    .line 4919
    .restart local v1       #params:Lcom/android/server/BackupManagerService$FullBackupParams;
    .restart local v11       #token:I
    :cond_e2
    :try_start_e2
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 4922
    invoke-virtual {p0, v11, v1}, Lcom/android/server/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/BackupManagerService$FullParams;)V

    .line 4925
    const-string v2, "BackupManagerService"

    const-string v3, "Waiting for full backup completion..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4926
    invoke-virtual {p0, v1}, Lcom/android/server/BackupManagerService;->waitForCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    :try_end_f9
    .catchall {:try_start_e2 .. :try_end_f9} :catchall_d3

    .line 4929
    :try_start_f9
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_10c

    .line 4933
    :goto_fc
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4934
    const-string v2, "BackupManagerService"

    const-string v3, "Full backup processing complete."

    goto/16 :goto_37

    .line 4930
    .end local v1           #params:Lcom/android/server/BackupManagerService$FullBackupParams;
    .end local v11           #token:I
    :catch_105
    move-exception v3

    goto :goto_d7

    :catch_107
    move-exception v2

    goto/16 :goto_30

    .restart local v1       #params:Lcom/android/server/BackupManagerService$FullBackupParams;
    .restart local v11       #token:I
    :catch_10a
    move-exception v2

    goto :goto_c7

    :catch_10c
    move-exception v2

    goto :goto_fc
.end method

.method public fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .registers 11
    .parameter "fd"

    .prologue
    .line 4939
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BACKUP"

    const-string v7, "fullRestore"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4941
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4946
    .local v1, oldId:J
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->deviceIsProvisioned()Z

    move-result v5

    if-nez v5, :cond_28

    .line 4947
    const-string v5, "BackupManagerService"

    const-string v6, "Full restore not permitted before setup"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_7b

    .line 4978
    :try_start_1a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_c7

    .line 4982
    :goto_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4983
    const-string v5, "BackupManagerService"

    const-string v6, "Full restore processing complete."

    :goto_24
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4985
    return-void

    .line 4951
    :cond_28
    :try_start_28
    const-string v5, "BackupManagerService"

    const-string v6, "Beginning full restore..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4953
    new-instance v3, Lcom/android/server/BackupManagerService$FullRestoreParams;

    invoke-direct {v3, p0, p1}, Lcom/android/server/BackupManagerService$FullRestoreParams;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/ParcelFileDescriptor;)V

    .line 4954
    .local v3, params:Lcom/android/server/BackupManagerService$FullRestoreParams;
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->generateToken()I

    move-result v4

    .line 4955
    .local v4, token:I
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_7b

    .line 4956
    :try_start_3b
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4957
    monitor-exit v6
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_78

    .line 4960
    :try_start_41
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting restore confirmation UI, token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4961
    const-string v5, "fullrest"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8a

    .line 4962
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to launch full restore confirmation"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4963
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->delete(I)V
    :try_end_6d
    .catchall {:try_start_41 .. :try_end_6d} :catchall_7b

    .line 4978
    :try_start_6d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_e2

    .line 4982
    :goto_70
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4983
    const-string v5, "BackupManagerService"

    const-string v6, "Full restore processing complete."

    goto :goto_24

    .line 4957
    :catchall_78
    move-exception v5

    :try_start_79
    monitor-exit v6
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    :try_start_7a
    throw v5
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    .line 4977
    .end local v3           #params:Lcom/android/server/BackupManagerService$FullRestoreParams;
    .end local v4           #token:I
    :catchall_7b
    move-exception v5

    .line 4978
    :try_start_7c
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_ad

    .line 4982
    :goto_7f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4983
    const-string v6, "BackupManagerService"

    const-string v7, "Full restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4977
    throw v5

    .line 4968
    .restart local v3       #params:Lcom/android/server/BackupManagerService$FullRestoreParams;
    .restart local v4       #token:I
    :cond_8a
    :try_start_8a
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 4971
    invoke-virtual {p0, v4, v3}, Lcom/android/server/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/BackupManagerService$FullParams;)V

    .line 4974
    const-string v5, "BackupManagerService"

    const-string v6, "Waiting for full restore completion..."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4975
    invoke-virtual {p0, v3}, Lcom/android/server/BackupManagerService;->waitForCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    :try_end_a1
    .catchall {:try_start_8a .. :try_end_a1} :catchall_7b

    .line 4978
    :try_start_a1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_fd

    .line 4982
    :goto_a4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4983
    const-string v5, "BackupManagerService"

    const-string v6, "Full restore processing complete."

    goto/16 :goto_24

    .line 4979
    .end local v3           #params:Lcom/android/server/BackupManagerService$FullRestoreParams;
    .end local v4           #token:I
    :catch_ad
    move-exception v0

    .line 4980
    .local v0, e:Ljava/io/IOException;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error trying to close fd after full restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 4979
    .end local v0           #e:Ljava/io/IOException;
    :catch_c7
    move-exception v0

    .line 4980
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to close fd after full restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 4979
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #params:Lcom/android/server/BackupManagerService$FullRestoreParams;
    .restart local v4       #token:I
    :catch_e2
    move-exception v0

    .line 4980
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to close fd after full restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_70

    .line 4979
    .end local v0           #e:Ljava/io/IOException;
    :catch_fd
    move-exception v0

    .line 4980
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error trying to close fd after full restore: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4
.end method

.method generateToken()I
    .registers 4

    .prologue
    .line 415
    :cond_0
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    monitor-enter v2

    .line 416
    :try_start_3
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 417
    .local v0, token:I
    monitor-exit v2

    .line 418
    if-ltz v0, :cond_0

    .line 419
    return v0

    .line 417
    .end local v0           #token:I
    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 6
    .parameter "packageName"

    .prologue
    .line 1685
    iget-wide v0, p0, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1686
    .local v0, token:J
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1687
    :try_start_5
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1688
    iget-wide v0, p0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 1690
    :cond_f
    monitor-exit v3

    .line 1691
    return-wide v0

    .line 1690
    :catchall_11
    move-exception v2

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v2
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter "transportName"

    .prologue
    .line 5240
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "getConfigurationIntent"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5243
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v3

    .line 5244
    :try_start_c
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_20

    .line 5245
    .local v1, transport:Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_1d

    .line 5247
    :try_start_16
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1c

    move-result-object v0

    .line 5250
    .local v0, intent:Landroid/content/Intent;
    :try_start_1a
    monitor-exit v3

    .line 5257
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1b
    return-object v0

    .line 5251
    :catch_1c
    move-exception v2

    .line 5255
    :cond_1d
    monitor-exit v3

    .line 5257
    const/4 v0, 0x0

    goto :goto_1b

    .line 5255
    .end local v1           #transport:Lcom/android/internal/backup/IBackupTransport;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw v2
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5189
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5192
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "transportName"

    .prologue
    .line 5266
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "getDestinationString"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5269
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v3

    .line 5270
    :try_start_c
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_20

    .line 5271
    .local v1, transport:Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_1d

    .line 5273
    :try_start_16
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1c

    move-result-object v0

    .line 5275
    .local v0, text:Ljava/lang/String;
    :try_start_1a
    monitor-exit v3

    .line 5282
    .end local v0           #text:Ljava/lang/String;
    :goto_1b
    return-object v0

    .line 5276
    :catch_1c
    move-exception v2

    .line 5280
    :cond_1d
    monitor-exit v3

    .line 5282
    const/4 v0, 0x0

    goto :goto_1b

    .line 5280
    .end local v1           #transport:Lcom/android/internal/backup/IBackupTransport;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw v2
.end method

.method handleTimeout(ILjava/lang/Object;)V
    .registers 10
    .parameter "token"
    .parameter "obj"

    .prologue
    const/4 v2, -0x1

    .line 1754
    const/4 v1, 0x0

    .line 1755
    .local v1, op:Lcom/android/server/BackupManagerService$Operation;
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1756
    :try_start_5
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/BackupManagerService$Operation;

    move-object v1, v0

    .line 1761
    if-eqz v1, :cond_13

    iget v2, v1, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 1762
    .local v2, state:I
    :cond_13
    if-nez v2, :cond_39

    .line 1763
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TIMEOUT: token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 1765
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1767
    :cond_39
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1768
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_4b

    .line 1771
    if-eqz v1, :cond_4a

    iget-object v3, v1, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    if-eqz v3, :cond_4a

    .line 1772
    iget-object v3, v1, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    invoke-interface {v3}, Lcom/android/server/BackupManagerService$BackupRestoreTask;->handleTimeout()V

    .line 1774
    :cond_4a
    return-void

    .line 1768
    .end local v2           #state:I
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v3
.end method

.method public hasBackupPassword()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 1152
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "hasBackupPassword"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    :try_start_a
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v2

    if-ne v2, v1, :cond_1e

    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_21

    move-result v2

    if-lez v2, :cond_1f

    .line 1161
    :cond_1e
    :goto_1e
    return v1

    .line 1156
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e

    .line 1158
    :catch_21
    move-exception v0

    .line 1161
    .local v0, e:Ljava/lang/Exception;
    goto :goto_1e
.end method

.method public isBackupEnabled()Z
    .registers 4

    .prologue
    .line 5183
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5184
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    return v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 8

    .prologue
    .line 5197
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    const-string v6, "listAllTransports"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5199
    const/4 v3, 0x0

    .line 5200
    .local v3, list:[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5201
    .local v2, known:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5202
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 5203
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 5207
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    :cond_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_42

    .line 5208
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 5209
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5211
    :cond_42
    return-object v3
.end method

.method logBackupComplete(Ljava/lang/String;)V
    .registers 9
    .parameter "packageName"

    .prologue
    .line 1500
    const-string v3, "@pm@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1516
    :goto_8
    return-void

    .line 1502
    :cond_9
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v4

    .line 1503
    :try_start_c
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    monitor-exit v4

    goto :goto_8

    .line 1515
    :catchall_16
    move-exception v3

    monitor-exit v4
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v3

    .line 1505
    :cond_19
    const/4 v1, 0x0

    .line 1507
    .local v1, out:Ljava/io/RandomAccessFile;
    :try_start_1a
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    const-string v5, "rws"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_62
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_35

    .line 1508
    .end local v1           #out:Ljava/io/RandomAccessFile;
    .local v2, out:Ljava/io/RandomAccessFile;
    :try_start_23
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1509
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_6d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_70

    .line 1513
    if-eqz v2, :cond_32

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_16
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_6b

    :cond_32
    :goto_32
    move-object v1, v2

    .line 1515
    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    :cond_33
    :goto_33
    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_16

    goto :goto_8

    .line 1510
    :catch_35
    move-exception v0

    .line 1511
    .local v0, e:Ljava/io/IOException;
    :goto_36
    :try_start_36
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t log backup of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_36 .. :try_end_5a} :catchall_62

    .line 1513
    if-eqz v1, :cond_33

    :try_start_5c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_16
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_33

    :catch_60
    move-exception v3

    goto :goto_33

    .end local v0           #e:Ljava/io/IOException;
    :catchall_62
    move-exception v3

    :goto_63
    if-eqz v1, :cond_68

    :try_start_65
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_16
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    :cond_68
    :goto_68
    :try_start_68
    throw v3
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_16

    :catch_69
    move-exception v5

    goto :goto_68

    .end local v1           #out:Ljava/io/RandomAccessFile;
    .restart local v2       #out:Ljava/io/RandomAccessFile;
    :catch_6b
    move-exception v3

    goto :goto_32

    :catchall_6d
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    goto :goto_63

    .line 1510
    .end local v1           #out:Ljava/io/RandomAccessFile;
    .restart local v2       #out:Ljava/io/RandomAccessFile;
    :catch_70
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    goto :goto_36
.end method

.method public opComplete(I)V
    .registers 8
    .parameter "token"

    .prologue
    .line 5420
    const/4 v2, 0x0

    .line 5421
    .local v2, op:Lcom/android/server/BackupManagerService$Operation;
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5422
    :try_start_4
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/BackupManagerService$Operation;

    move-object v2, v0

    .line 5423
    if-eqz v2, :cond_13

    .line 5424
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 5426
    :cond_13
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 5427
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_2f

    .line 5430
    if-eqz v2, :cond_2e

    iget-object v3, v2, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    if-eqz v3, :cond_2e

    .line 5431
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v4, 0x15

    iget-object v5, v2, Lcom/android/server/BackupManagerService$Operation;->callback:Lcom/android/server/BackupManagerService$BackupRestoreTask;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5432
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5434
    .end local v1           #msg:Landroid/os/Message;
    :cond_2e
    return-void

    .line 5427
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v3
.end method

.method passwordMatchesSaved(Ljava/lang/String;I)Z
    .registers 11
    .parameter "candidatePw"
    .parameter "rounds"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1046
    :try_start_2
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v6}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v6

    if-eq v6, v4, :cond_1d

    move v2, v4

    .line 1047
    .local v2, isEncrypted:Z
    :goto_b
    if-eqz v2, :cond_30

    .line 1049
    const-string v6, "BackupManagerService"

    const-string v7, "Device encrypted; verifying against device data pw"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v6, p1}, Landroid/os/storage/IMountService;->verifyEncryptionPassword(Ljava/lang/String;)I

    move-result v3

    .line 1056
    .local v3, result:I
    if-nez v3, :cond_1f

    .line 1092
    .end local v2           #isEncrypted:Z
    .end local v3           #result:I
    :cond_1c
    :goto_1c
    return v4

    :cond_1d
    move v2, v5

    .line 1046
    goto :goto_b

    .line 1059
    .restart local v2       #isEncrypted:Z
    .restart local v3       #result:I
    :cond_1f
    const/4 v4, -0x2

    if-eq v3, v4, :cond_24

    move v4, v5

    .line 1061
    goto :goto_1c

    .line 1067
    :cond_24
    const-string v4, "BackupManagerService"

    const-string v6, "verified encryption state mismatch against query; no match allowed"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_2d

    move v4, v5

    .line 1068
    goto :goto_1c

    .line 1071
    .end local v2           #isEncrypted:Z
    .end local v3           #result:I
    :catch_2d
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move v4, v5

    .line 1074
    goto :goto_1c

    .line 1077
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #isEncrypted:Z
    :cond_30
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    if-nez v6, :cond_40

    .line 1079
    if-eqz p1, :cond_1c

    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    :cond_3e
    move v4, v5

    .line 1092
    goto :goto_1c

    .line 1084
    :cond_40
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3e

    .line 1085
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPasswordSalt:[B

    invoke-direct {p0, p1, v6, p2}, Lcom/android/server/BackupManagerService;->buildPasswordHash(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, currentPwHash:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    goto :goto_1c
.end method

.method prepareOperationTimeout(IJLcom/android/server/BackupManagerService$BackupRestoreTask;)V
    .registers 10
    .parameter "token"
    .parameter "interval"
    .parameter "callback"

    .prologue
    .line 1711
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1712
    :try_start_3
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/BackupManagerService$Operation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p4}, Lcom/android/server/BackupManagerService$Operation;-><init>(Lcom/android/server/BackupManagerService;ILcom/android/server/BackupManagerService$BackupRestoreTask;)V

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1714
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, p4}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1715
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1716
    monitor-exit v2

    .line 1717
    return-void

    .line 1716
    .end local v0           #msg:Landroid/os/Message;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method recordInitPendingLocked(ZLjava/lang/String;)V
    .registers 10
    .parameter "isPending"
    .parameter "transportName"

    .prologue
    .line 1168
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recordInitPendingLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on transport "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :try_start_22
    invoke-direct {p0, p2}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 1172
    .local v2, transport:Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    .line 1173
    .local v3, transportDirName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1174
    .local v1, stateDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "_need_init_"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1176
    .local v0, initPendingFile:Ljava/io/File;
    if-eqz p1, :cond_48

    .line 1180
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_3f} :catch_51

    .line 1182
    :try_start_3f
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_47} :catch_53
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_47} :catch_51

    .line 1194
    .end local v0           #initPendingFile:Ljava/io/File;
    .end local v1           #stateDir:Ljava/io/File;
    .end local v2           #transport:Lcom/android/internal/backup/IBackupTransport;
    .end local v3           #transportDirName:Ljava/lang/String;
    :goto_47
    return-void

    .line 1188
    .restart local v0       #initPendingFile:Ljava/io/File;
    .restart local v1       #stateDir:Ljava/io/File;
    .restart local v2       #transport:Lcom/android/internal/backup/IBackupTransport;
    .restart local v3       #transportDirName:Ljava/lang/String;
    :cond_48
    :try_start_48
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1189
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_50} :catch_51

    goto :goto_47

    .line 1191
    .end local v0           #initPendingFile:Ljava/io/File;
    .end local v1           #stateDir:Ljava/io/File;
    .end local v2           #transport:Lcom/android/internal/backup/IBackupTransport;
    .end local v3           #transportDirName:Ljava/lang/String;
    :catch_51
    move-exception v4

    goto :goto_47

    .line 1183
    .restart local v0       #initPendingFile:Ljava/io/File;
    .restart local v1       #stateDir:Ljava/io/File;
    .restart local v2       #transport:Lcom/android/internal/backup/IBackupTransport;
    .restart local v3       #transportDirName:Ljava/lang/String;
    :catch_53
    move-exception v4

    goto :goto_47
.end method

.method removeEverBackedUp(Ljava/lang/String;)V
    .registers 12
    .parameter "packageName"

    .prologue
    .line 1520
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing backed-up knowledge of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v7

    .line 1527
    :try_start_1b
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v8, "processed.new"

    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_b1

    .line 1528
    .local v5, tempKnownFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 1530
    .local v2, known:Ljava/io/RandomAccessFile;
    :try_start_25
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "rws"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_aa
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_a8

    .line 1531
    .end local v2           #known:Ljava/io/RandomAccessFile;
    .local v3, known:Ljava/io/RandomAccessFile;
    :try_start_2c
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1532
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1533
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_2c .. :try_end_46} :catchall_be
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_46} :catch_47

    goto :goto_37

    .line 1541
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #s:Ljava/lang/String;
    :catch_47
    move-exception v0

    move-object v2, v3

    .line 1546
    .end local v3           #known:Ljava/io/RandomAccessFile;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #known:Ljava/io/RandomAccessFile;
    :goto_49
    :try_start_49
    const-string v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error rewriting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1547
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 1548
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1549
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_70
    .catchall {:try_start_49 .. :try_end_70} :catchall_aa

    .line 1551
    if-eqz v2, :cond_75

    :try_start_72
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_b1
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_b6

    .line 1553
    .end local v0           #e:Ljava/io/IOException;
    :cond_75
    :goto_75
    :try_start_75
    monitor-exit v7
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_b1

    .line 1554
    return-void

    .line 1536
    .end local v2           #known:Ljava/io/RandomAccessFile;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #known:Ljava/io/RandomAccessFile;
    :cond_77
    :try_start_77
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_be
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_47

    .line 1537
    const/4 v2, 0x0

    .line 1538
    .end local v3           #known:Ljava/io/RandomAccessFile;
    .restart local v2       #known:Ljava/io/RandomAccessFile;
    :try_start_7b
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_b8

    .line 1539
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t rename "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_a8
    .catchall {:try_start_7b .. :try_end_a8} :catchall_aa
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_a8} :catch_a8

    .line 1541
    .end local v1           #i$:Ljava/util/Iterator;
    :catch_a8
    move-exception v0

    goto :goto_49

    .line 1551
    :catchall_aa
    move-exception v6

    :goto_ab
    if-eqz v2, :cond_b0

    :try_start_ad
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b1
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b4

    :cond_b0
    :goto_b0
    :try_start_b0
    throw v6

    .line 1553
    .end local v2           #known:Ljava/io/RandomAccessFile;
    .end local v5           #tempKnownFile:Ljava/io/File;
    :catchall_b1
    move-exception v6

    monitor-exit v7
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b1

    throw v6

    .line 1551
    .restart local v2       #known:Ljava/io/RandomAccessFile;
    .restart local v5       #tempKnownFile:Ljava/io/File;
    :catch_b4
    move-exception v8

    goto :goto_b0

    :catch_b6
    move-exception v6

    goto :goto_75

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_b8
    if-eqz v2, :cond_75

    :try_start_ba
    #Replaced unresolvable odex instruction with a throw
    throw v2
    #invoke-virtual-quick {v2}, vtable@0xb
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_b1
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_b6

    goto :goto_75

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #known:Ljava/io/RandomAccessFile;
    .restart local v3       #known:Ljava/io/RandomAccessFile;
    :catchall_be
    move-exception v6

    move-object v2, v3

    .end local v3           #known:Ljava/io/RandomAccessFile;
    .restart local v2       #known:Ljava/io/RandomAccessFile;
    goto :goto_ab
.end method

.method removePackageParticipantsLocked(Ljava/lang/String;)V
    .registers 9
    .parameter "packageName"

    .prologue
    .line 1397
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removePackageParticipantsLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1399
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_26

    .line 1400
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1408
    :cond_22
    invoke-direct {p0, p1, v0}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1409
    return-void

    .line 1403
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v2

    .line 1404
    .local v2, knownPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 1405
    .local v3, pkg:Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e
.end method

.method resetBackupState(Ljava/io/File;)V
    .registers 15
    .parameter "stateFileDir"

    .prologue
    .line 1200
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1202
    :try_start_3
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 1203
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1205
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 1206
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1209
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, arr$:[Ljava/io/File;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1a
    if-ge v4, v5, :cond_30

    aget-object v7, v2, v4

    .line 1211
    .local v7, sf:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "_need_init_"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2d

    .line 1212
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1209
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 1215
    .end local v7           #sf:Ljava/io/File;
    :cond_30
    monitor-exit v10
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_64

    .line 1218
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v10

    .line 1219
    :try_start_34
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1220
    .local v0, N:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .local v3, i:I
    :goto_3b
    if-ge v3, v0, :cond_6a

    .line 1221
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1222
    .local v8, uid:I
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 1223
    .local v6, participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1224
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_4f

    .line 1227
    .end local v0           #N:I
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v8           #uid:I
    :catchall_61
    move-exception v9

    monitor-exit v10
    :try_end_63
    .catchall {:try_start_34 .. :try_end_63} :catchall_61

    throw v9

    .line 1215
    .end local v2           #arr$:[Ljava/io/File;
    .end local v5           #len$:I
    :catchall_64
    move-exception v9

    :try_start_65
    monitor-exit v10
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v9

    .line 1220
    .restart local v0       #N:I
    .restart local v2       #arr$:[Ljava/io/File;
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #len$:I
    .restart local v6       #participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v8       #uid:I
    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 1227
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v8           #uid:I
    :cond_6a
    :try_start_6a
    monitor-exit v10
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_61

    .line 1228
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 13
    .parameter "packageName"
    .parameter "token"

    .prologue
    .line 5322
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2b

    .line 5323
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system process uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attemping install-time restore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5356
    :goto_2a
    return-void

    .line 5328
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/server/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v4

    .line 5329
    .local v4, restoreSet:J
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreAtInstall pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5332
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    if-eqz v0, :cond_8d

    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v0, :cond_8d

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_8d

    .line 5340
    new-instance v6, Landroid/content/pm/PackageInfo;

    invoke-direct {v6}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 5341
    .local v6, pkg:Landroid/content/pm/PackageInfo;
    iput-object p1, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 5343
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5344
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 5345
    .local v9, msg:Landroid/os/Message;
    new-instance v0, Lcom/android/server/BackupManagerService$RestoreParams;

    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ)V

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5347
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v0, v9}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2a

    .line 5351
    .end local v6           #pkg:Landroid/content/pm/PackageInfo;
    .end local v9           #msg:Landroid/os/Message;
    :cond_8d
    const-string v0, "BackupManagerService"

    const-string v1, "No restore set -- skipping restore"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5353
    :try_start_94
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_99} :catch_9a

    goto :goto_2a

    .line 5354
    :catch_9a
    move-exception v0

    goto :goto_2a
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "transport"

    .prologue
    .line 5218
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "selectBackupTransport"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5220
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v2

    .line 5221
    const/4 v0, 0x0

    .line 5222
    .local v0, prevTransport:Ljava/lang/String;
    :try_start_d
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 5223
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 5224
    iput-object p1, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 5225
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "backup_transport"

    invoke-static {v1, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5227
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectBackupTransport() set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5232
    :goto_48
    monitor-exit v2

    return-object v0

    .line 5230
    :cond_4a
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to select unavailable transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 5233
    :catchall_63
    move-exception v1

    monitor-exit v2
    :try_end_65
    .catchall {:try_start_d .. :try_end_65} :catchall_63

    throw v1
.end method

.method public setAutoRestore(Z)V
    .registers 5
    .parameter "doAutoRestore"

    .prologue
    .line 5132
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "setAutoRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5135
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto restore => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5137
    monitor-enter p0

    .line 5138
    :try_start_22
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "backup_auto_restore"

    if-eqz p1, :cond_34

    const/4 v0, 0x1

    :goto_2d
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5140
    iput-boolean p1, p0, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    .line 5141
    monitor-exit p0

    .line 5142
    return-void

    .line 5138
    :cond_34
    const/4 v0, 0x0

    goto :goto_2d

    .line 5141
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public setBackupEnabled(Z)V
    .registers 12
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5087
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BACKUP"

    const-string v8, "setBackupEnabled"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5090
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Backup enabled => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5092
    iget-boolean v3, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    .line 5093
    .local v3, wasEnabled:Z
    monitor-enter p0

    .line 5094
    :try_start_26
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "backup_enabled"

    if-eqz p1, :cond_49

    :goto_30
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5096
    iput-boolean p1, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    .line 5097
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_4b

    .line 5099
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5100
    if-eqz p1, :cond_4e

    if-nez v3, :cond_4e

    :try_start_3d
    iget-boolean v4, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v4, :cond_4e

    .line 5102
    const-wide/32 v6, 0x36ee80

    invoke-direct {p0, v6, v7}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    .line 5127
    :cond_47
    :goto_47
    monitor-exit v5
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_88

    .line 5128
    return-void

    :cond_49
    move v4, v5

    .line 5094
    goto :goto_30

    .line 5097
    :catchall_4b
    move-exception v4

    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v4

    .line 5103
    :cond_4e
    if-nez p1, :cond_47

    .line 5105
    :try_start_50
    const-string v4, "BackupManagerService"

    const-string v6, "Opting out of backup"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5107
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 5112
    if-eqz v3, :cond_47

    iget-boolean v4, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v4, :cond_47

    .line 5116
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_67
    .catchall {:try_start_50 .. :try_end_67} :catchall_88

    .line 5117
    :try_start_67
    new-instance v0, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5118
    .local v0, allTransports:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    monitor-exit v6
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_8b

    .line 5120
    :try_start_73
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_77
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5121
    .local v2, transport:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v2}, Lcom/android/server/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    goto :goto_77

    .line 5127
    .end local v0           #allTransports:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #transport:Ljava/lang/String;
    :catchall_88
    move-exception v4

    monitor-exit v5
    :try_end_8a
    .catchall {:try_start_73 .. :try_end_8a} :catchall_88

    throw v4

    .line 5118
    :catchall_8b
    move-exception v4

    :try_start_8c
    monitor-exit v6
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw v4

    .line 5123
    .restart local v0       #allTransports:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_8e
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_9a
    .catchall {:try_start_8d .. :try_end_9a} :catchall_88

    goto :goto_47
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .parameter "currentPw"
    .parameter "newPw"

    .prologue
    .line 1097
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BACKUP"

    const-string v11, "setBackupPassword"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const/16 v9, 0x2710

    invoke-virtual {p0, p1, v9}, Lcom/android/server/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_13

    .line 1102
    const/4 v9, 0x0

    .line 1147
    :cond_12
    :goto_12
    return v9

    .line 1106
    :cond_13
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 1107
    :cond_1b
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_34

    .line 1108
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_34

    .line 1110
    const-string v9, "BackupManagerService"

    const-string v10, "Unable to clear backup password"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/4 v9, 0x0

    goto :goto_12

    .line 1114
    :cond_34
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 1115
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordSalt:[B

    .line 1116
    const/4 v9, 0x1

    goto :goto_12

    .line 1121
    :cond_3c
    const/16 v9, 0x200

    :try_start_3e
    invoke-direct {p0, v9}, Lcom/android/server/BackupManagerService;->randomBytes(I)[B

    move-result-object v8

    .line 1122
    .local v8, salt:[B
    const/16 v9, 0x2710

    invoke-direct {p0, p2, v8, v9}, Lcom/android/server/BackupManagerService;->buildPasswordHash(Ljava/lang/String;[BI)Ljava/lang/String;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_47} :catch_7e

    move-result-object v3

    .line 1124
    .local v3, newPwHash:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, pwf:Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 1125
    .local v0, buffer:Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 1127
    .local v4, out:Ljava/io/DataOutputStream;
    :try_start_4b
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_88

    .line 1128
    .end local v6           #pwf:Ljava/io/OutputStream;
    .local v7, pwf:Ljava/io/OutputStream;
    :try_start_52
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_99

    .line 1129
    .end local v0           #buffer:Ljava/io/OutputStream;
    .local v1, buffer:Ljava/io/OutputStream;
    :try_start_57
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_9c

    .line 1132
    .end local v4           #out:Ljava/io/DataOutputStream;
    .local v5, out:Ljava/io/DataOutputStream;
    :try_start_5c
    array-length v9, v8

    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1133
    invoke-virtual {v5, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 1134
    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 1136
    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    .line 1137
    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mPasswordSalt:[B
    :try_end_6d
    .catchall {:try_start_5c .. :try_end_6d} :catchall_a0

    .line 1138
    const/4 v9, 0x1

    .line 1140
    if-eqz v5, :cond_73

    :try_start_70
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 1141
    :cond_73
    if-eqz v1, :cond_78

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 1142
    :cond_78
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7d} :catch_7e

    goto :goto_12

    .line 1144
    .end local v1           #buffer:Ljava/io/OutputStream;
    .end local v3           #newPwHash:Ljava/lang/String;
    .end local v5           #out:Ljava/io/DataOutputStream;
    .end local v7           #pwf:Ljava/io/OutputStream;
    .end local v8           #salt:[B
    :catch_7e
    move-exception v2

    .line 1145
    .local v2, e:Ljava/io/IOException;
    const-string v9, "BackupManagerService"

    const-string v10, "Unable to set backup password"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const/4 v9, 0x0

    goto :goto_12

    .line 1140
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #buffer:Ljava/io/OutputStream;
    .restart local v3       #newPwHash:Ljava/lang/String;
    .restart local v4       #out:Ljava/io/DataOutputStream;
    .restart local v6       #pwf:Ljava/io/OutputStream;
    .restart local v8       #salt:[B
    :catchall_88
    move-exception v9

    :goto_89
    if-eqz v4, :cond_8e

    :try_start_8b
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 1141
    :cond_8e
    if-eqz v0, :cond_93

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 1142
    :cond_93
    if-eqz v6, :cond_98

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 1140
    :cond_98
    throw v9
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_99} :catch_7e

    .end local v6           #pwf:Ljava/io/OutputStream;
    .restart local v7       #pwf:Ljava/io/OutputStream;
    :catchall_99
    move-exception v9

    move-object v6, v7

    .end local v7           #pwf:Ljava/io/OutputStream;
    .restart local v6       #pwf:Ljava/io/OutputStream;
    goto :goto_89

    .end local v0           #buffer:Ljava/io/OutputStream;
    .end local v6           #pwf:Ljava/io/OutputStream;
    .restart local v1       #buffer:Ljava/io/OutputStream;
    .restart local v7       #pwf:Ljava/io/OutputStream;
    :catchall_9c
    move-exception v9

    move-object v0, v1

    .end local v1           #buffer:Ljava/io/OutputStream;
    .restart local v0       #buffer:Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7           #pwf:Ljava/io/OutputStream;
    .restart local v6       #pwf:Ljava/io/OutputStream;
    goto :goto_89

    .end local v0           #buffer:Ljava/io/OutputStream;
    .end local v4           #out:Ljava/io/DataOutputStream;
    .end local v6           #pwf:Ljava/io/OutputStream;
    .restart local v1       #buffer:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/DataOutputStream;
    .restart local v7       #pwf:Ljava/io/OutputStream;
    :catchall_a0
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/DataOutputStream;
    .restart local v4       #out:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #buffer:Ljava/io/OutputStream;
    .restart local v0       #buffer:Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7           #pwf:Ljava/io/OutputStream;
    .restart local v6       #pwf:Ljava/io/OutputStream;
    goto :goto_89
.end method

.method public setBackupProvisioned(Z)V
    .registers 7
    .parameter "available"

    .prologue
    .line 5146
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "setBackupProvisioned"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5149
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 5150
    .local v0, wasProvisioned:Z
    monitor-enter p0

    .line 5151
    :try_start_c
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_provisioned"

    if-eqz p1, :cond_30

    const/4 v1, 0x1

    :goto_17
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5153
    iput-boolean p1, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 5154
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_32

    .line 5156
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5157
    if-eqz p1, :cond_35

    if-nez v0, :cond_35

    :try_start_24
    iget-boolean v1, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    if-eqz v1, :cond_35

    .line 5159
    const-wide/32 v3, 0x2932e00

    invoke-direct {p0, v3, v4}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    .line 5165
    :cond_2e
    :goto_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_46

    .line 5166
    return-void

    .line 5151
    :cond_30
    const/4 v1, 0x0

    goto :goto_17

    .line 5154
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1

    .line 5160
    :cond_35
    if-nez p1, :cond_2e

    .line 5162
    :try_start_37
    const-string v1, "BackupManagerService"

    const-string v3, "Backup service no longer provisioned"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5163
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_2e

    .line 5165
    :catchall_46
    move-exception v1

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_46

    throw v1
.end method

.method signalFullBackupRestoreCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    .registers 5
    .parameter "params"

    .prologue
    .line 5020
    iget-object v1, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 5021
    :try_start_3
    iget-object v0, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5022
    iget-object v0, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5023
    monitor-exit v1

    .line 5024
    return-void

    .line 5023
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method startConfirmationTimeout(ILcom/android/server/BackupManagerService$FullParams;)V
    .registers 7
    .parameter "token"
    .parameter "params"

    .prologue
    .line 5004
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5006
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5007
    return-void
.end method

.method startConfirmationUi(ILjava/lang/String;)Z
    .registers 7
    .parameter "token"
    .parameter "action"

    .prologue
    .line 4989
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4990
    .local v0, confIntent:Landroid/content/Intent;
    const-string v2, "com.android.backupconfirm"

    const-string v3, "com.android.backupconfirm.BackupRestoreConfirmation"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4992
    const-string v2, "conftoken"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4993
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4994
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1b} :catch_1d

    .line 4998
    const/4 v2, 0x1

    .end local v0           #confIntent:Landroid/content/Intent;
    :goto_1c
    return v2

    .line 4995
    :catch_1d
    move-exception v1

    .line 4996
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method updatePackageParticipantsLocked(Ljava/lang/String;)V
    .registers 9
    .parameter "packageName"

    .prologue
    .line 1481
    if-nez p1, :cond_a

    .line 1482
    const-string v4, "BackupManagerService"

    const-string v5, "updatePackageParticipants called with null package name"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :goto_9
    return-void

    .line 1485
    :cond_a
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePackageParticipantsLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v1

    .line 1489
    .local v1, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1490
    .local v0, allAppNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 1491
    .local v3, pkg:Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 1493
    .end local v3           #pkg:Landroid/content/pm/PackageInfo;
    :cond_41
    invoke-direct {p0, p1, v0}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1494
    invoke-direct {p0, p1, v1}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_9
.end method

.method waitForCompletion(Lcom/android/server/BackupManagerService$FullParams;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 5010
    iget-object v1, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 5011
    :goto_3
    :try_start_3
    iget-object v0, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result v0

    if-nez v0, :cond_13

    .line 5013
    :try_start_b
    iget-object v0, p1, Lcom/android/server/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_15
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_3

    .line 5014
    :catch_11
    move-exception v0

    goto :goto_3

    .line 5016
    :cond_13
    :try_start_13
    monitor-exit v1

    .line 5017
    return-void

    .line 5016
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v0
.end method

.method waitUntilOperationComplete(I)Z
    .registers 8
    .parameter "token"

    .prologue
    const/4 v4, 0x1

    .line 1723
    const/4 v1, 0x0

    .line 1724
    .local v1, finalState:I
    const/4 v2, 0x0

    .line 1725
    .local v2, op:Lcom/android/server/BackupManagerService$Operation;
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1727
    :goto_6
    :try_start_6
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/BackupManagerService$Operation;

    move-object v2, v0

    .line 1728
    if-nez v2, :cond_1d

    .line 1744
    :goto_12
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_2c

    .line 1746
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1749
    if-ne v1, v4, :cond_2f

    move v3, v4

    :goto_1c
    return v3

    .line 1732
    :cond_1d
    :try_start_1d
    iget v3, v2, Lcom/android/server/BackupManagerService$Operation;->state:I
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_2c

    if-nez v3, :cond_29

    .line 1734
    :try_start_21
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_2c
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_26} :catch_27

    goto :goto_6

    .line 1735
    :catch_27
    move-exception v3

    goto :goto_6

    .line 1739
    :cond_29
    :try_start_29
    iget v1, v2, Lcom/android/server/BackupManagerService$Operation;->state:I

    .line 1740
    goto :goto_12

    .line 1744
    :catchall_2c
    move-exception v3

    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2c

    throw v3

    .line 1749
    :cond_2f
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method writeRestoreTokens()V
    .registers 8

    .prologue
    .line 1561
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mTokenFile:Ljava/io/File;

    const-string v5, "rwd"

    invoke-direct {v0, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1564
    .local v0, af:Ljava/io/RandomAccessFile;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1567
    iget-wide v4, p0, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1568
    iget-wide v4, p0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1571
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v4, :cond_23

    .line 1572
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1581
    :cond_1f
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1585
    .end local v0           #af:Ljava/io/RandomAccessFile;
    :goto_22
    return-void

    .line 1574
    .restart local v0       #af:Ljava/io/RandomAccessFile;
    :cond_23
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1575
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ancestral packages:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1577
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5f} :catch_60

    goto :goto_50

    .line 1582
    .end local v0           #af:Ljava/io/RandomAccessFile;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pkgName:Ljava/lang/String;
    :catch_60
    move-exception v1

    .line 1583
    .local v1, e:Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Unable to write token file:"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method
