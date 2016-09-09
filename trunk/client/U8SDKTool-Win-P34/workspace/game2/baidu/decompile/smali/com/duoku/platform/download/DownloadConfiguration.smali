.class public Lcom/duoku/platform/download/DownloadConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/download/DownloadConfiguration$DefaultDownloadComprator;,
        Lcom/duoku/platform/download/DownloadConfiguration$DownloadComprator;,
        Lcom/duoku/platform/download/DownloadConfiguration$DownloadInputItem;,
        Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemListener;,
        Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;,
        Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;,
        Lcom/duoku/platform/download/DownloadConfiguration$a;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/duoku/platform/download/DownloadConfiguration;


# instance fields
.field private autoResume:Z

.field private context:Landroid/content/Context;

.field private destinationFolder:Ljava/lang/String;

.field private mobileNetworkAllowed:Z

.field private onNotifierClickListener:Lcom/duoku/platform/download/DownloadConfiguration$a;

.field private openOnClickSuccessfulDownload:Z

.field private reStartOnClickFailedDownload:Z

.field private roamingAllowed:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/download/DownloadConfiguration;->destinationFolder:Ljava/lang/String;

    .line 23
    iput-boolean v1, p0, Lcom/duoku/platform/download/DownloadConfiguration;->mobileNetworkAllowed:Z

    .line 24
    iput-boolean v1, p0, Lcom/duoku/platform/download/DownloadConfiguration;->roamingAllowed:Z

    .line 738
    iput-boolean v1, p0, Lcom/duoku/platform/download/DownloadConfiguration;->openOnClickSuccessfulDownload:Z

    .line 739
    iput-boolean v1, p0, Lcom/duoku/platform/download/DownloadConfiguration;->reStartOnClickFailedDownload:Z

    .line 741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/download/DownloadConfiguration;->autoResume:Z

    .line 30
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadConfiguration;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/duoku/platform/download/DownloadConfiguration;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadConfiguration;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/DownloadConfiguration;
    .registers 3

    .prologue
    .line 35
    const-class v1, Lcom/duoku/platform/download/DownloadConfiguration;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration;->INSTANCE:Lcom/duoku/platform/download/DownloadConfiguration;

    if-nez v0, :cond_e

    .line 37
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/DownloadConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration;->INSTANCE:Lcom/duoku/platform/download/DownloadConfiguration;

    .line 39
    :cond_e
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration;->INSTANCE:Lcom/duoku/platform/download/DownloadConfiguration;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private internalInit()V
    .registers 5

    .prologue
    .line 47
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/duoku/platform/download/DownloadConfiguration;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/downloads/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 53
    :cond_2f
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/DownloadConfiguration;->setDefaultDestinationFolder(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getDefaultDestinationFolder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadConfiguration;->destinationFolder:Ljava/lang/String;

    return-object v0
.end method

.method getOnNotifierClickListener()Lcom/duoku/platform/download/DownloadConfiguration$a;
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/duoku/platform/download/DownloadConfiguration;->onNotifierClickListener:Lcom/duoku/platform/download/DownloadConfiguration$a;

    return-object v0
.end method

.method public init()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/duoku/platform/download/DownloadConfiguration;->internalInit()V

    .line 64
    return-void
.end method

.method public isAutoResume()Z
    .registers 2

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/duoku/platform/download/DownloadConfiguration;->autoResume:Z

    return v0
.end method

.method public isMobileNetworkAllowed()Z
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/duoku/platform/download/DownloadConfiguration;->mobileNetworkAllowed:Z

    return v0
.end method

.method isOpenOnClickSuccessfulDownload()Z
    .registers 2

    .prologue
    .line 793
    iget-boolean v0, p0, Lcom/duoku/platform/download/DownloadConfiguration;->openOnClickSuccessfulDownload:Z

    return v0
.end method

.method public isReStartOnClickFailedDownload()Z
    .registers 2

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/duoku/platform/download/DownloadConfiguration;->reStartOnClickFailedDownload:Z

    return v0
.end method

.method public isRoamingAllowed()Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/duoku/platform/download/DownloadConfiguration;->roamingAllowed:Z

    return v0
.end method

.method public setAutoResume(Z)V
    .registers 2

    .prologue
    .line 755
    iput-boolean p1, p0, Lcom/duoku/platform/download/DownloadConfiguration;->autoResume:Z

    .line 756
    return-void
.end method

.method public setDefaultDestinationFolder(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadConfiguration;->destinationFolder:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setMaxRetryCount(I)V
    .registers 3

    .prologue
    .line 171
    const/4 v0, 0x1

    if-lt p1, v0, :cond_5

    .line 173
    sput p1, Lcom/duoku/platform/download/Constants;->MAX_RETRIES:I

    .line 176
    :cond_5
    return-void
.end method

.method public setMaxTaskNumber(I)V
    .registers 3

    .prologue
    .line 157
    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    .line 160
    const/4 v0, 0x2

    sput v0, Lcom/duoku/platform/download/Constants;->MAX_THREAD:I

    .line 164
    :cond_6
    return-void
.end method

.method public setMobileNetworkAllowed(Z)V
    .registers 2

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/duoku/platform/download/DownloadConfiguration;->mobileNetworkAllowed:Z

    .line 108
    return-void
.end method

.method public setMobileNetworkAllowed(ZZ)V
    .registers 4

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/duoku/platform/download/DownloadConfiguration;->mobileNetworkAllowed:Z

    .line 113
    if-eqz p2, :cond_c

    .line 115
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/DownloadConfiguration$1;-><init>(Lcom/duoku/platform/download/DownloadConfiguration;)V

    .line 121
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration$1;->start()V

    .line 123
    :cond_c
    return-void
.end method

.method setOnNotifierClickListener(Lcom/duoku/platform/download/DownloadConfiguration$a;)V
    .registers 2

    .prologue
    .line 763
    iput-object p1, p0, Lcom/duoku/platform/download/DownloadConfiguration;->onNotifierClickListener:Lcom/duoku/platform/download/DownloadConfiguration$a;

    .line 764
    return-void
.end method

.method setOpenOnClickSuccessfulDownload(Z)V
    .registers 2

    .prologue
    .line 773
    iput-boolean p1, p0, Lcom/duoku/platform/download/DownloadConfiguration;->openOnClickSuccessfulDownload:Z

    .line 774
    return-void
.end method

.method setReStartOnClickFailedDownload(Z)V
    .registers 2

    .prologue
    .line 783
    iput-boolean p1, p0, Lcom/duoku/platform/download/DownloadConfiguration;->reStartOnClickFailedDownload:Z

    .line 784
    return-void
.end method

.method public setRoamingAllowed(Z)V
    .registers 2

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/duoku/platform/download/DownloadConfiguration;->roamingAllowed:Z

    .line 143
    return-void
.end method
