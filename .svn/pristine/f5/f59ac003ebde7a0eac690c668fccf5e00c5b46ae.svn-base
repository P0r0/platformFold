.class public Lcom/duoku/platform/download/utils/MineProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADD_COIN_NUM_EXTRA:Ljava/lang/String; = "addCoinnum"

.field public static final MINE_DYNAMIC_DATA_NOTIFICATION:Ljava/lang/String; = "com.duoku.platform.mydynamicdata"

.field public static final MINE_DYNAMIC_DATA_REFRESH:Ljava/lang/String; = "com.duoku.platform.refreshdata"

.field public static final TOTAL_COIN_NUM_EXTRA:Ljava/lang/String; = "coinnum"

.field public static USERTYPE_BINGDINGPHONE:I

.field public static USERTYPE_PHONEUSER:I

.field public static USERTYPE_UNBINDINGPHONE:I

.field private static gInstance:Lcom/duoku/platform/download/utils/MineProfile;


# instance fields
.field private accountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appversion:Ljava/lang/String;

.field private checkRootPrompTime:I

.field private coinnum:I

.field private collectnum:Ljava/lang/String;

.field private deletePkgAfterInstallation:Z

.field private downloadOnlyWithWiFi:Z

.field private gamenum:Ljava/lang/String;

.field private hasShowNotification:Z

.field private installAutomaticllyAfterDownloading:Z

.field private isLogin:Z

.field private isNewUser:Z

.field private isRootUser:Z

.field private lastCheckRootTime:J

.field private lastUpdateSMSCTime:J

.field private lastUpdateTime:J

.field private messagenum:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private noPicture:Z

.field private phonenum:Ljava/lang/String;

.field private push_channelid:Ljava/lang/String;

.field private push_userid:Ljava/lang/String;

.field private sessionID:Ljava/lang/String;

.field private showInstallTipAfterDownloading:Z

.field private simultaneousDownloadNum:I

.field private strUserHead:Ljava/lang/String;

.field private timeShowNotification:J

.field private totalmsgnum:Ljava/lang/String;

.field private updateAvailable:Z

.field private userID:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput v0, Lcom/duoku/platform/download/utils/MineProfile;->USERTYPE_BINGDINGPHONE:I

    .line 27
    const/4 v0, 0x2

    sput v0, Lcom/duoku/platform/download/utils/MineProfile;->USERTYPE_UNBINDINGPHONE:I

    .line 28
    const/4 v0, 0x3

    sput v0, Lcom/duoku/platform/download/utils/MineProfile;->USERTYPE_PHONEUSER:I

    .line 854
    return-void
.end method

.method private constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->userID:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->userName:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->nickName:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->isLogin:Z

    .line 81
    iput-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->isNewUser:Z

    .line 82
    iput-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->isRootUser:Z

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->sessionID:Ljava/lang/String;

    .line 84
    sget v0, Lcom/duoku/platform/download/utils/MineProfile;->USERTYPE_UNBINDINGPHONE:I

    iput v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->userType:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->phonenum:Ljava/lang/String;

    .line 86
    iput-boolean v2, p0, Lcom/duoku/platform/download/utils/MineProfile;->downloadOnlyWithWiFi:Z

    .line 87
    iput-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->noPicture:Z

    .line 88
    const/4 v0, 0x3

    iput v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->simultaneousDownloadNum:I

    .line 89
    iput-boolean v2, p0, Lcom/duoku/platform/download/utils/MineProfile;->deletePkgAfterInstallation:Z

    .line 90
    iput-boolean v2, p0, Lcom/duoku/platform/download/utils/MineProfile;->showInstallTipAfterDownloading:Z

    .line 91
    iput-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->installAutomaticllyAfterDownloading:Z

    .line 93
    const-string v0, "0"

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->gamenum:Ljava/lang/String;

    .line 94
    const-string v0, "0"

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->totalmsgnum:Ljava/lang/String;

    .line 95
    const-string v0, "0"

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->messagenum:Ljava/lang/String;

    .line 96
    const-string v0, "0"

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->collectnum:Ljava/lang/String;

    .line 97
    iput v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->coinnum:I

    .line 98
    iput v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->checkRootPrompTime:I

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->appversion:Ljava/lang/String;

    .line 101
    iput-wide v4, p0, Lcom/duoku/platform/download/utils/MineProfile;->lastUpdateTime:J

    .line 102
    iput-wide v4, p0, Lcom/duoku/platform/download/utils/MineProfile;->lastUpdateSMSCTime:J

    .line 103
    iput-wide v4, p0, Lcom/duoku/platform/download/utils/MineProfile;->lastCheckRootTime:J

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->accountList:Ljava/util/List;

    .line 106
    return-void
.end method

.method private Load()V
    .registers 2

    .prologue
    .line 194
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 195
    invoke-direct {p0, v0}, Lcom/duoku/platform/download/utils/MineProfile;->Load(Landroid/content/Context;)V

    .line 196
    return-void
.end method

.method private Load(Landroid/content/Context;)V
    .registers 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 200
    const-string v2, "settings_preference"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 202
    const-string v3, "userID"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->userID:Ljava/lang/String;

    .line 203
    const-string v3, "userName"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->userName:Ljava/lang/String;

    .line 204
    const-string v3, "nickName"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->nickName:Ljava/lang/String;

    .line 205
    const-string v3, "isNewUser"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->isNewUser:Z

    .line 206
    const-string v3, "isRootUser"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->isRootUser:Z

    .line 207
    const-string v3, "isLogin"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->isLogin:Z

    .line 209
    const-string v3, "sessionID"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->sessionID:Ljava/lang/String;

    .line 210
    const-string v3, "userType"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->userType:I

    .line 211
    const-string v3, "phonenum"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->phonenum:Ljava/lang/String;

    .line 214
    const-string v3, "downloadOnlyWithWiFi"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->downloadOnlyWithWiFi:Z

    .line 215
    const-string v3, "noPicture"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->noPicture:Z

    .line 216
    const-string v3, "simultaneousDownloadNum"

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->simultaneousDownloadNum:I

    .line 217
    const-string v3, "deletePkgAfterInstallation"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->deletePkgAfterInstallation:Z

    .line 218
    const-string v3, "showInstallTipAfterDownloading"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->showInstallTipAfterDownloading:Z

    .line 219
    const-string v3, "installAutomaticllyAfterDownloading"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->installAutomaticllyAfterDownloading:Z

    .line 221
    const-string v3, "gamenum"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->gamenum:Ljava/lang/String;

    .line 222
    const-string v3, "totalmsgnum"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->totalmsgnum:Ljava/lang/String;

    .line 223
    const-string v3, "messagenum"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->messagenum:Ljava/lang/String;

    .line 224
    const-string v3, "collectnum"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->collectnum:Ljava/lang/String;

    .line 225
    const-string v3, "coinnum"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->coinnum:I

    .line 226
    const-string v3, "checkrootPrompTime"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->checkRootPrompTime:I

    .line 227
    const-string v3, "appversion"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->appversion:Ljava/lang/String;

    .line 229
    const-string v3, "updateavailable"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->updateAvailable:Z

    .line 230
    const-string v3, "lastupdatetime"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/duoku/platform/download/utils/MineProfile;->lastUpdateTime:J

    .line 231
    const-string v3, "lastUpdateSMSCTime"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/duoku/platform/download/utils/MineProfile;->lastUpdateSMSCTime:J

    .line 232
    const-string v3, "lastCheckRootTime"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/duoku/platform/download/utils/MineProfile;->lastCheckRootTime:J

    .line 234
    const-string v3, "hasShowNotification"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->hasShowNotification:Z

    .line 235
    const-string v3, "timeShowNotification"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/duoku/platform/download/utils/MineProfile;->timeShowNotification:J

    .line 237
    const-string v3, "push_channelid"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->push_channelid:Ljava/lang/String;

    .line 238
    const-string v3, "push_userid"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->push_userid:Ljava/lang/String;

    .line 239
    const-string v3, "user_head"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->strUserHead:Ljava/lang/String;

    .line 240
    const-string v3, "accountlist"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_136

    .line 245
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 247
    array-length v4, v3

    move v2, v0

    :goto_134
    if-lt v2, v4, :cond_14b

    .line 256
    :cond_136
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/download/DownloadConfiguration;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadConfiguration;

    move-result-object v2

    .line 257
    iget v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->simultaneousDownloadNum:I

    invoke-virtual {v2, v3}, Lcom/duoku/platform/download/DownloadConfiguration;->setMaxTaskNumber(I)V

    .line 258
    iget-boolean v3, p0, Lcom/duoku/platform/download/utils/MineProfile;->downloadOnlyWithWiFi:Z

    if-eqz v3, :cond_15b

    :goto_147
    invoke-virtual {v2, v0}, Lcom/duoku/platform/download/DownloadConfiguration;->setMobileNetworkAllowed(Z)V

    .line 259
    return-void

    .line 247
    :cond_14b
    aget-object v5, v3, v2

    .line 249
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_158

    .line 251
    iget-object v6, p0, Lcom/duoku/platform/download/utils/MineProfile;->accountList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_158
    add-int/lit8 v2, v2, 0x1

    goto :goto_134

    :cond_15b
    move v0, v1

    .line 258
    goto :goto_147
.end method

.method public static getInstance()Lcom/duoku/platform/download/utils/MineProfile;
    .registers 2

    .prologue
    .line 113
    sget-object v0, Lcom/duoku/platform/download/utils/MineProfile;->gInstance:Lcom/duoku/platform/download/utils/MineProfile;

    if-nez v0, :cond_18

    .line 115
    const-class v1, Lcom/duoku/platform/download/utils/MineProfile;

    monitor-enter v1

    .line 117
    :try_start_7
    sget-object v0, Lcom/duoku/platform/download/utils/MineProfile;->gInstance:Lcom/duoku/platform/download/utils/MineProfile;

    if-nez v0, :cond_17

    .line 119
    new-instance v0, Lcom/duoku/platform/download/utils/MineProfile;

    invoke-direct {v0}, Lcom/duoku/platform/download/utils/MineProfile;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/utils/MineProfile;->gInstance:Lcom/duoku/platform/download/utils/MineProfile;

    .line 120
    sget-object v0, Lcom/duoku/platform/download/utils/MineProfile;->gInstance:Lcom/duoku/platform/download/utils/MineProfile;

    invoke-direct {v0}, Lcom/duoku/platform/download/utils/MineProfile;->Load()V

    .line 115
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1b

    .line 125
    :cond_18
    sget-object v0, Lcom/duoku/platform/download/utils/MineProfile;->gInstance:Lcom/duoku/platform/download/utils/MineProfile;

    return-object v0

    .line 115
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method


# virtual methods
.method public Print()V
    .registers 1

    .prologue
    .line 190
    return-void
.end method

.method public Reset()V
    .registers 2

    .prologue
    .line 130
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/utils/MineProfile;->Reset(Landroid/content/Context;)V

    .line 132
    return-void
.end method

.method public Reset(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->userID:Ljava/lang/String;

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->userName:Ljava/lang/String;

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->nickName:Ljava/lang/String;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->sessionID:Ljava/lang/String;

    .line 140
    sget v0, Lcom/duoku/platform/download/utils/MineProfile;->USERTYPE_UNBINDINGPHONE:I

    iput v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->userType:I

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->phonenum:Ljava/lang/String;

    .line 142
    const-string v0, "0"

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->gamenum:Ljava/lang/String;

    .line 143
    const-string v0, "0"

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->totalmsgnum:Ljava/lang/String;

    .line 144
    const-string v0, "0"

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->messagenum:Ljava/lang/String;

    .line 145
    const-string v0, "0"

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->collectnum:Ljava/lang/String;

    .line 146
    iput v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->coinnum:I

    .line 147
    iput v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->checkRootPrompTime:I

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->appversion:Ljava/lang/String;

    .line 149
    iput-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->isNewUser:Z

    .line 150
    iput-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->isRootUser:Z

    .line 151
    iput-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->isLogin:Z

    .line 152
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/utils/MineProfile;->Save(Landroid/content/Context;)Z

    .line 153
    return-void
.end method

.method public Save()Z
    .registers 2

    .prologue
    .line 263
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 264
    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/utils/MineProfile;->Save(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public Save(Landroid/content/Context;)Z
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldWriteableFiles"
        }
    .end annotation

    .prologue
    .line 270
    const-string v0, "settings_preference"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 272
    const-string v0, "userID"

    iget-object v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->userID:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 273
    const-string v0, "userName"

    iget-object v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->userName:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    const-string v0, "nickName"

    iget-object v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->nickName:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    const-string v0, "isNewUser"

    iget-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->isNewUser:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 276
    const-string v0, "isRootUser"

    iget-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->isRootUser:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 277
    const-string v0, "isLogin"

    iget-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->isLogin:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 279
    const-string v0, "sessionID"

    iget-object v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->sessionID:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 280
    const-string v0, "userType"

    iget v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->userType:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 281
    const-string v0, "phonenum"

    iget-object v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->phonenum:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 283
    const-string v0, "downloadOnlyWithWiFi"

    iget-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->downloadOnlyWithWiFi:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 284
    const-string v0, "noPicture"

    iget-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->noPicture:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 285
    const-string v0, "simultaneousDownloadNum"

    iget v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->simultaneousDownloadNum:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 286
    const-string v0, "deletePkgAfterInstallation"

    iget-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->deletePkgAfterInstallation:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 287
    const-string v0, "showInstallTipAfterDownloading"

    iget-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->showInstallTipAfterDownloading:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 288
    const-string v0, "installAutomaticllyAfterDownloading"

    iget-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->installAutomaticllyAfterDownloading:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    const-string v0, "gamenum"

    iget-object v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->gamenum:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 291
    const-string v0, "totalmsgnum"

    iget-object v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->totalmsgnum:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    const-string v0, "messagenum"

    iget-object v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->messagenum:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 293
    const-string v0, "collectnum"

    iget-object v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->collectnum:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    const-string v0, "coinnum"

    iget v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->coinnum:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 295
    const-string v0, "checkrootPrompTime"

    iget v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->checkRootPrompTime:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 296
    const-string v0, "appversion"

    iget-object v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->appversion:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 298
    const-string v0, "updateavailable"

    iget-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->updateAvailable:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 299
    const-string v0, "lastupdatetime"

    iget-wide v4, p0, Lcom/duoku/platform/download/utils/MineProfile;->lastUpdateTime:J

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 300
    const-string v0, "lastUpdateSMSCTime"

    iget-wide v4, p0, Lcom/duoku/platform/download/utils/MineProfile;->lastUpdateSMSCTime:J

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 301
    const-string v0, "lastCheckRootTime"

    iget-wide v4, p0, Lcom/duoku/platform/download/utils/MineProfile;->lastCheckRootTime:J

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 303
    const-string v0, "hasShowNotification"

    iget-boolean v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->hasShowNotification:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 304
    const-string v0, "timeShowNotification"

    iget-wide v4, p0, Lcom/duoku/platform/download/utils/MineProfile;->timeShowNotification:J

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 306
    const-string v0, "push_channelid"

    iget-object v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->push_channelid:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    const-string v0, "push_userid"

    iget-object v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->push_userid:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 309
    const-string v0, ""

    .line 310
    iget-object v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->accountList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_e6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_fd

    .line 316
    const-string v0, "accountlist"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 317
    const-string v0, "user_head"

    iget-object v1, p0, Lcom/duoku/platform/download/utils/MineProfile;->strUserHead:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    .line 310
    :cond_fd
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_e6
.end method

.method public addAccount(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 328
    const/4 v1, 0x0

    .line 330
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->accountList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    move v0, v1

    .line 339
    :goto_e
    if-nez v0, :cond_15

    .line 341
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->accountList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_15
    return-void

    .line 330
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 334
    const/4 v0, 0x1

    .line 335
    goto :goto_e
.end method

.method public addCoinnum(I)I
    .registers 3

    .prologue
    .line 800
    if-lez p1, :cond_a

    .line 802
    iget v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->coinnum:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->coinnum:I

    .line 804
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/utils/MineProfile;->broadcastAddCoinEvent(I)V

    .line 806
    :cond_a
    iget v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->coinnum:I

    return v0
.end method

.method public broadcastAddCoinEvent(I)V
    .registers 2

    .prologue
    .line 863
    return-void
.end method

.method public broadcastEvent()V
    .registers 4

    .prologue
    .line 837
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.platform.mydynamicdata"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 838
    const-string v1, "gamenum"

    iget-object v2, p0, Lcom/duoku/platform/download/utils/MineProfile;->gamenum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    const-string v1, "totalmsgnum"

    iget-object v2, p0, Lcom/duoku/platform/download/utils/MineProfile;->totalmsgnum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    const-string v1, "unreadmsgnum"

    iget-object v2, p0, Lcom/duoku/platform/download/utils/MineProfile;->messagenum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    const-string v1, "collectnum"

    iget-object v2, p0, Lcom/duoku/platform/download/utils/MineProfile;->collectnum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    const-string v1, "coinnum"

    iget v2, p0, Lcom/duoku/platform/download/utils/MineProfile;->coinnum:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 844
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 845
    return-void
.end method

.method public broadcastRefreshMsgEvent()V
    .registers 3

    .prologue
    .line 849
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.platform.refreshdata"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 850
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 851
    return-void
.end method

.method public decreaseCollectnum()V
    .registers 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->collectnum:Ljava/lang/String;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 829
    add-int/lit8 v0, v0, -0x1

    .line 830
    if-gez v0, :cond_b

    .line 831
    const/4 v0, 0x0

    .line 832
    :cond_b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->collectnum:Ljava/lang/String;

    .line 833
    return-void
.end method

.method public getAccountsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->accountList:Ljava/util/List;

    return-object v0
.end method

.method public getAppversion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->appversion:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckRootPrompTime()I
    .registers 2

    .prologue
    .line 788
    iget v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->checkRootPrompTime:I

    return v0
.end method

.method public getCoinnum()I
    .registers 2

    .prologue
    .line 768
    iget v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->coinnum:I

    return v0
.end method

.method public getCollectnum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->collectnum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_b

    .line 752
    const-string v0, "0"

    .line 753
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->collectnum:Ljava/lang/String;

    goto :goto_a
.end method

.method public getGamenum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->gamenum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_b

    .line 700
    const-string v0, "0"

    .line 701
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->gamenum:Ljava/lang/String;

    goto :goto_a
.end method

.method public getIsLogin()Z
    .registers 2

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->isLogin:Z

    return v0
.end method

.method public getLastCheckrootTime()J
    .registers 3

    .prologue
    .line 423
    iget-wide v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->lastCheckRootTime:J

    return-wide v0
.end method

.method public getLastUpdateSMSCTime()J
    .registers 3

    .prologue
    .line 413
    iget-wide v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->lastUpdateSMSCTime:J

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .registers 3

    .prologue
    .line 403
    iget-wide v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->lastUpdateTime:J

    return-wide v0
.end method

.method public getMessagenum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->messagenum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_b

    .line 734
    const-string v0, "0"

    .line 736
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->messagenum:Ljava/lang/String;

    goto :goto_a
.end method

.method public getNickName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonenum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->phonenum:Ljava/lang/String;

    return-object v0
.end method

.method public getPush_channelid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->push_channelid:Ljava/lang/String;

    return-object v0
.end method

.method public getPush_userid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->push_userid:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getSimultaneousDownloadNum()I
    .registers 2

    .prologue
    .line 639
    iget v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->simultaneousDownloadNum:I

    return v0
.end method

.method public getStrUserHead()Ljava/lang/String;
    .registers 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->strUserHead:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeShowNotification()J
    .registers 3

    .prologue
    .line 379
    iget-wide v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->timeShowNotification:J

    return-wide v0
.end method

.method public getTotalmsgnum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->totalmsgnum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_b

    .line 717
    const-string v0, "0"

    .line 718
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->totalmsgnum:Ljava/lang/String;

    goto :goto_a
.end method

.method public getUserID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()I
    .registers 2

    .prologue
    .line 575
    iget v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->userType:I

    return v0
.end method

.method public increaseCollectnum()V
    .registers 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->collectnum:Ljava/lang/String;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/StringUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 822
    add-int/lit8 v0, v0, 0x1

    .line 823
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->collectnum:Ljava/lang/String;

    .line 824
    return-void
.end method

.method public isDeletePkgAfterInstallation()Z
    .registers 2

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->deletePkgAfterInstallation:Z

    return v0
.end method

.method public isDownloadOnlyWithWiFi()Z
    .registers 2

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->downloadOnlyWithWiFi:Z

    return v0
.end method

.method public isHasShowNotification()Z
    .registers 2

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->hasShowNotification:Z

    return v0
.end method

.method public isInstallAutomaticllyAfterDownloading()Z
    .registers 2

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->installAutomaticllyAfterDownloading:Z

    return v0
.end method

.method public isNewUser()Z
    .registers 2

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->isNewUser:Z

    return v0
.end method

.method public isNoPicture()Z
    .registers 2

    .prologue
    .line 625
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->noPicture:Z

    return v0
.end method

.method public isRootUser()Z
    .registers 2

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->isRootUser:Z

    return v0
.end method

.method public isShowInstallTipAfterDownloading()Z
    .registers 2

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->showInstallTipAfterDownloading:Z

    return v0
.end method

.method public isUpdateAvailable()Z
    .registers 2

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->updateAvailable:Z

    return v0
.end method

.method public removeAccount(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 347
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->accountList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    .line 355
    :goto_a
    return-void

    .line 349
    :cond_b
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->accountList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 351
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->accountList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_a

    .line 347
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public setAppversion(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 783
    iput-object p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->appversion:Ljava/lang/String;

    .line 784
    return-void
.end method

.method public setCheckRootPrompTime(I)V
    .registers 2

    .prologue
    .line 793
    iput p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->checkRootPrompTime:I

    .line 794
    return-void
.end method

.method public setCoinnum(I)V
    .registers 2

    .prologue
    .line 773
    iput p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->coinnum:I

    .line 774
    return-void
.end method

.method public setCollectnum(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 758
    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 760
    :cond_a
    const-string v0, "0"

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->collectnum:Ljava/lang/String;

    .line 764
    :goto_e
    return-void

    .line 763
    :cond_f
    iput-object p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->collectnum:Ljava/lang/String;

    goto :goto_e
.end method

.method public setDeletePkgAfterInstallation(Z)V
    .registers 3

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->deletePkgAfterInstallation:Z

    if-eq v0, p1, :cond_6

    .line 663
    iput-boolean p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->deletePkgAfterInstallation:Z

    .line 665
    :cond_6
    return-void
.end method

.method public setDownloadOnlyWithWiFi(Z)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 615
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->downloadOnlyWithWiFi:Z

    if-eq v0, p1, :cond_7

    .line 617
    iput-boolean p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->downloadOnlyWithWiFi:Z

    .line 619
    :cond_7
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/DownloadConfiguration;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadConfiguration;

    move-result-object v2

    .line 620
    if-eqz p1, :cond_16

    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v2, v0, v1}, Lcom/duoku/platform/download/DownloadConfiguration;->setMobileNetworkAllowed(ZZ)V

    .line 621
    return-void

    :cond_16
    move v0, v1

    .line 620
    goto :goto_12
.end method

.method public setGamenum(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 706
    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 708
    :cond_a
    const-string v0, "0"

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->gamenum:Ljava/lang/String;

    .line 712
    :goto_e
    return-void

    .line 711
    :cond_f
    iput-object p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->gamenum:Ljava/lang/String;

    goto :goto_e
.end method

.method public setHasShowNotification(Z)V
    .registers 2

    .prologue
    .line 398
    iput-boolean p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->hasShowNotification:Z

    .line 399
    return-void
.end method

.method public setInstallAutomaticllyAfterDownloading(Z)V
    .registers 3

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->installAutomaticllyAfterDownloading:Z

    if-eq v0, p1, :cond_6

    .line 690
    iput-boolean p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->installAutomaticllyAfterDownloading:Z

    .line 692
    :cond_6
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/utils/MineProfile;->Save(Landroid/content/Context;)Z

    .line 693
    invoke-static {}, Lcom/duoku/platform/download/utils/BackAppListener;->getInstance()Lcom/duoku/platform/download/utils/BackAppListener;

    move-result-object v0

    .line 694
    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/utils/BackAppListener;->changeAutoInstall(Z)V

    .line 695
    return-void
.end method

.method public setIsLogin(Z)V
    .registers 3

    .prologue
    .line 507
    iput-boolean p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->isLogin:Z

    .line 509
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->isLogin:Z

    if-eq v0, p1, :cond_8

    .line 511
    iput-boolean p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->isLogin:Z

    .line 514
    :cond_8
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->isLogin:Z

    if-eqz v0, :cond_1c

    .line 519
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyUserLogin()V

    .line 531
    :goto_1b
    return-void

    .line 528
    :cond_1c
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/BroadcaseSender;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/BroadcaseSender;->notifyUserLogout()V

    goto :goto_1b
.end method

.method public setIsNewUser(Z)V
    .registers 2

    .prologue
    .line 540
    iput-boolean p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->isNewUser:Z

    .line 541
    return-void
.end method

.method public setIsRootUser(Z)V
    .registers 2

    .prologue
    .line 550
    iput-boolean p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->isRootUser:Z

    .line 551
    return-void
.end method

.method public setLastCheckrootTime(J)V
    .registers 4

    .prologue
    .line 428
    iput-wide p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->lastCheckRootTime:J

    .line 429
    return-void
.end method

.method public setLastUpdateSMSCTime(J)V
    .registers 4

    .prologue
    .line 418
    iput-wide p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->lastUpdateSMSCTime:J

    .line 419
    return-void
.end method

.method public setLastUpdateTime(J)V
    .registers 4

    .prologue
    .line 408
    iput-wide p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->lastUpdateTime:J

    .line 409
    return-void
.end method

.method public setMessagenum(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 741
    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 743
    :cond_a
    const-string v0, "0"

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->messagenum:Ljava/lang/String;

    .line 747
    :goto_e
    return-void

    .line 746
    :cond_f
    iput-object p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->messagenum:Ljava/lang/String;

    goto :goto_e
.end method

.method public setNickName(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 489
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_d

    .line 491
    :cond_8
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->nickName:Ljava/lang/String;

    .line 498
    :cond_c
    :goto_c
    return-void

    .line 494
    :cond_d
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->nickName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 496
    iput-object p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->nickName:Ljava/lang/String;

    goto :goto_c
.end method

.method public setNoPicture(Z)V
    .registers 3

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->noPicture:Z

    if-eq v0, p1, :cond_6

    .line 633
    iput-boolean p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->noPicture:Z

    .line 635
    :cond_6
    return-void
.end method

.method public setPhonenum(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 595
    if-nez p1, :cond_7

    .line 597
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->phonenum:Ljava/lang/String;

    .line 605
    :cond_6
    :goto_6
    return-void

    .line 601
    :cond_7
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 603
    iput-object p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->phonenum:Ljava/lang/String;

    goto :goto_6
.end method

.method public setPush_channelid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 374
    iput-object p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->push_channelid:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setPush_userid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 364
    iput-object p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->push_userid:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 561
    if-nez p1, :cond_7

    .line 563
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->sessionID:Ljava/lang/String;

    .line 571
    :cond_6
    :goto_6
    return-void

    .line 567
    :cond_7
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->sessionID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 569
    iput-object p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->sessionID:Ljava/lang/String;

    goto :goto_6
.end method

.method public setShowInstallTipAfterDownloading(Z)V
    .registers 3

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->showInstallTipAfterDownloading:Z

    if-eq v0, p1, :cond_6

    .line 677
    iput-boolean p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->showInstallTipAfterDownloading:Z

    .line 679
    :cond_6
    return-void
.end method

.method public setSimultaneousDownloadNum(I)V
    .registers 3

    .prologue
    .line 645
    iget v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->simultaneousDownloadNum:I

    if-eq v0, p1, :cond_6

    .line 647
    iput p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->simultaneousDownloadNum:I

    .line 649
    :cond_6
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/DownloadConfiguration;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadConfiguration;

    move-result-object v0

    .line 650
    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/DownloadConfiguration;->setMaxTaskNumber(I)V

    .line 651
    return-void
.end method

.method public setStrUserHead(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 872
    iput-object p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->strUserHead:Ljava/lang/String;

    .line 873
    return-void
.end method

.method public setTimeShowNotification(J)V
    .registers 4

    .prologue
    .line 384
    iput-wide p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->timeShowNotification:J

    .line 385
    return-void
.end method

.method public setTotalmsgnum(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 723
    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 725
    :cond_a
    const-string v0, "0"

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->totalmsgnum:Ljava/lang/String;

    .line 729
    :goto_e
    return-void

    .line 728
    :cond_f
    iput-object p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->totalmsgnum:Ljava/lang/String;

    goto :goto_e
.end method

.method public setUpdateAvailable(Z)V
    .registers 2

    .prologue
    .line 438
    iput-boolean p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->updateAvailable:Z

    .line 439
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 449
    if-nez p1, :cond_7

    .line 451
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->userID:Ljava/lang/String;

    .line 459
    :cond_6
    :goto_6
    return-void

    .line 455
    :cond_7
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->userID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 457
    iput-object p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->userID:Ljava/lang/String;

    goto :goto_6
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 469
    if-nez p1, :cond_7

    .line 471
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->userName:Ljava/lang/String;

    .line 479
    :cond_6
    :goto_6
    return-void

    .line 475
    :cond_7
    iget-object v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->userName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 477
    iput-object p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->userName:Ljava/lang/String;

    goto :goto_6
.end method

.method public setUserType(I)V
    .registers 3

    .prologue
    .line 581
    iget v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->userType:I

    if-eq v0, p1, :cond_6

    .line 583
    iput p1, p0, Lcom/duoku/platform/download/utils/MineProfile;->userType:I

    .line 585
    :cond_6
    return-void
.end method

.method public subCoinnum(I)I
    .registers 3

    .prologue
    .line 811
    iget v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->coinnum:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->coinnum:I

    .line 812
    iget v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->coinnum:I

    if-gez v0, :cond_c

    .line 814
    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->coinnum:I

    .line 816
    :cond_c
    iget v0, p0, Lcom/duoku/platform/download/utils/MineProfile;->coinnum:I

    return v0
.end method
