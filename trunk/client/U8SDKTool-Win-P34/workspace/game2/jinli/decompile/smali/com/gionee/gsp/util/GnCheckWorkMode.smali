.class public Lcom/gionee/gsp/util/GnCheckWorkMode;
.super Ljava/lang/Object;
.source "GnCheckWorkMode.java"


# static fields
.field private static sGnCheckWorkMode:Lcom/gionee/gsp/util/GnCheckWorkMode;


# instance fields
.field public mIsLoadAssetsGSP:Z

.field public mIsTestMode:Z

.field public mIsTestModeGSP:Z

.field public mTestDependComponent:[Lcom/gionee/gsp/GnEDependComponent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Lcom/gionee/gsp/util/GnCheckWorkMode;

    invoke-direct {v0}, Lcom/gionee/gsp/util/GnCheckWorkMode;-><init>()V

    sput-object v0, Lcom/gionee/gsp/util/GnCheckWorkMode;->sGnCheckWorkMode:Lcom/gionee/gsp/util/GnCheckWorkMode;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/gionee/gsp/util/GnCheckWorkMode;->mIsTestMode:Z

    .line 43
    iput-boolean v0, p0, Lcom/gionee/gsp/util/GnCheckWorkMode;->mIsLoadAssetsGSP:Z

    .line 47
    iput-boolean v0, p0, Lcom/gionee/gsp/util/GnCheckWorkMode;->mIsTestModeGSP:Z

    .line 16
    invoke-virtual {p0}, Lcom/gionee/gsp/util/GnCheckWorkMode;->checkIsTestMode()V

    .line 17
    invoke-virtual {p0}, Lcom/gionee/gsp/util/GnCheckWorkMode;->checkIsOpenException()V

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/gionee/gsp/util/GnCheckWorkMode;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/gionee/gsp/util/GnCheckWorkMode;->sGnCheckWorkMode:Lcom/gionee/gsp/util/GnCheckWorkMode;

    return-object v0
.end method


# virtual methods
.method public checkIsOpenException()V
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/gionee/gsp/util/GnCheckWorkMode;->mIsTestMode:Z

    sput-boolean v0, Lcom/gionee/gsp/common/GnCommonConfig;->sPrintExceptionMessage:Z

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/gionee/gsp/common/GnCommonConfig;->sPrintExceptionMessage:Z

    .line 35
    return-void
.end method

.method public checkIsTestMode()V
    .registers 5

    .prologue
    .line 63
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "gsp/gsp_test"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 65
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/gionee/gsp/util/GnCheckWorkMode;->mIsTestMode:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 71
    .end local v1    # "file":Ljava/io/File;
    :cond_16
    :goto_16
    return-void

    .line 67
    :catch_17
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public initTestMode()[Lcom/gionee/gsp/GnEDependComponent;
    .registers 7

    .prologue
    .line 80
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "dependComponentList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/GnEDependComponent;>;"
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "gsp/init/account"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 83
    sget-object v4, Lcom/gionee/gsp/GnEDependComponent;->ACCOUNT:Lcom/gionee/gsp/GnEDependComponent;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_1d
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "gsp/init/pay"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .restart local v2    # "file":Ljava/io/File;
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 88
    sget-object v4, Lcom/gionee/gsp/GnEDependComponent;->PAY:Lcom/gionee/gsp/GnEDependComponent;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4a

    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/gionee/gsp/GnEDependComponent;

    iput-object v4, p0, Lcom/gionee/gsp/util/GnCheckWorkMode;->mTestDependComponent:[Lcom/gionee/gsp/GnEDependComponent;

    .line 98
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_79

    .line 107
    .end local v3    # "i":I
    :cond_4a
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "gsp/assets/gionee/gsp"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .restart local v2    # "file":Ljava/io/File;
    if-eqz v2, :cond_60

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 109
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/gionee/gsp/util/GnCheckWorkMode;->mIsLoadAssetsGSP:Z

    .line 116
    :cond_60
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "gsp/update_test_mode/gsp"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .restart local v2    # "file":Ljava/io/File;
    if-eqz v2, :cond_76

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 118
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/gionee/gsp/util/GnCheckWorkMode;->mIsTestModeGSP:Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_76} :catch_86

    .line 123
    .end local v0    # "dependComponentList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/GnEDependComponent;>;"
    .end local v2    # "file":Ljava/io/File;
    :cond_76
    :goto_76
    iget-object v4, p0, Lcom/gionee/gsp/util/GnCheckWorkMode;->mTestDependComponent:[Lcom/gionee/gsp/GnEDependComponent;

    return-object v4

    .line 99
    .restart local v0    # "dependComponentList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/GnEDependComponent;>;"
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "i":I
    :cond_79
    :try_start_79
    iget-object v5, p0, Lcom/gionee/gsp/util/GnCheckWorkMode;->mTestDependComponent:[Lcom/gionee/gsp/GnEDependComponent;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gionee/gsp/GnEDependComponent;

    aput-object v4, v5, v3
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_83} :catch_86

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 120
    .end local v0    # "dependComponentList":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/GnEDependComponent;>;"
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i":I
    :catch_86
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_76
.end method
