.class Lcom/vivo/upgrade/CheckAppUpdate;
.super Ljava/lang/Object;
.source "CheckAppUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/upgrade/CheckAppUpdate$TaskEnd;
    }
.end annotation


# static fields
.field public static final ALL_MODE:I = 0x1

.field private static APP_PATH:Ljava/lang/String; = null

.field private static final CHECK_BY_USER:Ljava/lang/String; = "1"

.field private static final DOWN_FAILED_BECAUSE_OF_NET:I = 0x4

.field private static final DOWN_FAILED_SPACE:I = 0x3

.field private static final DOWN_OVER:I = 0x2

.field private static final DOWN_UPDATE:I = 0x1

.field private static final INVALID_DATE:I = 0x0

.field private static final INVALID_VERSION:I = -0x64

.field private static final ONE_WEEKDAY:I = 0x240c8400

.field public static final PATCH_MODE:I = 0x0

.field private static final PATCH_UPGRADE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Upgrade.CheckAppUpdate"

.field private static mIsDownloading:Z


# instance fields
.field private mChangeLevel:I

.field private mCheckAppExist:Z

.field private mContext:Landroid/content/Context;

.field private mDialogDismissListener:Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;

.field private mDownClickListener:Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;

.field private mDownLoadThread:Ljava/lang/Thread;

.field private mHandler:Landroid/os/Handler;

.field private mIsCancelDownload:Z

.field private mIsCheckByUser:Z

.field private mIsControlShowDialog:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPatchMd5:Ljava/lang/String;

.field private mPatchName:Ljava/lang/String;

.field private mPatchSize:I

.field private mPatchUrl:Ljava/lang/String;

.field private mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

.field private mSourcePath:Ljava/lang/String;

.field private mTaskCallBack:Lcom/vivo/upgrade/TaskCallBack;

.field private mTryNum:I

.field private mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

.field private mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/vivo/upgrade/utils/Util;->APK_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/upgrade/CheckAppUpdate;->APP_PATH:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsDownloading:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vivo/upgrade/TaskCallBack;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskCallBack"    # Lcom/vivo/upgrade/TaskCallBack;
    .param p3, "checkByUser"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSourcePath:Ljava/lang/String;

    .line 91
    iput-boolean v2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mCheckAppExist:Z

    .line 92
    iput-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchUrl:Ljava/lang/String;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchSize:I

    .line 94
    iput-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchMd5:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchName:Ljava/lang/String;

    .line 96
    const/4 v0, 0x3

    iput v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mTryNum:I

    .line 98
    iput-boolean v2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsCheckByUser:Z

    .line 100
    iput-boolean v2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsCancelDownload:Z

    .line 108
    iput-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    .line 116
    iput-boolean v2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsControlShowDialog:Z

    .line 429
    new-instance v0, Lcom/vivo/upgrade/CheckAppUpdate$1;

    invoke-direct {v0, p0}, Lcom/vivo/upgrade/CheckAppUpdate$1;-><init>(Lcom/vivo/upgrade/CheckAppUpdate;)V

    iput-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mDownClickListener:Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;

    .line 848
    new-instance v0, Lcom/vivo/upgrade/CheckAppUpdate$2;

    invoke-direct {v0, p0}, Lcom/vivo/upgrade/CheckAppUpdate$2;-><init>(Lcom/vivo/upgrade/CheckAppUpdate;)V

    iput-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mHandler:Landroid/os/Handler;

    .line 122
    iput-object p1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    .line 123
    iput-boolean p3, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsCheckByUser:Z

    .line 125
    iput-object p2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mTaskCallBack:Lcom/vivo/upgrade/TaskCallBack;

    .line 126
    invoke-static {}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getInstance()Lcom/vivo/upgrade/utils/SharePreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    .line 127
    invoke-static {}, Lcom/vivo/upgrade/CheckUpdateManager;->getInstance()Lcom/vivo/upgrade/CheckUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/upgrade/CheckUpdateManager;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 128
    return-void
.end method

.method static synthetic access$0(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/AppUpdateInfo;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/SelfUpdateDialog;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vivo/upgrade/CheckAppUpdate;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchMd5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vivo/upgrade/CheckAppUpdate;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .prologue
    .line 730
    invoke-direct/range {p0 .. p7}, Lcom/vivo/upgrade/CheckAppUpdate;->downloadApk(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$12(Lcom/vivo/upgrade/CheckAppUpdate;Z)V
    .registers 2

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsCancelDownload:Z

    return-void
.end method

.method static synthetic access$13()Ljava/lang/String;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/vivo/upgrade/CheckAppUpdate;->APP_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vivo/upgrade/CheckAppUpdate;I)Z
    .registers 3

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lcom/vivo/upgrade/CheckAppUpdate;->isForceUpdate(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$15(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/TaskCallBack;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mTaskCallBack:Lcom/vivo/upgrade/TaskCallBack;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vivo/upgrade/CheckAppUpdate;)Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsCancelDownload:Z

    return v0
.end method

.method static synthetic access$17(Lcom/vivo/upgrade/CheckAppUpdate;I)Z
    .registers 3

    .prologue
    .line 703
    invoke-direct {p0, p1}, Lcom/vivo/upgrade/CheckAppUpdate;->isDownloadSilentUpdate(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$18(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/utils/SharePreferenceManager;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vivo/upgrade/CheckAppUpdate;I)Z
    .registers 3

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/vivo/upgrade/CheckAppUpdate;->isInstallSilentUpdate(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vivo/upgrade/CheckAppUpdate;Z)V
    .registers 2

    .prologue
    .line 1089
    invoke-direct {p0, p1}, Lcom/vivo/upgrade/CheckAppUpdate;->setIsDownloading(Z)V

    return-void
.end method

.method static synthetic access$21(Lcom/vivo/upgrade/CheckAppUpdate;I)Z
    .registers 3

    .prologue
    .line 726
    invoke-direct {p0, p1}, Lcom/vivo/upgrade/CheckAppUpdate;->isCancelable(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$22(Lcom/vivo/upgrade/CheckAppUpdate;)Z
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsCheckByUser:Z

    return v0
.end method

.method static synthetic access$23(Lcom/vivo/upgrade/CheckAppUpdate;Lcom/vivo/upgrade/AppUpdateInfo;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;

    return-void
.end method

.method static synthetic access$24(Lcom/vivo/upgrade/CheckAppUpdate;)Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mDialogDismissListener:Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;

    return-object v0
.end method

.method static synthetic access$25(Lcom/vivo/upgrade/CheckAppUpdate;Lcom/vivo/upgrade/SelfUpdateDialog;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    return-void
.end method

.method static synthetic access$26(Lcom/vivo/upgrade/CheckAppUpdate;J)Z
    .registers 4

    .prologue
    .line 949
    invoke-direct {p0, p1, p2}, Lcom/vivo/upgrade/CheckAppUpdate;->preDownload(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$27(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$28(Lcom/vivo/upgrade/CheckAppUpdate;)I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mTryNum:I

    return v0
.end method

.method static synthetic access$29(Lcom/vivo/upgrade/CheckAppUpdate;I)V
    .registers 2

    .prologue
    .line 96
    iput p1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mTryNum:I

    return-void
.end method

.method static synthetic access$3(Lcom/vivo/upgrade/CheckAppUpdate;)Landroid/content/pm/PackageInfo;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vivo/upgrade/CheckAppUpdate;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSourcePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/vivo/upgrade/CheckAppUpdate;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSourcePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vivo/upgrade/CheckAppUpdate;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vivo/upgrade/CheckAppUpdate;)I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchSize:I

    return v0
.end method

.method static synthetic access$8(Lcom/vivo/upgrade/CheckAppUpdate;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vivo/upgrade/CheckAppUpdate;)I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mChangeLevel:I

    return v0
.end method

.method private checkAppExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 16
    .param p1, "md5"    # Ljava/lang/String;
    .param p2, "patchMd5"    # Ljava/lang/String;
    .param p3, "lowMd5"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 970
    const/4 v1, 0x0

    .line 971
    .local v1, "exsit":Z
    const/4 v0, -0x1

    .line 972
    .local v0, "defaultMode":I
    const/4 v6, -0x1

    .line 973
    .local v6, "retOlder":I
    const/4 v5, -0x1

    .line 974
    .local v5, "ret":I
    const/4 v2, 0x0

    .line 975
    .local v2, "filePath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 977
    .local v3, "md5Str":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5c

    .line 978
    move-object v3, p2

    .line 983
    :goto_d
    iget-object v8, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    const-string v9, "com.vivo.upgrade.ikey.KEY_DOWNLOAD_PATH"

    .line 984
    const/4 v10, 0x0

    .line 983
    invoke-virtual {v8, v9, v10}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 985
    iget-object v8, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v8, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSourcePath:Ljava/lang/String;

    .line 987
    const-string v8, "Upgrade.CheckAppUpdate"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "checkAppExist sourcePath = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSourcePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 988
    const-string v10, ", filePath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 987
    invoke-static {v8, v9}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v8, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSourcePath:Ljava/lang/String;

    if-eqz v8, :cond_60

    if-eqz v2, :cond_60

    .line 990
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 991
    .local v4, "newFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 992
    const/4 v8, 0x0

    invoke-static {v3, v4, v8}, Lcom/vivo/upgrade/utils/MdFive;->checkMdFive(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v8

    if-eqz v8, :cond_5e

    const/4 v5, 0x0

    .line 993
    :goto_57
    const/4 v8, -0x1

    if-eq v5, v8, :cond_5b

    .line 994
    const/4 v1, 0x1

    .line 1042
    .end local v4    # "newFile":Ljava/io/File;
    :cond_5b
    :goto_5b
    return v1

    .line 980
    :cond_5c
    move-object v3, p1

    goto :goto_d

    .line 992
    .restart local v4    # "newFile":Ljava/io/File;
    :cond_5e
    const/4 v5, -0x1

    goto :goto_57

    .line 998
    .end local v4    # "newFile":Ljava/io/File;
    :cond_60
    iget-object v8, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    .line 999
    const-string v9, "com.vivo.upgrade.ikey.KEY_DOWNLOAD_MODE"

    const/4 v10, 0x0

    .line 998
    invoke-virtual {v8, v9, v10}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1000
    const-string v8, "Upgrade.CheckAppUpdate"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "checkAppExist defaultMode = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1001
    const-string v10, ", mode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1000
    invoke-static {v8, v9}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    if-nez p4, :cond_ec

    .line 1003
    iget-object v8, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSourcePath:Ljava/lang/String;

    if-eqz v8, :cond_5b

    .line 1004
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSourcePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v7, "sourceFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 1007
    const/4 v8, 0x0

    invoke-static {p3, v7, v8}, Lcom/vivo/upgrade/utils/MdFive;->checkMdFive(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v8

    if-eqz v8, :cond_e8

    const/4 v6, 0x0

    .line 1009
    :goto_a2
    const-string v8, "Upgrade.CheckAppUpdate"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "checkAppExist mode == 0 retOlder = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1009
    invoke-static {v8, v9}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const/4 v8, -0x1

    if-eq v6, v8, :cond_5b

    .line 1012
    if-eqz v2, :cond_5b

    .line 1013
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1014
    .restart local v4    # "newFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 1016
    const/4 v8, 0x0

    .line 1015
    invoke-static {v3, v4, v8}, Lcom/vivo/upgrade/utils/MdFive;->checkMdFive(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v8

    .line 1016
    if-eqz v8, :cond_ea

    const/4 v5, 0x0

    .line 1017
    :goto_ce
    const-string v8, "Upgrade.CheckAppUpdate"

    .line 1018
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "checkAppExist mode==0 ret = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1018
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1017
    invoke-static {v8, v9}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const/4 v8, -0x1

    if-eq v5, v8, :cond_5b

    .line 1021
    const/4 v1, 0x1

    .line 1028
    goto/16 :goto_5b

    .line 1008
    .end local v4    # "newFile":Ljava/io/File;
    :cond_e8
    const/4 v6, -0x1

    goto :goto_a2

    .line 1016
    .restart local v4    # "newFile":Ljava/io/File;
    :cond_ea
    const/4 v5, -0x1

    goto :goto_ce

    .line 1028
    .end local v4    # "newFile":Ljava/io/File;
    .end local v7    # "sourceFile":Ljava/io/File;
    :cond_ec
    const/4 v8, 0x1

    if-ne p4, v8, :cond_5b

    .line 1029
    if-eqz v2, :cond_5b

    .line 1030
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1031
    .restart local v4    # "newFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 1032
    const/4 v8, 0x0

    invoke-static {v3, v4, v8}, Lcom/vivo/upgrade/utils/MdFive;->checkMdFive(Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v8

    if-eqz v8, :cond_11e

    const/4 v5, 0x0

    .line 1034
    :goto_104
    const-string v8, "Upgrade.CheckAppUpdate"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "checkAppExist mode==1 ret = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const/4 v8, -0x1

    if-eq v5, v8, :cond_5b

    .line 1036
    const/4 v1, 0x1

    goto/16 :goto_5b

    .line 1033
    :cond_11e
    const/4 v5, -0x1

    goto :goto_104
.end method

.method private downloadApk(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 19
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "downloadMd5"    # Ljava/lang/String;
    .param p6, "lowMd5"    # Ljava/lang/String;
    .param p7, "mode"    # I

    .prologue
    .line 734
    const-string v1, "Upgrade.CheckAppUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mTrynum = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mTryNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 735
    const-string v3, ", url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 734
    invoke-static {v1, v2}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    new-instance v10, Ljava/lang/Thread;

    new-instance v1, Lcom/vivo/upgrade/CheckAppUpdate$6;

    move-object v2, p0

    move v3, p2

    move v4, p4

    move-object v5, p1

    move-object v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/vivo/upgrade/CheckAppUpdate$6;-><init>(Lcom/vivo/upgrade/CheckAppUpdate;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v10, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v10, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mDownLoadThread:Ljava/lang/Thread;

    .line 845
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mDownLoadThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 846
    return-void
.end method

.method private downloadSilent(Lcom/vivo/upgrade/AppUpdateInfo;)V
    .registers 11
    .param p1, "appUpdateInfo"    # Lcom/vivo/upgrade/AppUpdateInfo;

    .prologue
    const/4 v8, 0x1

    .line 504
    sget-boolean v0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsDownloading:Z

    if-eqz v0, :cond_d

    .line 505
    const-string v0, "Upgrade.CheckAppUpdate"

    const-string v4, "downloadSilent is downloading"

    invoke-static {v0, v4}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :goto_c
    return-void

    .line 509
    :cond_d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 510
    const-string v4, "mounted"

    .line 509
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 510
    if-nez v0, :cond_21

    .line 511
    const-string v0, "Upgrade.CheckAppUpdate"

    const-string v4, "sdcard is not avaiable"

    invoke-static {v0, v4}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 515
    :cond_21
    iget-object v1, p1, Lcom/vivo/upgrade/AppUpdateInfo;->durl:Ljava/lang/String;

    .line 516
    .local v1, "url":Ljava/lang/String;
    iget-object v5, p1, Lcom/vivo/upgrade/AppUpdateInfo;->md5:Ljava/lang/String;

    .line 517
    .local v5, "md5":Ljava/lang/String;
    iget-object v3, p1, Lcom/vivo/upgrade/AppUpdateInfo;->filename:Ljava/lang/String;

    .line 518
    .local v3, "fileName":Ljava/lang/String;
    iget-object v6, p1, Lcom/vivo/upgrade/AppUpdateInfo;->lowMd5:Ljava/lang/String;

    .line 519
    .local v6, "lowMd5":Ljava/lang/String;
    iget v2, p1, Lcom/vivo/upgrade/AppUpdateInfo;->size:I

    .line 520
    .local v2, "size":I
    iget v7, p1, Lcom/vivo/upgrade/AppUpdateInfo;->mode:I

    .line 522
    .local v7, "mode":I
    if-nez v7, :cond_60

    .line 524
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSourcePath:Ljava/lang/String;

    .line 526
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSourcePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 527
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 528
    invoke-direct {p0, v8}, Lcom/vivo/upgrade/CheckAppUpdate;->setIsDownloading(Z)V

    .line 529
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchUrl:Ljava/lang/String;

    .end local v1    # "url":Ljava/lang/String;
    iget v2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchSize:I

    .end local v2    # "size":I
    iget-object v3, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchName:Ljava/lang/String;

    .line 530
    .end local v3    # "fileName":Ljava/lang/String;
    iget v4, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mChangeLevel:I

    iget-object v5, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchMd5:Ljava/lang/String;

    .end local v5    # "md5":Ljava/lang/String;
    move-object v0, p0

    .line 529
    invoke-direct/range {v0 .. v7}, Lcom/vivo/upgrade/CheckAppUpdate;->downloadApk(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 531
    const-string v0, "Upgrade.CheckAppUpdate"

    const-string v4, "patch update download"

    invoke-static {v0, v4}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 537
    .restart local v1    # "url":Ljava/lang/String;
    .restart local v2    # "size":I
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v5    # "md5":Ljava/lang/String;
    :cond_60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 538
    const-string v0, "Upgrade.CheckAppUpdate"

    const-string v4, "all update download"

    invoke-static {v0, v4}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-direct {p0, v8}, Lcom/vivo/upgrade/CheckAppUpdate;->setIsDownloading(Z)V

    .line 540
    iget v4, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mChangeLevel:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/vivo/upgrade/CheckAppUpdate;->downloadApk(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_c

    .line 542
    :cond_77
    const-string v0, "Upgrade.CheckAppUpdate"

    const-string v4, "url is null"

    invoke-static {v0, v4}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method private getAppUpdateParams()Ljava/util/HashMap;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1110
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1112
    .local v6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v12, -0x1

    .line 1113
    .local v12, "time1":J
    const-wide/16 v14, -0x1

    .line 1114
    .local v14, "time2":J
    const/4 v7, 0x0

    .line 1115
    .local v7, "simId1":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1117
    .local v8, "simId2":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1118
    .local v4, "netClass1":I
    const/4 v5, 0x0

    .line 1120
    .local v5, "netClass2":I
    const-string v9, "UNKNOWN"

    .line 1121
    .local v9, "simType1":Ljava/lang/String;
    const-string v10, "UNKNOWN"

    .line 1123
    .local v10, "simType2":Ljava/lang/String;
    const/4 v2, -0x1

    .line 1125
    .local v2, "count":I
    const-string v11, "appName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/CheckAppUpdate;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    const-string v11, "verCode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/CheckAppUpdate;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    const-string v11, "flag"

    invoke-static {}, Lcom/vivo/upgrade/utils/Util;->currentAPI()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    const-string v11, "pver"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    :try_start_58
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1132
    const-string v16, "st1"

    .line 1131
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v12

    .line 1133
    const-wide/16 v16, 0x0

    cmp-long v11, v12, v16

    if-eqz v11, :cond_74

    .line 1134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_71} :catch_169

    move-result-wide v16

    sub-long v12, v16, v12

    .line 1143
    :cond_74
    :goto_74
    :try_start_74
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1144
    const-string v16, "sn1"

    .line 1143
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_83} :catch_171

    move-result-object v7

    .line 1151
    :goto_84
    :try_start_84
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1152
    const-string v16, "st2"

    .line 1151
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v14

    .line 1153
    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_a0

    .line 1154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_9d} :catch_178

    move-result-wide v16

    sub-long v14, v16, v14

    .line 1162
    :cond_a0
    :goto_a0
    :try_start_a0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1163
    const-string v16, "sn2"

    .line 1162
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_af} :catch_180

    move-result-object v8

    .line 1170
    :goto_b0
    :try_start_b0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1171
    const-string v16, "sf"

    .line 1170
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_bf} :catch_187

    move-result v2

    .line 1178
    :goto_c0
    :try_start_c0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1179
    const-string v16, "net_state_class_1"

    .line 1178
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_cf} :catch_18e

    move-result v4

    .line 1186
    :goto_d0
    :try_start_d0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1187
    const-string v16, "net_state_class_2"

    .line 1186
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_df} :catch_195

    move-result v5

    .line 1194
    :goto_e0
    :try_start_e0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1195
    const-string v16, "sim_type_1"

    .line 1194
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_ef} :catch_19c

    move-result-object v9

    .line 1202
    :goto_f0
    :try_start_f0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1203
    const-string v16, "sim_type_2"

    .line 1202
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_ff} :catch_1a4

    move-result-object v10

    .line 1209
    :goto_100
    const-string v11, "st1"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const-string v11, "sn1"

    invoke-virtual {v6, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    const-string v11, "st2"

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    const-string v11, "sn2"

    invoke-virtual {v6, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    const-string v11, "sf"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    const-string v11, "nt"

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vivo/upgrade/net/NetUtils;->getConnectionTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 1214
    move-object/from16 v0, v16

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    const-string v11, "sm1"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    const-string v11, "sm2"

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    const-string v11, "srm1"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    const-string v11, "srm2"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    return-object v6

    .line 1137
    :catch_169
    move-exception v3

    .line 1138
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1139
    const-wide/16 v12, 0x0

    goto/16 :goto_74

    .line 1145
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_171
    move-exception v3

    .line 1146
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1147
    const/4 v7, 0x0

    goto/16 :goto_84

    .line 1156
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_178
    move-exception v3

    .line 1157
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1158
    const-wide/16 v14, 0x0

    goto/16 :goto_a0

    .line 1164
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_180
    move-exception v3

    .line 1165
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1166
    const/4 v8, 0x0

    goto/16 :goto_b0

    .line 1172
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_187
    move-exception v3

    .line 1173
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1174
    const/4 v2, 0x0

    goto/16 :goto_c0

    .line 1180
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_18e
    move-exception v3

    .line 1181
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1182
    const/4 v4, 0x0

    goto/16 :goto_d0

    .line 1188
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_195
    move-exception v3

    .line 1189
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1190
    const/4 v5, 0x0

    goto/16 :goto_e0

    .line 1196
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_19c
    move-exception v3

    .line 1197
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1198
    const-string v9, "UNKNOWN"

    goto/16 :goto_f0

    .line 1204
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1a4
    move-exception v3

    .line 1205
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1206
    const-string v10, "UNKNOWN"

    goto/16 :goto_100
.end method

.method private getNegativeText(I)Ljava/lang/String;
    .registers 7
    .param p1, "level"    # I

    .prologue
    .line 712
    const-string v0, ""

    .line 713
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1a

    .line 714
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 715
    iget-object v2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    const-string v3, "string"

    .line 716
    const-string v4, "vivo_upgrade_exit_app"

    .line 715
    invoke-static {v2, v3, v4}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 714
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 723
    :goto_19
    return-object v0

    .line 718
    :cond_1a
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 719
    iget-object v2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    const-string v3, "string"

    .line 720
    const-string v4, "vivo_upgrade_next_time"

    .line 719
    invoke-static {v2, v3, v4}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 718
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method private isCancelable(I)Z
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 727
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x1

    goto :goto_4
.end method

.method private isDownloadSilentUpdate(I)Z
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 704
    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private isForceUpdate(I)Z
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 700
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private isInstallSilentUpdate(I)Z
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 708
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private isNotUserUpdateMode(I)Z
    .registers 3
    .param p1, "level"    # I

    .prologue
    .line 328
    const/4 v0, 0x5

    if-ne p1, v0, :cond_9

    iget-boolean v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsCheckByUser:Z

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method

.method private isShowDialog(Ljava/lang/String;I)Z
    .registers 17
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 618
    const/4 v8, 0x1

    .line 619
    .local v8, "isShowDialog":Z
    iget-object v10, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    .line 620
    const-string v11, "com.vivo.upgrade.ikey.KEY_DOWNLOAD_APK_SKIP_VERCODE"

    const/16 v12, -0x64

    .line 619
    invoke-virtual {v10, v11, v12}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 621
    .local v9, "skipVerCode":I
    const-string v10, "Upgrade.CheckAppUpdate"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "111111111111:skipVerCode: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/16 v10, -0x64

    if-eq v9, v10, :cond_b4

    .line 623
    iget-object v10, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;

    iget v10, v10, Lcom/vivo/upgrade/AppUpdateInfo;->vercode:I

    if-ne v9, v10, :cond_b4

    iget-boolean v10, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsCheckByUser:Z

    if-nez v10, :cond_b4

    .line 625
    const-string v10, "Upgrade.CheckAppUpdate"

    const-string v11, "222222222222222222222222: "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v10, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    const-wide/16 v12, 0x0

    invoke-virtual {v10, p1, v12, v13}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 627
    .local v2, "date":J
    iget-object v10, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    .line 628
    const-string v11, "com.vivo.upgrade.ikey.KEY_NO_NOTICE_IN_SEVEN"

    const/4 v12, 0x0

    .line 627
    invoke-virtual {v10, v11, v12}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 630
    .local v5, "isNONoticeInSeven":Z
    const-string v10, "Upgrade.CheckAppUpdate"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "3333333333:date "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isNONoticeInSeven: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 631
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 630
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    if-eqz v5, :cond_a0

    .line 634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, v2

    .line 635
    .local v6, "innerDay":J
    const-wide/32 v10, 0x240c8400

    cmp-long v10, v6, v10

    if-gez v10, :cond_88

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_88

    .line 636
    const-string v10, "Upgrade.CheckAppUpdate"

    const-string v11, "Inner 7 days"

    invoke-static {v10, v11}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v10, "Upgrade.CheckAppUpdate"

    const-string v11, "4444444444444444444"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v10, 0x0

    .line 660
    .end local v2    # "date":J
    .end local v5    # "isNONoticeInSeven":Z
    .end local v6    # "innerDay":J
    :goto_87
    return v10

    .line 640
    .restart local v2    # "date":J
    .restart local v5    # "isNONoticeInSeven":Z
    .restart local v6    # "innerDay":J
    :cond_88
    const-string v10, "Upgrade.CheckAppUpdate"

    const-string v11, "out of 7 days"

    invoke-static {v10, v11}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v10, "Upgrade.CheckAppUpdate"

    const-string v11, "555555555555555555"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v10, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    .line 643
    const-string v11, "com.vivo.upgrade.ikey.KEY_NO_NOTICE_IN_SEVEN"

    const/4 v12, 0x0

    .line 642
    invoke-virtual {v10, v11, v12}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->putBoolean(Ljava/lang/String;Z)V

    .line 644
    const/4 v10, 0x1

    goto :goto_87

    .line 648
    .end local v6    # "innerDay":J
    :cond_a0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 649
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 650
    .local v1, "currentDay":I
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 651
    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 653
    .local v4, "day":I
    if-ne v4, v1, :cond_b4

    .line 654
    const/4 v8, 0x0

    .line 657
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "currentDay":I
    .end local v2    # "date":J
    .end local v4    # "day":I
    .end local v5    # "isNONoticeInSeven":Z
    :cond_b4
    const-string v10, "Upgrade.CheckAppUpdate"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "66666666666: isShowDialog: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string v10, "Upgrade.CheckAppUpdate"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "isShowDialog "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v8

    .line 660
    goto :goto_87
.end method

.method private preDownload(J)Z
    .registers 10
    .param p1, "size"    # J

    .prologue
    const/4 v2, 0x0

    .line 950
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 951
    const-string v4, "mounted"

    .line 950
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 951
    if-eqz v3, :cond_1d

    .line 952
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 954
    .local v1, "path":Ljava/io/File;
    :try_start_11
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/upgrade/utils/Util;->getAvailableMemorySize(Ljava/lang/String;)J
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_18} :catch_1e

    move-result-wide v4

    cmp-long v3, v4, p1

    if-gtz v3, :cond_23

    .line 964
    .end local v1    # "path":Ljava/io/File;
    :cond_1d
    :goto_1d
    return v2

    .line 957
    .restart local v1    # "path":Ljava/io/File;
    :catch_1e
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1d

    .line 964
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_23
    const/4 v2, 0x1

    goto :goto_1d
.end method

.method private processAppUpdate(Lcom/vivo/upgrade/AppUpdateInfo;)V
    .registers 15
    .param p1, "info"    # Lcom/vivo/upgrade/AppUpdateInfo;

    .prologue
    const/4 v12, 0x1

    .line 217
    const-string v9, "Upgrade.CheckAppUpdate"

    const-string v10, "-------11111111111111111---------"

    invoke-static {v9, v10}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget v5, p1, Lcom/vivo/upgrade/AppUpdateInfo;->stat:I

    .line 219
    .local v5, "stat":I
    const/16 v9, 0xd2

    if-ne v5, v9, :cond_124

    .line 221
    iget v3, p1, Lcom/vivo/upgrade/AppUpdateInfo;->level:I

    .line 222
    .local v3, "level":I
    const-string v9, "Upgrade.CheckAppUpdate"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "level = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v9, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/vivo/upgrade/net/NetUtils;->getConnectionType(Landroid/content/Context;)I

    move-result v7

    .line 228
    .local v7, "type":I
    const/4 v9, 0x2

    if-eq v3, v9, :cond_30

    const/4 v9, 0x4

    if-ne v3, v9, :cond_32

    :cond_30
    if-eq v7, v12, :cond_37

    .line 229
    :cond_32
    const/4 v9, 0x5

    if-gt v3, v9, :cond_37

    if-ge v3, v12, :cond_38

    .line 230
    :cond_37
    const/4 v3, 0x1

    .line 233
    :cond_38
    iput v3, p1, Lcom/vivo/upgrade/AppUpdateInfo;->level:I

    .line 234
    iget-object v0, p1, Lcom/vivo/upgrade/AppUpdateInfo;->description:Ljava/lang/String;

    .line 235
    .local v0, "description":Ljava/lang/String;
    iget v8, p1, Lcom/vivo/upgrade/AppUpdateInfo;->vercode:I

    .line 236
    .local v8, "verCode":I
    iget v4, p1, Lcom/vivo/upgrade/AppUpdateInfo;->mode:I

    .line 237
    .local v4, "mode":I
    const-string v9, "Upgrade.CheckAppUpdate"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "mode is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-nez v4, :cond_66

    .line 239
    iget-object v9, p1, Lcom/vivo/upgrade/AppUpdateInfo;->patchUrl:Ljava/lang/String;

    iput-object v9, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchUrl:Ljava/lang/String;

    .line 240
    iget-object v9, p1, Lcom/vivo/upgrade/AppUpdateInfo;->patchMd5:Ljava/lang/String;

    iput-object v9, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchMd5:Ljava/lang/String;

    .line 241
    iget v9, p1, Lcom/vivo/upgrade/AppUpdateInfo;->patchSize:I

    iput v9, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchSize:I

    .line 242
    iget-object v9, p1, Lcom/vivo/upgrade/AppUpdateInfo;->patchFilename:Ljava/lang/String;

    iput-object v9, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchName:Ljava/lang/String;

    .line 245
    :cond_66
    const-string v9, "Upgrade.CheckAppUpdate"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "checkAppExist = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mCheckAppExist:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-boolean v9, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mCheckAppExist:Z

    if-nez v9, :cond_c2

    .line 248
    const/4 v2, 0x0

    .line 253
    .local v2, "isShow":Z
    invoke-direct {p0, v3}, Lcom/vivo/upgrade/CheckAppUpdate;->isForceUpdate(I)Z

    move-result v9

    if-nez v9, :cond_8d

    invoke-direct {p0, v3}, Lcom/vivo/upgrade/CheckAppUpdate;->isDownloadSilentUpdate(I)Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 254
    :cond_8d
    const/4 v2, 0x1

    .line 260
    :cond_8e
    if-nez v2, :cond_a8

    const-string v9, "com.vivo.upgrade.ikey.KEY_DOWNLOAD_DLG_SHOW"

    invoke-direct {p0, v9, v3}, Lcom/vivo/upgrade/CheckAppUpdate;->isShowDialog(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 261
    invoke-direct {p0, v3}, Lcom/vivo/upgrade/CheckAppUpdate;->isNotUserUpdateMode(I)Z

    move-result v9

    if-eqz v9, :cond_a8

    .line 262
    const/4 v2, 0x1

    .line 263
    iget-boolean v9, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsCheckByUser:Z

    if-nez v9, :cond_a8

    .line 264
    const-string v9, "com.vivo.upgrade.ikey.KEY_DOWNLOAD_DLG_SHOW"

    invoke-direct {p0, v8, v9}, Lcom/vivo/upgrade/CheckAppUpdate;->updateVerCodeTimes(ILjava/lang/String;)V

    .line 267
    :cond_a8
    const-string v9, "Upgrade.CheckAppUpdate"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "isShow = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    if-eqz v2, :cond_c1

    .line 269
    invoke-direct {p0, p1}, Lcom/vivo/upgrade/CheckAppUpdate;->showDialog(Lcom/vivo/upgrade/AppUpdateInfo;)V

    .line 319
    .end local v0    # "description":Ljava/lang/String;
    .end local v2    # "isShow":Z
    .end local v3    # "level":I
    .end local v4    # "mode":I
    .end local v7    # "type":I
    .end local v8    # "verCode":I
    :cond_c1
    :goto_c1
    return-void

    .line 273
    .restart local v0    # "description":Ljava/lang/String;
    .restart local v3    # "level":I
    .restart local v4    # "mode":I
    .restart local v7    # "type":I
    .restart local v8    # "verCode":I
    :cond_c2
    const/4 v2, 0x0

    .line 274
    .restart local v2    # "isShow":Z
    invoke-direct {p0, v3}, Lcom/vivo/upgrade/CheckAppUpdate;->isForceUpdate(I)Z

    move-result v9

    if-eqz v9, :cond_d1

    .line 275
    const/4 v2, 0x1

    .line 276
    const-string v9, "Upgrade.CheckAppUpdate"

    const-string v10, "is force update, exist"

    invoke-static {v9, v10}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_d1
    if-nez v2, :cond_e5

    const-string v9, "com.vivo.upgrade.ikey.KEY_INSTALL_DLG_SHOW"

    invoke-direct {p0, v9, v3}, Lcom/vivo/upgrade/CheckAppUpdate;->isShowDialog(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_e5

    .line 281
    const/4 v2, 0x1

    .line 282
    iget-boolean v9, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsCheckByUser:Z

    if-nez v9, :cond_e5

    .line 283
    const-string v9, "com.vivo.upgrade.ikey.KEY_INSTALL_DLG_SHOW"

    invoke-direct {p0, v8, v9}, Lcom/vivo/upgrade/CheckAppUpdate;->updateVerCodeTimes(ILjava/lang/String;)V

    .line 287
    :cond_e5
    if-eqz v2, :cond_c1

    .line 289
    iget-boolean v9, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsCheckByUser:Z

    if-nez v9, :cond_120

    invoke-direct {p0, v3}, Lcom/vivo/upgrade/CheckAppUpdate;->isInstallSilentUpdate(I)Z

    move-result v9

    if-eqz v9, :cond_120

    .line 291
    iget-object v9, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    .line 292
    const-string v10, "com.vivo.upgrade.ikey.KEY_DOWNLOAD_PATH"

    const/4 v11, 0x0

    .line 291
    invoke-virtual {v9, v10, v11}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c1

    .line 295
    if-nez v4, :cond_111

    .line 296
    new-instance v6, Lcom/vivo/upgrade/utils/MdFiveCheckTask;

    .line 297
    iget-object v9, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    .line 296
    invoke-direct {v6, v9, v3, v4}, Lcom/vivo/upgrade/utils/MdFiveCheckTask;-><init>(Landroid/content/Context;II)V

    .line 299
    .local v6, "task":Lcom/vivo/upgrade/utils/MdFiveCheckTask;
    iget-object v9, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mPatchMd5:Ljava/lang/String;

    iget-object v10, p1, Lcom/vivo/upgrade/AppUpdateInfo;->lowMd5:Ljava/lang/String;

    .line 298
    invoke-static {v6, v1, v9, v10}, Lcom/vivo/upgrade/utils/TaskExcute;->excuteMdFiveCheck(Landroid/os/AsyncTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    .line 301
    .end local v6    # "task":Lcom/vivo/upgrade/utils/MdFiveCheckTask;
    :cond_111
    new-instance v6, Lcom/vivo/upgrade/utils/MdFiveCheckTask;

    .line 302
    iget-object v9, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    .line 301
    invoke-direct {v6, v9, v3, v4}, Lcom/vivo/upgrade/utils/MdFiveCheckTask;-><init>(Landroid/content/Context;II)V

    .line 304
    .restart local v6    # "task":Lcom/vivo/upgrade/utils/MdFiveCheckTask;
    iget-object v9, p1, Lcom/vivo/upgrade/AppUpdateInfo;->md5:Ljava/lang/String;

    iget-object v10, p1, Lcom/vivo/upgrade/AppUpdateInfo;->lowMd5:Ljava/lang/String;

    .line 303
    invoke-static {v6, v1, v9, v10}, Lcom/vivo/upgrade/utils/TaskExcute;->excuteMdFiveCheck(Landroid/os/AsyncTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    .line 308
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v6    # "task":Lcom/vivo/upgrade/utils/MdFiveCheckTask;
    :cond_120
    invoke-direct {p0, v8, v3, v0}, Lcom/vivo/upgrade/CheckAppUpdate;->showInstallDialog(IILjava/lang/String;)V

    goto :goto_c1

    .line 315
    .end local v0    # "description":Ljava/lang/String;
    .end local v2    # "isShow":Z
    .end local v3    # "level":I
    .end local v4    # "mode":I
    .end local v7    # "type":I
    .end local v8    # "verCode":I
    :cond_124
    iget-boolean v9, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsCheckByUser:Z

    if-eqz v9, :cond_c1

    iget-object v9, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mTaskCallBack:Lcom/vivo/upgrade/TaskCallBack;

    if-eqz v9, :cond_c1

    .line 316
    iget-object v9, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mTaskCallBack:Lcom/vivo/upgrade/TaskCallBack;

    invoke-interface {v9, v5}, Lcom/vivo/upgrade/TaskCallBack;->onPublishProgress(I)V

    goto :goto_c1
.end method

.method private setIsDownloading(Z)V
    .registers 2
    .param p1, "isDownloading"    # Z

    .prologue
    .line 1090
    sput-boolean p1, Lcom/vivo/upgrade/CheckAppUpdate;->mIsDownloading:Z

    .line 1091
    return-void
.end method

.method private showDialog(Lcom/vivo/upgrade/AppUpdateInfo;)V
    .registers 6
    .param p1, "info"    # Lcom/vivo/upgrade/AppUpdateInfo;

    .prologue
    .line 332
    const-string v0, "Upgrade.CheckAppUpdate"

    const-string v1, "-------22222222222222222--------"

    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget v0, p1, Lcom/vivo/upgrade/AppUpdateInfo;->level:I

    iput v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mChangeLevel:I

    .line 334
    const-string v0, "Upgrade.CheckAppUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mChangeLevel "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mChangeLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mChangeLevel:I

    invoke-direct {p0, v0}, Lcom/vivo/upgrade/CheckAppUpdate;->isForceUpdate(I)Z

    move-result v0

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsCheckByUser:Z

    if-eqz v0, :cond_30

    .line 340
    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mChangeLevel:I

    .line 343
    :cond_30
    iget v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mChangeLevel:I

    invoke-direct {p0, v0}, Lcom/vivo/upgrade/CheckAppUpdate;->isDownloadSilentUpdate(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 344
    invoke-direct {p0, p1}, Lcom/vivo/upgrade/CheckAppUpdate;->downloadSilent(Lcom/vivo/upgrade/AppUpdateInfo;)V

    .line 357
    :goto_3b
    return-void

    .line 347
    :cond_3c
    sget-boolean v0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsDownloading:Z

    if-nez v0, :cond_44

    .line 348
    invoke-direct {p0, p1}, Lcom/vivo/upgrade/CheckAppUpdate;->showUpdateDialog(Lcom/vivo/upgrade/AppUpdateInfo;)V

    goto :goto_3b

    .line 351
    :cond_44
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    .line 352
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    const-string v2, "string"

    .line 353
    const-string v3, "vivo_upgrade_update_is_downloading"

    .line 352
    invoke-static {v1, v2, v3}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 354
    const/4 v2, 0x0

    .line 350
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3b
.end method

.method private showInstallDialog(IILjava/lang/String;)V
    .registers 12
    .param p1, "verCode"    # I
    .param p2, "level"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 548
    const-string v0, "Upgrade.CheckAppUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "-------showInstallDialog() enter-------\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 549
    iget-boolean v3, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsControlShowDialog:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 548
    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-boolean v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsControlShowDialog:Z

    if-eqz v0, :cond_2e

    .line 552
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 553
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->dismiss()V

    .line 556
    :cond_2b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    .line 559
    :cond_2e
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 561
    :cond_3a
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    .line 562
    const-string v3, "string"

    const-string v4, "vivo_upgrade_install_tips"

    .line 561
    invoke-static {v1, v3, v4}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    .line 564
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "vivo_upgrade_install_app"

    .line 563
    invoke-static {v1, v3, v4}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 565
    .local v5, "positiveBtnText":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/vivo/upgrade/CheckAppUpdate;->getNegativeText(I)Ljava/lang/String;

    move-result-object v6

    .line 567
    .local v6, "negativeBtnText":Ljava/lang/String;
    new-instance v0, Lcom/vivo/upgrade/SelfUpdateDialog;

    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    const-string v3, ""

    .line 569
    const/4 v7, 0x3

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/vivo/upgrade/SelfUpdateDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 567
    iput-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    .line 570
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    invoke-direct {p0, p2}, Lcom/vivo/upgrade/CheckAppUpdate;->isCancelable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/SelfUpdateDialog;->setCancelable(Z)V

    .line 572
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    new-instance v1, Lcom/vivo/upgrade/CheckAppUpdate$5;

    invoke-direct {v1, p0, p2}, Lcom/vivo/upgrade/CheckAppUpdate$5;-><init>(Lcom/vivo/upgrade/CheckAppUpdate;I)V

    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/SelfUpdateDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 610
    .end local v2    # "title":Ljava/lang/String;
    .end local v5    # "positiveBtnText":Ljava/lang/String;
    .end local v6    # "negativeBtnText":Ljava/lang/String;
    :cond_7e
    iget-boolean v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsControlShowDialog:Z

    if-nez v0, :cond_87

    .line 611
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->show()V

    .line 614
    :cond_87
    return-void
.end method

.method private showUpdateDialog(Lcom/vivo/upgrade/AppUpdateInfo;)V
    .registers 13
    .param p1, "info"    # Lcom/vivo/upgrade/AppUpdateInfo;

    .prologue
    .line 360
    const-string v0, "Upgrade.CheckAppUpdate"

    const-string v1, "-------showUpdateDialog() enter-------"

    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v0, "Upgrade.CheckAppUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "--mIsControlShowDialog: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsControlShowDialog:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-boolean v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsControlShowDialog:Z

    if-eqz v0, :cond_35

    .line 364
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 365
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->dismiss()V

    .line 368
    :cond_32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    .line 371
    :cond_35
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_104

    .line 373
    :cond_41
    iget v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mChangeLevel:I

    invoke-direct {p0, v0}, Lcom/vivo/upgrade/CheckAppUpdate;->isForceUpdate(I)Z

    move-result v8

    .line 374
    .local v8, "isForceUpdate":Z
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    .line 375
    const-string v4, "string"

    const-string v9, "vivo_upgrade_app_new_version"

    .line 374
    invoke-static {v1, v4, v9}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "title":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    .line 377
    const-string v9, "string"

    const-string v10, "vivo_upgrade_update_dialog_version_text"

    invoke-static {v4, v9, v10}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    iget-object v1, p1, Lcom/vivo/upgrade/AppUpdateInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "version":Ljava/lang/String;
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    .line 381
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    const-string v4, "string"

    const-string v9, "vivo_upgrade_package_update"

    .line 380
    invoke-static {v1, v4, v9}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 382
    .local v5, "positiveBtnText":Ljava/lang/String;
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    .line 383
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    const-string v4, "string"

    const-string v9, "vivo_upgrade_update_later"

    .line 382
    invoke-static {v1, v4, v9}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, "negativeBtnText":Ljava/lang/String;
    const/4 v7, 0x1

    .line 385
    .local v7, "dialogType":I
    if-eqz v8, :cond_be

    .line 386
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    .line 387
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    const-string v4, "string"

    const-string v9, "vivo_upgrade_update_now"

    .line 386
    invoke-static {v1, v4, v9}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 388
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    .line 389
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    const-string v4, "string"

    const-string v9, "vivo_upgrade_exit_app"

    .line 388
    invoke-static {v1, v4, v9}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 390
    const/4 v7, 0x2

    .line 393
    :cond_be
    new-instance v0, Lcom/vivo/upgrade/SelfUpdateDialog;

    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    .line 394
    iget-object v4, p1, Lcom/vivo/upgrade/AppUpdateInfo;->description:Ljava/lang/String;

    .line 395
    invoke-direct/range {v0 .. v7}, Lcom/vivo/upgrade/SelfUpdateDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 393
    iput-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    .line 396
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mDownClickListener:Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;

    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/SelfUpdateDialog;->setmDownClickListener(Lcom/vivo/upgrade/SelfUpdateDialog$UpdateDownListener;)V

    .line 397
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    iget v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mChangeLevel:I

    invoke-direct {p0, v1}, Lcom/vivo/upgrade/CheckAppUpdate;->isCancelable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/SelfUpdateDialog;->setCancelable(Z)V

    .line 398
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    new-instance v1, Lcom/vivo/upgrade/CheckAppUpdate$4;

    invoke-direct {v1, p0, v8}, Lcom/vivo/upgrade/CheckAppUpdate$4;-><init>(Lcom/vivo/upgrade/CheckAppUpdate;Z)V

    invoke-virtual {v0, v1}, Lcom/vivo/upgrade/SelfUpdateDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 420
    const-string v0, "Upgrade.CheckAppUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "---55555555555555555---mIsControlShowDialog-"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    iget-boolean v4, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsControlShowDialog:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-static {v0, v1}, Lcom/vivo/upgrade/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-boolean v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsControlShowDialog:Z

    if-nez v0, :cond_104

    .line 423
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->show()V

    .line 427
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v5    # "positiveBtnText":Ljava/lang/String;
    .end local v6    # "negativeBtnText":Ljava/lang/String;
    .end local v7    # "dialogType":I
    .end local v8    # "isForceUpdate":Z
    :cond_104
    return-void
.end method

.method private updateVerCodeTimes(ILjava/lang/String;)V
    .registers 9
    .param p1, "verCode"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 665
    move v0, p1

    .line 667
    .local v0, "code":I
    const-string v1, "com.vivo.upgrade.ikey.KEY_DOWNLOAD_DLG_SHOW"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 668
    const-string v1, "com.vivo.upgrade.ikey.KEY_INSTALL_DLG_SHOW"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 669
    const-string v1, "Upgrade.CheckAppUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "the key is error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 670
    const/16 v0, -0x64

    .line 671
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    const-string v2, "com.vivo.upgrade.ikey.KEY_DOWNLOAD_DLG_SHOW"

    invoke-virtual {v1, v2, v4, v5}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->putLong(Ljava/lang/String;J)V

    .line 673
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    const-string v2, "com.vivo.upgrade.ikey.KEY_INSTALL_DLG_SHOW"

    invoke-virtual {v1, v2, v4, v5}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->putLong(Ljava/lang/String;J)V

    .line 695
    :goto_3c
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    .line 696
    const-string v2, "com.vivo.upgrade.ikey.KEY_DOWNLOAD_APK_SKIP_VERCODE"

    invoke-virtual {v1, v2, v0}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->putInt(Ljava/lang/String;I)V

    .line 697
    return-void

    .line 677
    :cond_44
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    .line 678
    const-string v2, "com.vivo.upgrade.ikey.KEY_DOWNLOAD_APK_SKIP_VERCODE"

    const/16 v3, -0x64

    .line 677
    invoke-virtual {v1, v2, v3}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_5e

    .line 685
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    const-string v2, "com.vivo.upgrade.ikey.KEY_DOWNLOAD_DLG_SHOW"

    invoke-virtual {v1, v2, v4, v5}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->putLong(Ljava/lang/String;J)V

    .line 687
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    const-string v2, "com.vivo.upgrade.ikey.KEY_INSTALL_DLG_SHOW"

    invoke-virtual {v1, v2, v4, v5}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->putLong(Ljava/lang/String;J)V

    .line 691
    :cond_5e
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mSharePreferenceManager:Lcom/vivo/upgrade/utils/SharePreferenceManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Lcom/vivo/upgrade/utils/SharePreferenceManager;->putLong(Ljava/lang/String;J)V

    goto :goto_3c
.end method


# virtual methods
.method public checkAppUpdate()V
    .registers 7

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/vivo/upgrade/CheckAppUpdate;->getAppUpdateParams()Ljava/util/HashMap;

    move-result-object v1

    .line 134
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsCheckByUser:Z

    if-eqz v2, :cond_f

    .line 135
    const-string v2, "manual"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_f
    new-instance v0, Lcom/vivo/upgrade/net/ConnectTask;

    iget-object v2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    .line 139
    sget-object v3, Lcom/vivo/upgrade/utils/DataLoader;->CHECK_APP_UPDATE_URL:Ljava/lang/String;

    .line 140
    const/4 v4, 0x0

    .line 138
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/vivo/upgrade/net/ConnectTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 142
    .local v0, "netTask":Lcom/vivo/upgrade/net/ConnectTask;
    new-instance v2, Lcom/vivo/upgrade/CheckAppUpdate$3;

    invoke-direct {v2, p0}, Lcom/vivo/upgrade/CheckAppUpdate$3;-><init>(Lcom/vivo/upgrade/CheckAppUpdate;)V

    invoke-virtual {v0, v2}, Lcom/vivo/upgrade/net/ConnectTask;->setNetResponseListener(Lcom/vivo/upgrade/net/NetConnectTask$NetResponseListener;)V

    .line 180
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Lcom/vivo/upgrade/net/ConnectTask;->setTimeout(I)V

    .line 181
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vivo/upgrade/net/ConnectTask;->setConnectTimes(I)V

    .line 182
    invoke-virtual {v0}, Lcom/vivo/upgrade/net/ConnectTask;->connect()V

    .line 184
    iget-object v2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;

    if-eqz v2, :cond_47

    .line 185
    iget-object v2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;

    iget-object v2, v2, Lcom/vivo/upgrade/AppUpdateInfo;->md5:Ljava/lang/String;

    .line 186
    iget-object v3, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;

    iget-object v3, v3, Lcom/vivo/upgrade/AppUpdateInfo;->patchMd5:Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;

    iget-object v4, v4, Lcom/vivo/upgrade/AppUpdateInfo;->lowMd5:Ljava/lang/String;

    iget-object v5, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;

    iget v5, v5, Lcom/vivo/upgrade/AppUpdateInfo;->mode:I

    .line 185
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/vivo/upgrade/CheckAppUpdate;->checkAppExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mCheckAppExist:Z

    .line 188
    :cond_47
    return-void
.end method

.method public dismissDialog()V
    .registers 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1100
    iget-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    invoke-virtual {v0}, Lcom/vivo/upgrade/SelfUpdateDialog;->dismiss()V

    .line 1102
    :cond_11
    return-void
.end method

.method getDownloadUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 1047
    move-object v5, p2

    .line 1048
    .local v5, "url":Ljava/lang/String;
    const-string v3, ""

    .line 1050
    .local v3, "paramStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    .line 1049
    invoke-static {v7, v8}, Lcom/vivo/upgrade/utils/Util;->appendGreneralInfomation(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v4

    .line 1054
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_a
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1056
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_88

    move-result v7

    if-nez v7, :cond_44

    .line 1076
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 1077
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1080
    :cond_2f
    const-string v7, "Upgrade.CheckAppUpdate"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "final download url "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    return-object v5

    .line 1058
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_44
    :try_start_44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1059
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1060
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_58

    .line 1061
    const-string v7, "UTF-8"

    invoke-static {v2, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1064
    :cond_58
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1066
    .local v6, "val":Ljava/lang/String;
    if-eqz v6, :cond_66

    .line 1067
    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1070
    :cond_66
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_86} :catch_88

    move-result-object v3

    goto :goto_12

    .line 1072
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "val":Ljava/lang/String;
    :catch_88
    move-exception v7

    goto :goto_18
.end method

.method public isDownloading()Z
    .registers 2

    .prologue
    .line 1094
    sget-boolean v0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsDownloading:Z

    return v0
.end method

.method onPostExecute()V
    .registers 6

    .prologue
    .line 193
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_35

    .line 195
    const-string v1, "Upgrade.CheckAppUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "logswitch "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;

    iget v3, v3, Lcom/vivo/upgrade/AppUpdateInfo;->logswitch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/upgrade/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v0, Landroid/content/Intent;

    .line 197
    const-string v1, "com.bbk.iqoo.StartupIntentService.NotifyToCollectLog"

    .line 196
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "logswitch"

    iget-object v2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;

    iget v2, v2, Lcom/vivo/upgrade/AppUpdateInfo;->logswitch:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 202
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_35
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;

    if-nez v1, :cond_51

    iget-boolean v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsCheckByUser:Z

    if-eqz v1, :cond_51

    .line 204
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    .line 205
    iget-object v2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    const-string v3, "string"

    .line 206
    const-string v4, "vivo_upgrade_msg_network_error"

    .line 205
    invoke-static {v2, v3, v4}, Lcom/vivo/upgrade/utils/Reflact;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 207
    const/4 v3, 0x0

    .line 203
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 210
    :cond_51
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;

    if-eqz v1, :cond_5a

    .line 211
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateInfo:Lcom/vivo/upgrade/AppUpdateInfo;

    invoke-direct {p0, v1}, Lcom/vivo/upgrade/CheckAppUpdate;->processAppUpdate(Lcom/vivo/upgrade/AppUpdateInfo;)V

    .line 214
    :cond_5a
    return-void
.end method

.method public restoreBoolean()V
    .registers 2

    .prologue
    .line 1086
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    .line 1087
    return-void
.end method

.method public setControlShowDialog(ZLcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;)V
    .registers 3
    .param p1, "isControl"    # Z
    .param p2, "listener"    # Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;

    .prologue
    .line 1229
    iput-boolean p1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsControlShowDialog:Z

    .line 1230
    iput-object p2, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mDialogDismissListener:Lcom/vivo/upgrade/CheckUpdateManager$OnUpdateDialogDismissListener;

    .line 1231
    return-void
.end method

.method public showDialog()Z
    .registers 5

    .prologue
    .line 1237
    const-string v1, "Upgrade.CheckAppUpdate"

    const-string v2, "----66666666666-----showDialog()----------"

    invoke-static {v1, v2}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    const-string v1, "Upgrade.CheckAppUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--mIsControlShowDialog: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsControlShowDialog:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const/4 v0, 0x0

    .line 1241
    .local v0, "isShow":Z
    iget-boolean v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mIsControlShowDialog:Z

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1242
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    invoke-virtual {v1}, Lcom/vivo/upgrade/SelfUpdateDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1243
    iget-object v1, p0, Lcom/vivo/upgrade/CheckAppUpdate;->mUpdateDialog:Lcom/vivo/upgrade/SelfUpdateDialog;

    invoke-virtual {v1}, Lcom/vivo/upgrade/SelfUpdateDialog;->show()V

    .line 1244
    const/4 v0, 0x1

    .line 1247
    :cond_3e
    const-string v1, "Upgrade.CheckAppUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--isShow: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/upgrade/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    return v0
.end method
