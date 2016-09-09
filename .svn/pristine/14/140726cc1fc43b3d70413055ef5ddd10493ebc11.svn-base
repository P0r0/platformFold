.class public Lcom/gionee/gsp/service/GnCommplatformImplForBase;
.super Lcom/gionee/gsp/GnCommplatform;
.source "GnCommplatformImplForBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gionee/gsp/service/GnCommplatformImplForBase$ResultCode;
    }
.end annotation


# static fields
.field private static DOWNLOAD_LOCK:Ljava/lang/Boolean;

.field private static LOGIN_REQUEST_CODE:I

.field private static UPGRA_REQUEST_CODE:I

.field private static sGnCommplatform:Lcom/gionee/gsp/GnCommplatform;

.field static sNeedCheckComponentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccount:Lcom/gionee/gsp/service/account/IAccount;

.field mBusinessSub:Lcom/gionee/gsp/service/BusinessSub;

.field private mGnCommplatformImpl:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

.field mGnGetMessageService:Lcom/gionee/gsp/service/GnGetMessageService;

.field mGnHttpRequester:Lcom/gionee/gsp/util/GnHttpRequester;

.field mGnLocalConfig:Lcom/gionee/gsp/common/GnLocalConfig;

.field mGnSendLogService:Lcom/gionee/gsp/service/GnSendLogService;

.field mGnSendMessageService:Lcom/gionee/gsp/service/GnSendMessageService;

.field mGnSingleThreadService:Lcom/gionee/gsp/service/GnSingleThreadService;

.field public mIGnUiListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/gionee/gsp/service/account/sdk/RequestTpye;",
            "Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 84
    const/16 v0, 0x251b

    sput v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->LOGIN_REQUEST_CODE:I

    .line 85
    const/16 v0, 0x522

    sput v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->UPGRA_REQUEST_CODE:I

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sNeedCheckComponentMap:Ljava/util/Map;

    .line 2308
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->DOWNLOAD_LOCK:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/gionee/gsp/GnCommplatform;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mIGnUiListenerMap:Ljava/util/HashMap;

    .line 110
    new-instance v0, Lcom/gionee/gsp/util/GnHttpRequester;

    invoke-direct {v0}, Lcom/gionee/gsp/util/GnHttpRequester;-><init>()V

    iput-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mGnHttpRequester:Lcom/gionee/gsp/util/GnHttpRequester;

    .line 112
    new-instance v0, Lcom/gionee/gsp/common/GnLocalConfig;

    invoke-direct {v0}, Lcom/gionee/gsp/common/GnLocalConfig;-><init>()V

    iput-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mGnLocalConfig:Lcom/gionee/gsp/common/GnLocalConfig;

    .line 136
    invoke-static {}, Lcom/gionee/gsp/service/GnGetMessageService;->getInStance()Lcom/gionee/gsp/service/GnGetMessageService;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mGnGetMessageService:Lcom/gionee/gsp/service/GnGetMessageService;

    .line 138
    invoke-static {}, Lcom/gionee/gsp/service/GnSingleThreadService;->getInStance()Lcom/gionee/gsp/service/GnSingleThreadService;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mGnSingleThreadService:Lcom/gionee/gsp/service/GnSingleThreadService;

    .line 143
    invoke-static {}, Lcom/gionee/gsp/service/GnSendMessageService;->getInStance()Lcom/gionee/gsp/service/GnSendMessageService;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mGnSendMessageService:Lcom/gionee/gsp/service/GnSendMessageService;

    .line 145
    invoke-static {}, Lcom/gionee/gsp/service/GnSendLogService;->getInStance()Lcom/gionee/gsp/service/GnSendLogService;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mGnSendLogService:Lcom/gionee/gsp/service/GnSendLogService;

    .line 147
    invoke-static {p1}, Lcom/gionee/gsp/service/account/AccountImpl;->getInstance(Landroid/content/Context;)Lcom/gionee/gsp/service/account/IAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mAccount:Lcom/gionee/gsp/service/account/IAccount;

    .line 149
    iput-object p0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mGnCommplatformImpl:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    .line 150
    new-instance v0, Lcom/gionee/gsp/service/BusinessSub;

    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mGnCommplatformImpl:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    invoke-direct {v0, v1}, Lcom/gionee/gsp/service/BusinessSub;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;)V

    iput-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mBusinessSub:Lcom/gionee/gsp/service/BusinessSub;

    .line 152
    return-void
.end method

.method static synthetic access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/data/GnBaseAd;)V
    .registers 2

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->printLocalServiceLog(Lcom/gionee/gsp/data/GnBaseAd;)V

    return-void
.end method

.method static synthetic access$1(Lcom/gionee/gsp/GnCallbackListener;Ljava/lang/String;Lcom/gionee/gsp/service/GnBaseService;)Z
    .registers 4

    .prologue
    .line 176
    invoke-static {p0, p1, p2}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->isNeedCallback(Lcom/gionee/gsp/GnCallbackListener;Ljava/lang/String;Lcom/gionee/gsp/service/GnBaseService;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getDownloadFileNameForStandalone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getProductNameForStandalone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 711
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getVersionNameForStandalone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/content/Context;)Ljava/util/Map;
    .registers 3

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getCommonParameters(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->getDownloadURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/util/List;Ljava/util/List;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V
    .registers 6

    .prologue
    .line 1629
    invoke-direct/range {p0 .. p5}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->checkDownload(Ljava/util/List;Ljava/util/List;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$5(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;Ljava/util/List;)V
    .registers 5

    .prologue
    .line 1530
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->downLoadAPK(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$6(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcom/gionee/gsp/dialog/GnDownloadDialog;Lcom/gionee/gsp/GnCallbackListener;Ljava/util/List;)V
    .registers 7

    .prologue
    .line 440
    invoke-direct/range {p0 .. p6}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->downloadApp(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcom/gionee/gsp/dialog/GnDownloadDialog;Lcom/gionee/gsp/GnCallbackListener;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$7(I)V
    .registers 1

    .prologue
    .line 84
    sput p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->LOGIN_REQUEST_CODE:I

    return-void
.end method

.method static synthetic access$8()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 2308
    sget-object v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->DOWNLOAD_LOCK:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$9(Ljava/lang/Boolean;)V
    .registers 1

    .prologue
    .line 2308
    sput-object p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->DOWNLOAD_LOCK:Ljava/lang/Boolean;

    return-void
.end method

.method private assignedTasks(Landroid/content/Context;Lcom/gionee/gsp/data/GnComponentConfigData;Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "gnComponentConfigData"    # Lcom/gionee/gsp/data/GnComponentConfigData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnInstanllPackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1659
    .local p3, "needToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .local p4, "needToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    invoke-static {}, Lcom/gionee/gsp/util/GnCheckWorkMode;->getInstance()Lcom/gionee/gsp/util/GnCheckWorkMode;

    move-result-object v2

    iget-boolean v2, v2, Lcom/gionee/gsp/util/GnCheckWorkMode;->mIsTestMode:Z

    if-eqz v2, :cond_15

    .line 1661
    const/4 v1, 0x0

    .line 1675
    .local v1, "isLoadAssets":Z
    invoke-static {}, Lcom/gionee/gsp/util/GnCheckWorkMode;->getInstance()Lcom/gionee/gsp/util/GnCheckWorkMode;

    move-result-object v2

    iget-boolean v1, v2, Lcom/gionee/gsp/util/GnCheckWorkMode;->mIsLoadAssetsGSP:Z

    .line 1676
    if-nez v1, :cond_15

    .line 1677
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1691
    .end local v1    # "isLoadAssets":Z
    :goto_14
    return-void

    .line 1683
    :cond_15
    invoke-static {p1, p2}, Lcom/gionee/gsp/util/GnCommonUtil;->copyApk(Landroid/content/Context;Lcom/gionee/gsp/data/GnComponentConfigData;)Ljava/io/File;

    move-result-object v0

    .line 1684
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1685
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1688
    :cond_23
    new-instance v2, Lcom/gionee/gsp/data/GnInstanllPackageInfo;

    iget-object v3, p2, Lcom/gionee/gsp/data/GnComponentConfigData;->packageName:Ljava/lang/String;

    .line 1689
    iget-object v4, p2, Lcom/gionee/gsp/data/GnComponentConfigData;->currentVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/gionee/gsp/data/GnInstanllPackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14
.end method

.method private check(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "installCallback"    # Lcom/gionee/gsp/service/GnBaseInstallListener;

    .prologue
    .line 1378
    invoke-virtual {p0, p1, p2}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->checkLocalEnvironment(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1381
    invoke-virtual {p2}, Lcom/gionee/gsp/service/GnBaseInstallListener;->onReCheck()V

    .line 1383
    :cond_9
    return-void
.end method

.method private checkAccount(Landroid/app/Activity;)Z
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1254
    const/4 v0, 0x1

    .line 1255
    .local v0, "result":Z
    if-eqz v0, :cond_3

    .line 1280
    :cond_3
    return v0
.end method

.method private checkDownload(Ljava/util/List;Ljava/util/List;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnInstanllPackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1632
    .local p1, "needToUpdateGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .local p2, "needToAddGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .local p4, "needToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .local p5, "needToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 1633
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1b

    .line 1639
    .end local v1    # "i":I
    :cond_d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1a

    .line 1640
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_27

    .line 1645
    .end local v1    # "i":I
    :cond_1a
    return-void

    .line 1634
    .restart local v1    # "i":I
    :cond_1b
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gionee/gsp/data/GnComponentConfigData;

    .line 1635
    .local v0, "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    invoke-direct {p0, p3, v0, p4, p5}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->assignedTasks(Landroid/content/Context;Lcom/gionee/gsp/data/GnComponentConfigData;Ljava/util/List;Ljava/util/List;)V

    .line 1633
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1641
    .end local v0    # "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    :cond_27
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gionee/gsp/data/GnComponentConfigData;

    .line 1642
    .restart local v0    # "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    invoke-direct {p0, p3, v0, p4, p5}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->assignedTasks(Landroid/content/Context;Lcom/gionee/gsp/data/GnComponentConfigData;Ljava/util/List;Ljava/util/List;)V

    .line 1640
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method private checkIsInit()Z
    .registers 4

    .prologue
    .line 895
    sget-object v0, Lcom/gionee/gsp/common/GnCommonConfig;->sIsInitSuccess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_31

    .line 896
    const-string v0, "GSP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apiKey:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sGnEType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 897
    sget-object v2, Lcom/gionee/gsp/common/GnCommonConfig;->sGnEType:Lcom/gionee/gsp/GnEType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 896
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v0, "GSP"

    const-string v1, "\u8c03\u7528\u5177\u4f53\u4e1a\u52a1\u63a5\u53e3\u4e4b\u524d\uff0c\u8bf7\u5148\u8c03\u7528init\u65b9\u6cd5\u3002\u5982\u679c\u5df2\u7ecf\u8c03\u7528\u4e86init\uff0c\u8bf7\u89c2\u5bdf\u63a7\u5236\u53f0\u662f\u5426\u6709\u8f93\u51fa\u8b66\u544a\u6d88\u606f\u3002"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_31
    sget-object v0, Lcom/gionee/gsp/common/GnCommonConfig;->sIsInitSuccess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private downLoadAPK(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "installCallback"    # Lcom/gionee/gsp/service/GnBaseInstallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/gionee/gsp/service/GnBaseInstallListener;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnInstanllPackageInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1533
    .local p3, "needToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    .local p4, "needToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1618
    return-void
.end method

.method private downloadApp(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcom/gionee/gsp/dialog/GnDownloadDialog;Lcom/gionee/gsp/GnCallbackListener;Ljava/util/List;)V
    .registers 17
    .param p1, "activity"    # Landroid/app/Activity;
    .param p4, "gnDownloadDialog"    # Lcom/gionee/gsp/dialog/GnDownloadDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnInstanllPackageInfo;",
            ">;",
            "Lcom/gionee/gsp/dialog/GnDownloadDialog;",
            "Lcom/gionee/gsp/GnCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 444
    .local p2, "needToDownload":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .local p3, "needToInstallList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    .local p5, "downloadResultCb":Lcom/gionee/gsp/GnCallbackListener;, "Lcom/gionee/gsp/GnCallbackListener<Ljava/lang/String;>;"
    .local p6, "listenCancelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v9, "downloadApp"

    .line 446
    .local v9, "taskTag":Ljava/lang/String;
    invoke-static {}, Lcom/gionee/gsp/service/GnSendMessageService;->getInStance()Lcom/gionee/gsp/service/GnSendMessageService;

    move-result-object v8

    .line 450
    .local v8, "gnBaseService":Lcom/gionee/gsp/service/GnBaseService;
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    move-object/from16 v6, p6

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$2;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/GnCallbackListener;Ljava/util/List;Landroid/app/Activity;Lcom/gionee/gsp/dialog/GnDownloadDialog;Ljava/util/List;Ljava/util/List;)V

    .line 643
    const-string v1, "downloadApp"

    .line 450
    invoke-virtual {v8, v0, v1}, Lcom/gionee/gsp/service/GnBaseService;->add(Lcom/gionee/gsp/service/GnCommand;Ljava/lang/String;)V

    .line 644
    return-void
.end method

.method private findApkByPackageInfo(Ljava/util/List;Lcom/gionee/gsp/data/GnComponentConfigData;)I
    .registers 7
    .param p2, "gnComponentConfigData"    # Lcom/gionee/gsp/data/GnComponentConfigData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnPackageInfo;",
            ">;",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1729
    .local p1, "gnPackageInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnPackageInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1740
    const/4 v1, 0x0

    :goto_b
    return v1

    .line 1729
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gionee/gsp/data/GnPackageInfo;

    .line 1731
    .local v0, "gnPackageInfo":Lcom/gionee/gsp/data/GnPackageInfo;
    iget-object v2, v0, Lcom/gionee/gsp/data/GnPackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Lcom/gionee/gsp/data/GnComponentConfigData;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1732
    iget-object v1, v0, Lcom/gionee/gsp/data/GnPackageInfo;->versionName:Ljava/lang/String;

    iget-object v2, p2, Lcom/gionee/gsp/data/GnComponentConfigData;->currentVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_28

    .line 1733
    const/4 v1, 0x1

    goto :goto_b

    .line 1735
    :cond_28
    const/4 v1, 0x2

    goto :goto_b
.end method

.method private getCommonParameters(Landroid/content/Context;)Ljava/util/Map;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v1, "propertys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "app_id"

    sget-object v3, Lcom/gionee/gsp/common/GnCommonConfig;->sGnAppId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v2, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v2, "imsi"

    invoke-static {p1}, Lcom/gionee/gsp/util/GnCommonUtil;->getSimSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v3, "isEmulator"

    invoke-static {p1}, Lcom/gionee/gsp/util/GnCommonUtil;->isEmulator(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v2, "1"

    :goto_28
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {p1}, Lcom/gionee/gsp/util/GnCommonUtil;->getDefaultDisplayWidthAndHeight(Landroid/content/Context;)[Ljava/lang/Integer;

    move-result-object v0

    .line 257
    .local v0, "defaultDisplayWidthAndHeight":[Ljava/lang/Integer;
    const-string v2, "defaultDisplayWidth"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v2, "defaultDisplayHeight"

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-object v1

    .line 244
    .end local v0    # "defaultDisplayWidthAndHeight":[Ljava/lang/Integer;
    :cond_48
    const-string v2, "0"

    goto :goto_28
.end method

.method private getDownloadFileNameForStandalone(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "currentVersionInfo"    # Ljava/lang/String;

    .prologue
    .line 678
    const-string v1, ""

    .line 680
    .local v1, "fileName":Ljava/lang/String;
    :try_start_2
    const-string v5, "info"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v3, ""

    .line 682
    .local v3, "productName":Ljava/lang/String;
    const-string v4, ""

    .line 683
    .local v4, "version":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 684
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v5, "productName"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 685
    const-string v5, "version"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 686
    invoke-static {v3}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 689
    :cond_40
    invoke-static {v4}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 690
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5c} :catch_71

    move-result-object v1

    .line 695
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v3    # "productName":Ljava/lang/String;
    .end local v4    # "version":Ljava/lang/String;
    :cond_5d
    :goto_5d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_ForStandalone.apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 696
    return-object v1

    .line 692
    :catch_71
    move-exception v0

    .line 693
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_5d
.end method

.method private getDownloadURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "currentVersionInfo"    # Ljava/lang/String;

    .prologue
    .line 653
    const-string v7, ""

    .line 655
    .local v7, "path":Ljava/lang/String;
    :try_start_2
    const-string v10, "info"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v8, ""

    .line 657
    .local v8, "releaseNote":Ljava/lang/String;
    const-string v0, ""

    .line 658
    .local v0, "displayVersion":Ljava/lang/String;
    const-string v2, ""

    .line 659
    .local v2, "fileSize":Ljava/lang/String;
    const/4 v9, 0x0

    .line 660
    .local v9, "type":I
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 661
    .local v4, "jsonObj":Lorg/json/JSONObject;
    const-string v10, "releaseNote"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 662
    const-string v10, "displayVersion"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    const-string v10, "models"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 665
    .local v6, "jsonObjs":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v3, v10, :cond_3a

    .line 674
    .end local v0    # "displayVersion":Ljava/lang/String;
    .end local v2    # "fileSize":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "jsonObj":Lorg/json/JSONObject;
    .end local v6    # "jsonObjs":Lorg/json/JSONArray;
    .end local v8    # "releaseNote":Ljava/lang/String;
    .end local v9    # "type":I
    :goto_39
    return-object v7

    .line 666
    .restart local v0    # "displayVersion":Ljava/lang/String;
    .restart local v2    # "fileSize":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "jsonObj":Lorg/json/JSONObject;
    .restart local v6    # "jsonObjs":Lorg/json/JSONArray;
    .restart local v8    # "releaseNote":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_3a
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 667
    .local v5, "jsonObj1":Lorg/json/JSONObject;
    const-string v10, "path"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 668
    const-string v10, "size"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_4f

    move-result-object v2

    .line 665
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 671
    .end local v0    # "displayVersion":Ljava/lang/String;
    .end local v2    # "fileSize":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "jsonObj":Lorg/json/JSONObject;
    .end local v5    # "jsonObj1":Lorg/json/JSONObject;
    .end local v6    # "jsonObjs":Lorg/json/JSONArray;
    .end local v8    # "releaseNote":Ljava/lang/String;
    .end local v9    # "type":I
    :catch_4f
    move-exception v1

    .line 672
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_39
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/gionee/gsp/GnCommplatform;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    const-class v1, Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sGnCommplatform:Lcom/gionee/gsp/GnCommplatform;

    if-nez v0, :cond_e

    .line 163
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    invoke-direct {v0, p0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sGnCommplatform:Lcom/gionee/gsp/GnCommplatform;

    .line 166
    :cond_e
    sget-object v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sGnCommplatform:Lcom/gionee/gsp/GnCommplatform;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 162
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getProductNameForStandalone(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "currentVersionInfo"    # Ljava/lang/String;

    .prologue
    .line 700
    const-string v2, ""

    .line 702
    .local v2, "productName":Ljava/lang/String;
    :try_start_2
    const-string v3, "info"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 704
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v3, "productName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_20

    move-result-object v2

    .line 708
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_1f
    return-object v2

    .line 705
    :catch_20
    move-exception v0

    .line 706
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1f
.end method

.method private getVersionNameForStandalone(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "currentVersionInfo"    # Ljava/lang/String;

    .prologue
    .line 712
    const-string v2, ""

    .line 714
    .local v2, "version":Ljava/lang/String;
    :try_start_2
    const-string v3, "info"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 716
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v3, "version"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_20

    move-result-object v2

    .line 720
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_1f
    return-object v2

    .line 717
    :catch_20
    move-exception v0

    .line 718
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_1f
.end method

.method public static isGameType()Z
    .registers 2

    .prologue
    .line 1209
    sget-object v0, Lcom/gionee/gsp/common/GnCommonConfig;->sGnEType:Lcom/gionee/gsp/GnEType;

    sget-object v1, Lcom/gionee/gsp/GnEType;->GAME:Lcom/gionee/gsp/GnEType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static isNeedCallback(Lcom/gionee/gsp/GnCallbackListener;Ljava/lang/String;Lcom/gionee/gsp/service/GnBaseService;)Z
    .registers 5
    .param p1, "taskTag"    # Ljava/lang/String;
    .param p2, "gnBaseService"    # Lcom/gionee/gsp/service/GnBaseService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gionee/gsp/GnCallbackListener",
            "<*>;",
            "Ljava/lang/String;",
            "Lcom/gionee/gsp/service/GnBaseService;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "callback":Lcom/gionee/gsp/GnCallbackListener;, "Lcom/gionee/gsp/GnCallbackListener<*>;"
    const/4 v0, 0x0

    .line 180
    if-nez p0, :cond_4

    .line 191
    :cond_3
    :goto_3
    return v0

    .line 184
    :cond_4
    invoke-virtual {p0}, Lcom/gionee/gsp/GnCallbackListener;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_3

    .line 188
    invoke-virtual {p2, p1}, Lcom/gionee/gsp/service/GnBaseService;->isExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private platformLimitCheck(Landroid/app/Activity;)Z
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1392
    const/4 v0, 0x1

    .line 1400
    .local v0, "isOk":Z
    invoke-direct {p0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->platformVersionIsTooLow()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1401
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->showTipDialog(Landroid/app/Activity;)V

    .line 1402
    const/4 v0, 0x0

    .line 1405
    :cond_b
    return v0
.end method

.method private platformVersionIsTooLow()Z
    .registers 3

    .prologue
    .line 1409
    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->getRomVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private printLocalServiceLog(Lcom/gionee/gsp/data/GnBaseAd;)V
    .registers 4
    .param p1, "gnBaseAd"    # Lcom/gionee/gsp/data/GnBaseAd;

    .prologue
    .line 219
    iget v0, p1, Lcom/gionee/gsp/data/GnBaseAd;->resultCode:I

    sget v1, Lcom/gionee/gsp/result/GnResultCode;->COM_PLATFORM_SUCCESS:I

    if-ne v0, v1, :cond_7

    .line 229
    :cond_6
    :goto_6
    return-void

    .line 223
    :cond_7
    iget v0, p1, Lcom/gionee/gsp/data/GnBaseAd;->resultCode:I

    if-lez v0, :cond_13

    .line 224
    iget v0, p1, Lcom/gionee/gsp/data/GnBaseAd;->resultCode:I

    invoke-static {v0}, Lcom/gionee/gsp/result/GnResultCode;->getResult(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/gionee/gsp/data/GnBaseAd;->resultDesc:Ljava/lang/String;

    .line 226
    :cond_13
    sget-boolean v0, Lcom/gionee/gsp/common/GnCommonConfig;->sPrintExceptionMessage:Z

    if-eqz v0, :cond_6

    .line 227
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->printLog(Lcom/gionee/gsp/data/GnBaseAd;)V

    goto :goto_6
.end method

.method private printLog(Lcom/gionee/gsp/data/GnBaseAd;)V
    .registers 4
    .param p1, "gnBaseAd"    # Lcom/gionee/gsp/data/GnBaseAd;

    .prologue
    .line 196
    iget v0, p1, Lcom/gionee/gsp/data/GnBaseAd;->resultCode:I

    sget v1, Lcom/gionee/gsp/result/GnResultCode;->COM_PLATFORM_SUCCESS:I

    if-ne v0, v1, :cond_7

    .line 210
    :goto_6
    return-void

    .line 200
    :cond_7
    iget v0, p1, Lcom/gionee/gsp/data/GnBaseAd;->resultCode:I

    if-lez v0, :cond_13

    .line 201
    iget v0, p1, Lcom/gionee/gsp/data/GnBaseAd;->resultCode:I

    invoke-static {v0}, Lcom/gionee/gsp/result/GnResultCode;->getResult(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/gionee/gsp/data/GnBaseAd;->resultDesc:Ljava/lang/String;

    .line 204
    :cond_13
    iget-object v0, p1, Lcom/gionee/gsp/data/GnBaseAd;->resultDesc:Ljava/lang/String;

    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bf7\u6c42\u9519\u8bef\u7801 :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/gionee/gsp/data/GnBaseAd;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gionee/gsp/util/GnLogUtil;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 207
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bf7\u6c42\u9519\u8bef\u7801 :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/gionee/gsp/data/GnBaseAd;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u9519\u8bef\u63cf\u8ff0 :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    iget-object v1, p1, Lcom/gionee/gsp/data/GnBaseAd;->resultDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gionee/gsp/util/GnLogUtil;->d(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private printNeedToAddAndUpdateId(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1701
    .local p1, "needToUpdateGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .local p2, "needToAddGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1702
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_29

    .line 1703
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9700\u8981\u5347\u7ea7\u7684\u5e94\u7528\u6709\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 1704
    const-string v2, "\u9700\u8981\u5347\u7ea7\u7684\u5e94\u7528id\u6709\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1705
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_64

    .line 1710
    .end local v0    # "i":I
    :cond_29
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4d

    .line 1711
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9700\u8981\u5b89\u88c5\u7684\u5e94\u7528\u6709\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 1712
    const-string v2, "\u9700\u8981\u5b89\u88c5\u7684\u5e94\u7528id\u6709\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1713
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_47
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_85

    .line 1717
    .end local v0    # "i":I
    :cond_4d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u9700\u8981\u5b89\u88c5\u548c\u66f4\u65b0\u7684\u5e94\u7528id\u6709\uff1a\r\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 1718
    return-void

    .line 1706
    .restart local v0    # "i":I
    :cond_64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gionee/gsp/data/GnComponentConfigData;

    iget v2, v2, Lcom/gionee/gsp/data/GnComponentConfigData;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1705
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1714
    :cond_85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gionee/gsp/data/GnComponentConfigData;

    iget v2, v2, Lcom/gionee/gsp/data/GnComponentConfigData;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1713
    add-int/lit8 v0, v0, 0x1

    goto :goto_47
.end method

.method private showDialog(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "installCallback"    # Lcom/gionee/gsp/service/GnBaseInstallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/gionee/gsp/service/GnBaseInstallListener;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1472
    .local p3, "needToUpdateGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .local p4, "needToAddGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    const-string v0, "checkLocalEnvironment"

    .line 1473
    .local v0, "taskTag":Ljava/lang/String;
    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mGnSingleThreadService:Lcom/gionee/gsp/service/GnSingleThreadService;

    new-instance v2, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$5;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)V

    invoke-virtual {v1, v2, v0}, Lcom/gionee/gsp/service/GnSingleThreadService;->add(Lcom/gionee/gsp/service/GnCommand;Ljava/lang/String;)V

    .line 1528
    return-void
.end method

.method private showSuspendedWindow(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1214
    :try_start_0
    const-string v1, "com.gionee.gsp.floatingwindow.GSPFlag"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1215
    new-instance v0, Landroid/content/Intent;

    .line 1216
    const-string v1, "com.gionee.gsp.floatingwindow.FloatingWindowService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1215
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1217
    .local v0, "show":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    .line 1221
    .end local v0    # "show":Landroid/content/Intent;
    :goto_13
    return-void

    .line 1218
    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method private showTipDialog(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1289
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524drom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->getRomVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\r\n\u8bf7\u5347\u7ea7rom\u5230"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1290
    const-string v2, "4.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6216\u4ee5\u4e0a\u7248\u672c."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1289
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1291
    .local v0, "tip":Ljava/lang/String;
    const-string v1, "GSP"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    invoke-static {p1}, Lcom/gionee/gsp/util/GnUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1293
    new-instance v1, Lcom/gionee/gsp/service/GnCommplatformImplForBase$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$3;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1307
    :cond_38
    return-void
.end method

.method private showTipDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "tip"    # Ljava/lang/String;

    .prologue
    .line 1315
    const-string v0, "GSP"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-static {p1}, Lcom/gionee/gsp/util/GnUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1317
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$4;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1331
    :cond_13
    return-void
.end method


# virtual methods
.method public addYouJuEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1994
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$16;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$16;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;)V

    .line 2008
    .local v0, "gnCommonListener":Lcom/gionee/gsp/service/account/sdk/listener/IGetPlayerIdListener;
    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mAccount:Lcom/gionee/gsp/service/account/IAccount;

    check-cast v1, Lcom/gionee/gsp/service/account/AccountImpl;

    invoke-virtual {v1, p1, v0}, Lcom/gionee/gsp/service/account/AccountImpl;->getPlayerId(Landroid/content/Context;Lcom/gionee/gsp/service/account/sdk/listener/IGetPlayerIdListener;)V

    .line 2009
    return-void
.end method

.method public checkInstanllState(Landroid/app/Activity;)Z
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1359
    .local v1, "needToUpdateGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1360
    .local v0, "needToAddGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    invoke-virtual {p0, p1, v1, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->isInstall(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    .line 1361
    .local v2, "result":Z
    return v2
.end method

.method public checkLocalEnvironment(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)Z
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "installCallback"    # Lcom/gionee/gsp/service/GnBaseInstallListener;

    .prologue
    .line 1340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1341
    .local v1, "needToUpdateGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1342
    .local v0, "needToAddGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    invoke-virtual {p0, p1, v1, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->isInstall(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    .line 1343
    .local v2, "result":Z
    if-nez v2, :cond_13

    .line 1344
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->showDialog(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;Ljava/util/List;)V

    .line 1348
    :cond_13
    return v2
.end method

.method public checkUpdate(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gnCheckUpdateListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;

    .prologue
    .line 2210
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;Landroid/app/Activity;)V

    .line 2305
    .local v0, "installCallback":Lcom/gionee/gsp/service/GnBaseInstallListener;
    invoke-direct {p0, p1, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->check(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)V

    .line 2306
    return-void
.end method

.method public createOrder(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rsaPrivate"    # Ljava/lang/String;
    .param p3, "gnCreateOrderListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;

    .prologue
    .line 2472
    const-string v1, "createOrder"

    .line 2474
    .local v1, "taskTag":Ljava/lang/String;
    invoke-static {}, Lcom/gionee/gsp/service/GnSendMessageService;->getInStance()Lcom/gionee/gsp/service/GnSendMessageService;

    move-result-object v0

    .line 2475
    .local v0, "gnBaseService":Lcom/gionee/gsp/service/GnBaseService;
    new-instance v2, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$20;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/account/sdk/listener/IGnCreateOrderListener;Landroid/app/Activity;Ljava/lang/String;)V

    .line 2521
    const-string v3, "createOrder"

    .line 2475
    invoke-virtual {v0, v2, v3}, Lcom/gionee/gsp/service/GnBaseService;->add(Lcom/gionee/gsp/service/GnCommand;Ljava/lang/String;)V

    .line 2525
    return-void
.end method

.method public download(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gnDownloadListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    .prologue
    .line 2317
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;Landroid/app/Activity;)V

    .line 2406
    .local v0, "installCallback":Lcom/gionee/gsp/service/GnBaseInstallListener;
    invoke-direct {p0, p1, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->check(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)V

    .line 2407
    return-void
.end method

.method public getAmigoToken(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;

    .prologue
    .line 1855
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$9;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/AmigoTokenListener;)V

    .line 1861
    .local v0, "installCallback":Lcom/gionee/gsp/service/GnBaseInstallListener;
    invoke-direct {p0, p1, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->check(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)V

    .line 1863
    return-void
.end method

.method public getGnComponentConfigDataList(Landroid/app/Activity;)[Ljava/util/List;
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")[",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1365
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1366
    .local v1, "needToUpdateGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1367
    .local v0, "needToAddGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    invoke-virtual {p0, p1, v1, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->isInstall(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    .line 1368
    .local v2, "result":Z
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/util/List;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    return-object v3
.end method

.method public getGoldCoinForGameSDK(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gnCommonListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;

    .prologue
    .line 1872
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$10;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;)V

    .line 1878
    .local v0, "installCallback":Lcom/gionee/gsp/service/GnBaseInstallListener;
    invoke-direct {p0, p1, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->check(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)V

    .line 1879
    return-void
.end method

.method public getPhoneNumberForGameSDK(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gnCommonListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;

    .prologue
    .line 1888
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$11;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;)V

    .line 1894
    .local v0, "installCallback":Lcom/gionee/gsp/service/GnBaseInstallListener;
    invoke-direct {p0, p1, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->check(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)V

    .line 1895
    return-void
.end method

.method public getPlayerId(Landroid/content/Context;Lcom/gionee/gsp/service/account/sdk/listener/IGetPlayerIdListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "getPlayerIdListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGetPlayerIdListener;

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mAccount:Lcom/gionee/gsp/service/account/IAccount;

    invoke-interface {v0, p1, p2}, Lcom/gionee/gsp/service/account/IAccount;->getPlayerId(Landroid/content/Context;Lcom/gionee/gsp/service/account/sdk/listener/IGetPlayerIdListener;)V

    .line 2201
    return-void
.end method

.method public getYouJuBaseInfoMap(Landroid/content/Context;)Ljava/util/Map;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2012
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2014
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "gameAppId"

    sget-object v2, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2015
    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/gionee/gsp/GnEType;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/gionee/gsp/GnEType;
    .param p3, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 1040
    invoke-virtual {p0, p1, p2, p3}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->initCommon(Landroid/content/Context;Lcom/gionee/gsp/GnEType;Ljava/lang/String;)V

    .line 1041
    return-void
.end method

.method public initCommon(Landroid/content/Context;Lcom/gionee/gsp/GnEType;Ljava/lang/String;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/gionee/gsp/GnEType;
    .param p3, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 1044
    sget-object v12, Lcom/gionee/gsp/common/GnCommonConfig;->sIsInitSuccess:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1206
    :goto_8
    return-void

    .line 1047
    :cond_9
    sget-object v13, Lcom/gionee/gsp/common/GnCommonConfig;->sIsInitSuccess:Ljava/lang/Boolean;

    monitor-enter v13

    .line 1048
    :try_start_c
    sget-object v12, Lcom/gionee/gsp/common/GnCommonConfig;->sIsInitSuccess:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 1049
    monitor-exit v13

    goto :goto_8

    .line 1047
    :catchall_16
    move-exception v12

    monitor-exit v13
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v12

    .line 1053
    :cond_19
    :try_start_19
    const-string v12, "GSP"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\u8bf7\u6c42GSP\u7248\u672c\u662f:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Lcom/gionee/gsp/common/GnCommonConfig;->sGSPVersion:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-static/range {p3 .. p3}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3d

    .line 1056
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v14, "apiKey\u4e3a\u7a7a"

    invoke-direct {v12, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1059
    :cond_3d
    invoke-static/range {p2 .. p2}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4b

    .line 1060
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v14, "GnEType\u4e3a\u7a7a"

    invoke-direct {v12, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1088
    :cond_4b
    sput-object p3, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    .line 1089
    sput-object p2, Lcom/gionee/gsp/common/GnCommonConfig;->sGnEType:Lcom/gionee/gsp/GnEType;

    .line 1091
    invoke-static {}, Lcom/gionee/gsp/util/GnCheckWorkMode;->getInstance()Lcom/gionee/gsp/util/GnCheckWorkMode;

    move-result-object v12

    iget-boolean v12, v12, Lcom/gionee/gsp/util/GnCheckWorkMode;->mIsTestMode:Z

    if-eqz v12, :cond_5e

    .line 1092
    invoke-static {}, Lcom/gionee/gsp/util/GnCheckWorkMode;->getInstance()Lcom/gionee/gsp/util/GnCheckWorkMode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/gionee/gsp/util/GnCheckWorkMode;->initTestMode()[Lcom/gionee/gsp/GnEDependComponent;

    .line 1096
    :cond_5e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mBusinessSub:Lcom/gionee/gsp/service/BusinessSub;

    .line 1097
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/gionee/gsp/service/BusinessSub;->readGnComponentConfig(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 1098
    .local v2, "componentConfigMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    sget-object v12, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sNeedCheckComponentMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 1099
    sget-object v12, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sNeedCheckComponentMap:Ljava/util/Map;

    invoke-interface {v12, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1126
    invoke-direct/range {p0 .. p0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->platformVersionIsTooLow()Z

    move-result v12

    if-eqz v12, :cond_7a

    .line 1127
    monitor-exit v13

    goto :goto_8

    .line 1133
    :cond_7a
    sget-object v12, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sNeedCheckComponentMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    .line 1134
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1135
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;>;"
    :cond_84
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_bc

    .line 1175
    sget-object v12, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sNeedCheckComponentMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1176
    :cond_94
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1b1

    .line 1190
    const-string v12, "com.gionee.gsp"

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1, v12}, Lcom/youju/statistics/YouJuAgent;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const-wide/32 v14, 0x493e0

    invoke-static {v14, v15}, Lcom/youju/statistics/YouJuAgent;->setContinueSessionMillis(J)V

    .line 1195
    invoke-static {}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->isGameType()Z

    move-result v12

    if-eqz v12, :cond_b2

    .line 1196
    invoke-direct/range {p0 .. p1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->showSuspendedWindow(Landroid/content/Context;)V

    .line 1199
    :cond_b2
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    sput-object v12, Lcom/gionee/gsp/common/GnCommonConfig;->sIsInitSuccess:Ljava/lang/Boolean;

    .line 1047
    monitor-exit v13

    goto/16 :goto_8

    .line 1136
    :cond_bc
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1137
    .local v3, "entery":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gionee/gsp/data/GnComponentConfigData;

    .line 1138
    .local v4, "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    iget-object v10, v4, Lcom/gionee/gsp/data/GnComponentConfigData;->rom:Ljava/lang/String;

    .line 1139
    .local v10, "rom":Ljava/lang/String;
    iget-object v7, v4, Lcom/gionee/gsp/data/GnComponentConfigData;->model:Ljava/lang/String;

    .line 1140
    .local v7, "model":Ljava/lang/String;
    iget-object v9, v4, Lcom/gionee/gsp/data/GnComponentConfigData;->platform:Ljava/lang/String;

    .line 1142
    .local v9, "platform":Ljava/lang/String;
    invoke-static {v10}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_113

    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->getRomVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_113

    .line 1143
    const-string v12, "GSP"

    new-instance v14, Ljava/lang/StringBuilder;

    iget-object v15, v4, Lcom/gionee/gsp/data/GnComponentConfigData;->name:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " \u8bf7\u6c42rom\u7248\u672c\u53f7\u662f"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",\u5f53\u524drom\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1144
    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->getRomVersion()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",\u8fbe\u4e0d\u5230\u6700\u4f4e\u7684\u8981\u6c42,\u5ffd\u7565\u8bf7\u6c42\u3002"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1143
    invoke-static {v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    monitor-exit v13

    goto/16 :goto_8

    .line 1148
    :cond_113
    invoke-static {v7}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_16c

    .line 1149
    const-string v12, ","

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1150
    .local v8, "modelArray":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1151
    .local v5, "isFound":Z
    array-length v14, v8

    const/4 v12, 0x0

    :goto_122
    if-lt v12, v14, :cond_15b

    .line 1159
    :goto_124
    if-nez v5, :cond_16c

    .line 1160
    const-string v12, "GSP"

    new-instance v14, Ljava/lang/StringBuilder;

    iget-object v15, v4, Lcom/gionee/gsp/data/GnComponentConfigData;->name:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " \u8bf7\u6c42\u624b\u673a\u673a\u578b\u662f"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1161
    const-string v15, ",\u5f53\u524d\u7684\u624b\u673a\u673a\u578b\u662f\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->getModel()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",\u8fbe\u4e0d\u5230\u6700\u4f4e\u7684\u8981\u6c42,\u5ffd\u7565\u8bf7\u6c42\u3002"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1160
    invoke-static {v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    monitor-exit v13

    goto/16 :goto_8

    .line 1151
    :cond_15b
    aget-object v11, v8, v12

    .line 1153
    .local v11, "str":Ljava/lang/String;
    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->getModel()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_169

    .line 1154
    const/4 v5, 0x1

    .line 1155
    goto :goto_124

    .line 1151
    :cond_169
    add-int/lit8 v12, v12, 0x1

    goto :goto_122

    .line 1166
    .end local v5    # "isFound":Z
    .end local v8    # "modelArray":[Ljava/lang/String;
    .end local v11    # "str":Ljava/lang/String;
    :cond_16c
    invoke-static {v9}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_84

    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->getPlatform()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_84

    .line 1167
    const-string v12, "GSP"

    new-instance v14, Ljava/lang/StringBuilder;

    iget-object v15, v4, Lcom/gionee/gsp/data/GnComponentConfigData;->name:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " \u8bf7\u6c42\u5e73\u53f0\u662f"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1168
    const-string v15, ",\u5f53\u524d\u7684\u5e73\u53f0\u662f\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/gionee/gsp/util/GnCommonUtil;->getPlatform()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",\u8fbe\u4e0d\u5230\u6700\u4f4e\u7684\u8981\u6c42,\u5ffd\u7565\u8bf7\u6c42\u3002"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1167
    invoke-static {v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    monitor-exit v13

    goto/16 :goto_8

    .line 1177
    .end local v3    # "entery":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .end local v4    # "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    .end local v7    # "model":Ljava/lang/String;
    .end local v9    # "platform":Ljava/lang/String;
    .end local v10    # "rom":Ljava/lang/String;
    :cond_1b1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1178
    .restart local v3    # "entery":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gionee/gsp/data/GnComponentConfigData;

    .line 1179
    .restart local v4    # "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "----gnComponentConfigData.id="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v4, Lcom/gionee/gsp/data/GnComponentConfigData;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1181
    iget v12, v4, Lcom/gionee/gsp/data/GnComponentConfigData;->id:I

    sget-object v14, Lcom/gionee/gsp/GnEDependComponent;->ACCOUNT:Lcom/gionee/gsp/GnEDependComponent;

    invoke-virtual {v14}, Lcom/gionee/gsp/GnEDependComponent;->getValue()I

    move-result v14

    if-ne v12, v14, :cond_94

    .line 1183
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->checkAccount(Landroid/app/Activity;)Z

    move-result v12

    if-nez v12, :cond_94

    .line 1184
    monitor-exit v13
    :try_end_1e7
    .catchall {:try_start_19 .. :try_end_1e7} :catchall_16

    goto/16 :goto_8
.end method

.method public install(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;Z)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gnInstallListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;
    .param p3, "isAutoInstall"    # Z

    .prologue
    .line 2415
    const-string v1, "install"

    .line 2417
    .local v1, "taskTag":Ljava/lang/String;
    invoke-static {}, Lcom/gionee/gsp/service/GnSendMessageService;->getInStance()Lcom/gionee/gsp/service/GnSendMessageService;

    move-result-object v0

    .line 2418
    .local v0, "gnBaseService":Lcom/gionee/gsp/service/GnBaseService;
    new-instance v2, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$19;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;Z)V

    .line 2459
    const-string v3, "install"

    .line 2418
    invoke-virtual {v0, v2, v3}, Lcom/gionee/gsp/service/GnBaseService;->add(Lcom/gionee/gsp/service/GnCommand;Ljava/lang/String;)V

    .line 2463
    return-void
.end method

.method public isAccountLogin(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mAccount:Lcom/gionee/gsp/service/account/IAccount;

    invoke-interface {v0, p1}, Lcom/gionee/gsp/service/account/IAccount;->isAccountLogin(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected isInstall(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;)Z
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnComponentConfigData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1423
    .local p2, "needToUpdateGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .local p3, "needToAddGnPackageInfo":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    const/4 v5, 0x0

    .line 1425
    .local v5, "result":Z
    invoke-direct {p0, p1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->platformLimitCheck(Landroid/app/Activity;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1465
    .end local v5    # "result":Z
    :cond_7
    :goto_7
    return v5

    .line 1430
    .restart local v5    # "result":Z
    :cond_8
    invoke-direct {p0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->checkIsInit()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1435
    invoke-static {p1}, Lcom/gionee/gsp/util/GnCommonUtil;->getInstallApplicationInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 1439
    .local v2, "gnPackageInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnPackageInfo;>;"
    sget-object v6, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->sNeedCheckComponentMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 1440
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1441
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;>;"
    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_33

    .line 1458
    invoke-direct {p0, p2, p3}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->printNeedToAddAndUpdateId(Ljava/util/List;Ljava/util/List;)V

    .line 1461
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_31

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_50

    .line 1463
    :cond_31
    const/4 v5, 0x0

    goto :goto_7

    .line 1442
    :cond_33
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1443
    .local v0, "entery":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gionee/gsp/data/GnComponentConfigData;

    .line 1444
    .local v1, "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    invoke-direct {p0, v2, v1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->findApkByPackageInfo(Ljava/util/List;Lcom/gionee/gsp/data/GnComponentConfigData;)I

    move-result v3

    .line 1445
    .local v3, "isInStall":I
    if-nez v3, :cond_49

    .line 1446
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 1447
    :cond_49
    const/4 v6, 0x2

    if-ne v3, v6, :cond_1c

    .line 1453
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 1465
    .end local v0    # "entery":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/gionee/gsp/data/GnComponentConfigData;>;"
    .end local v1    # "gnComponentConfigData":Lcom/gionee/gsp/data/GnComponentConfigData;
    .end local v3    # "isInStall":I
    :cond_50
    const/4 v5, 0x1

    goto :goto_7
.end method

.method public loginAccount(Landroid/app/Activity;IZLcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;)V
    .registers 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "isAutoLogin"    # Z
    .param p4, "gnUiListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    .prologue
    .line 1956
    new-instance v3, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;

    invoke-direct {v3, p0, p4, p1}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;Landroid/app/Activity;)V

    .line 1980
    .local v3, "tempGnUiListener":Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p0

    move-object v5, v3

    move v6, p2

    move-object v7, p1

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$15;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;ILandroid/app/Activity;ZLcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;)V

    .line 1990
    .local v0, "installCallback":Lcom/gionee/gsp/service/GnBaseInstallListener;
    invoke-direct {p0, p1, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->check(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)V

    .line 1991
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2035
    sget v3, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->LOGIN_REQUEST_CODE:I

    if-ne v3, p1, :cond_58

    .line 2037
    sparse-switch p2, :sswitch_data_a4

    .line 2047
    :try_start_7
    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mIGnUiListenerMap:Ljava/util/HashMap;

    sget-object v4, Lcom/gionee/gsp/service/account/sdk/RequestTpye;->Login:Lcom/gionee/gsp/service/account/sdk/RequestTpye;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    invoke-interface {v3}, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;->onCancel()V

    .line 2078
    :cond_14
    :goto_14
    return-void

    .line 2039
    :sswitch_15
    const-string v3, "accountStatus"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2040
    .local v2, "result":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2041
    .local v1, "j":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mIGnUiListenerMap:Ljava/util/HashMap;

    sget-object v4, Lcom/gionee/gsp/service/account/sdk/RequestTpye;->Login:Lcom/gionee/gsp/service/account/sdk/RequestTpye;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    invoke-interface {v3, v1}, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;->onComplete(Lorg/json/JSONObject;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2d} :catch_2e

    goto :goto_14

    .line 2050
    .end local v1    # "j":Lorg/json/JSONObject;
    .end local v2    # "result":Ljava/lang/String;
    :catch_2e
    move-exception v0

    .line 2052
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2053
    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mIGnUiListenerMap:Ljava/util/HashMap;

    sget-object v4, Lcom/gionee/gsp/service/account/sdk/RequestTpye;->Login:Lcom/gionee/gsp/service/account/sdk/RequestTpye;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 2054
    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mIGnUiListenerMap:Ljava/util/HashMap;

    sget-object v4, Lcom/gionee/gsp/service/account/sdk/RequestTpye;->Login:Lcom/gionee/gsp/service/account/sdk/RequestTpye;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    invoke-interface {v3, v0}, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;->onError(Ljava/lang/Exception;)V

    goto :goto_14

    .line 2044
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_4a
    :try_start_4a
    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mIGnUiListenerMap:Ljava/util/HashMap;

    sget-object v4, Lcom/gionee/gsp/service/account/sdk/RequestTpye;->Login:Lcom/gionee/gsp/service/account/sdk/RequestTpye;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    invoke-interface {v3}, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;->onCancel()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_57} :catch_2e

    goto :goto_14

    .line 2058
    :cond_58
    sget v3, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->UPGRA_REQUEST_CODE:I

    if-ne v3, p1, :cond_14

    .line 2060
    packed-switch p2, :pswitch_data_ae

    .line 2067
    :try_start_5f
    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mIGnUiListenerMap:Ljava/util/HashMap;

    sget-object v4, Lcom/gionee/gsp/service/account/sdk/RequestTpye;->upgrade:Lcom/gionee/gsp/service/account/sdk/RequestTpye;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    invoke-interface {v3}, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;->onCancel()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6c} :catch_6d

    goto :goto_14

    .line 2070
    :catch_6d
    move-exception v0

    .line 2071
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2072
    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mIGnUiListenerMap:Ljava/util/HashMap;

    sget-object v4, Lcom/gionee/gsp/service/account/sdk/RequestTpye;->upgrade:Lcom/gionee/gsp/service/account/sdk/RequestTpye;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 2073
    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mIGnUiListenerMap:Ljava/util/HashMap;

    sget-object v4, Lcom/gionee/gsp/service/account/sdk/RequestTpye;->upgrade:Lcom/gionee/gsp/service/account/sdk/RequestTpye;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    invoke-interface {v3, v0}, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;->onError(Ljava/lang/Exception;)V

    goto :goto_14

    .line 2062
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_89
    :try_start_89
    const-string v3, "accountStatus"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2063
    .restart local v2    # "result":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2064
    .restart local v1    # "j":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mIGnUiListenerMap:Ljava/util/HashMap;

    sget-object v4, Lcom/gionee/gsp/service/account/sdk/RequestTpye;->upgrade:Lcom/gionee/gsp/service/account/sdk/RequestTpye;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;

    invoke-interface {v3, v1}, Lcom/gionee/gsp/service/account/sdk/listener/IGnUiListener;->onComplete(Lorg/json/JSONObject;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_a1} :catch_6d

    goto/16 :goto_14

    .line 2037
    nop

    :sswitch_data_a4
    .sparse-switch
        0x3e9 -> :sswitch_15
        0x3f2 -> :sswitch_4a
    .end sparse-switch

    .line 2060
    :pswitch_data_ae
    .packed-switch 0x3ef
        :pswitch_89
    .end packed-switch
.end method

.method public pay(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/gionee/pay/gsp/PayCallback;I)V
    .registers 16
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Ljava/lang/String;
    .param p3, "BundlePara"    # Landroid/os/Bundle;
    .param p4, "payCallBack"    # Lcom/gionee/pay/gsp/PayCallback;
    .param p5, "type"    # I

    .prologue
    .line 1757
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$8;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/gionee/pay/gsp/PayCallback;I)V

    .line 1762
    .local v0, "installCallback":Lcom/gionee/gsp/service/GnBaseInstallListener;
    invoke-direct {p0, p1, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->check(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)V

    .line 1763
    return-void
.end method

.method public pay(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/pay/gsp/PayCallback;I)V
    .registers 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orderInfo"    # Ljava/lang/String;
    .param p3, "payCallBack"    # Lcom/gionee/pay/gsp/PayCallback;
    .param p4, "type"    # I

    .prologue
    .line 1747
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$7;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/pay/gsp/PayCallback;I)V

    .line 1752
    .local v0, "installCallback":Lcom/gionee/gsp/service/GnBaseInstallListener;
    invoke-direct {p0, p1, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->check(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)V

    .line 1753
    return-void
.end method

.method protected sendOperatorLog(Landroid/content/Context;Ljava/util/List;Lcom/gionee/gsp/GnCallbackListener;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/gionee/gsp/data/GnLogInfo;",
            ">;",
            "Lcom/gionee/gsp/GnCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p2, "mSLogInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnLogInfo;>;"
    .local p3, "callback":Lcom/gionee/gsp/GnCallbackListener;, "Lcom/gionee/gsp/GnCallbackListener<Ljava/lang/String;>;"
    const-string v6, "sendOperatorLog"

    .line 294
    .local v6, "taskTag":Ljava/lang/String;
    invoke-static {}, Lcom/gionee/gsp/service/GnSendMessageService;->getInStance()Lcom/gionee/gsp/service/GnSendMessageService;

    move-result-object v3

    .line 296
    .local v3, "gnBaseService":Lcom/gionee/gsp/service/GnBaseService;
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$1;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/GnCallbackListener;Lcom/gionee/gsp/service/GnBaseService;Landroid/content/Context;Ljava/util/List;)V

    .line 326
    const-string v1, "sendOperatorLog"

    .line 296
    invoke-virtual {v3, v0, v1}, Lcom/gionee/gsp/service/GnBaseService;->add(Lcom/gionee/gsp/service/GnCommand;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public setApiKey(Ljava/lang/String;)V
    .registers 5
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 2533
    invoke-static {p1}, Lcom/gionee/gsp/util/GnCommonUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2534
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "apiKey\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2536
    :cond_e
    sput-object p1, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    .line 2538
    const-string v0, "GSP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u6ce8\u610f\uff0c\u4f60\u52a8\u6001\u8bbe\u7f6e\u4e86apiKey\uff0cdynamicSettingApiKey:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    return-void
.end method

.method public setFloatingBoxOriginPosition(Lcom/gionee/gsp/GnEFloatingBoxPositionModel;)V
    .registers 2
    .param p1, "positionModel"    # Lcom/gionee/gsp/GnEFloatingBoxPositionModel;

    .prologue
    .line 2194
    sput-object p1, Lcom/gionee/gsp/common/GnCommonConfig;->sOriginPositionModel:Lcom/gionee/gsp/GnEFloatingBoxPositionModel;

    .line 2195
    return-void
.end method

.method public startGoldRechargeActivity(Landroid/app/Activity;Ljava/lang/String;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;Landroid/content/Intent;)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "comeForm"    # Ljava/lang/String;
    .param p3, "gnCommonListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;
    .param p4, "intentPara"    # Landroid/content/Intent;

    .prologue
    .line 1905
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$12;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p0

    move-object v5, p2

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$12;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Ljava/lang/String;Landroid/content/Intent;Landroid/app/Activity;)V

    .line 1917
    .local v0, "installCallback":Lcom/gionee/gsp/service/GnBaseInstallListener;
    invoke-direct {p0, p1, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->check(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)V

    .line 1918
    return-void
.end method

.method public startRechargeRecordForWalletActivity(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;Landroid/content/Intent;)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gnCommonListener"    # Lcom/gionee/gsp/service/account/sdk/listener/IGnCommonListener;
    .param p3, "intentPara"    # Landroid/content/Intent;

    .prologue
    .line 1928
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$13;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/content/Intent;Landroid/app/Activity;)V

    .line 1940
    .local v0, "installCallback":Lcom/gionee/gsp/service/GnBaseInstallListener;
    invoke-direct {p0, p1, v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->check(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;)V

    .line 1941
    return-void
.end method
