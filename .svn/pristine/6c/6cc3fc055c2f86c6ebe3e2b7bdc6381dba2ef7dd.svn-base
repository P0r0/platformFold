.class Lcom/duoku/platform/download/utils/PackageHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/download/DownloadHelper$DownloadProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/utils/PackageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/duoku/platform/download/PackageMode;
    .registers 30

    .prologue
    .line 88
    invoke-static/range {p6 .. p6}, Lcom/duoku/platform/download/utils/PackageHelper;->getAppData(Ljava/lang/String;)Lcom/duoku/platform/download/PackageMark;

    move-result-object v2

    .line 89
    iget-object v3, v2, Lcom/duoku/platform/download/PackageMark;->gameId:Ljava/lang/String;

    .line 90
    iget-object v5, v2, Lcom/duoku/platform/download/PackageMark;->packageName:Ljava/lang/String;

    .line 91
    iget-object v6, v2, Lcom/duoku/platform/download/PackageMark;->version:Ljava/lang/String;

    .line 92
    iget v7, v2, Lcom/duoku/platform/download/PackageMark;->versionCode:I

    .line 93
    iget-boolean v0, v2, Lcom/duoku/platform/download/PackageMark;->isDiffUpdate:Z

    move/from16 v18, v0

    .line 94
    const/16 v12, 0x8

    .line 95
    const/4 v13, 0x0

    .line 98
    new-instance v2, Lcom/duoku/platform/download/PackageMode;

    move-object/from16 v4, p3

    move-wide/from16 v8, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-wide/from16 v14, p7

    move-wide/from16 v16, p9

    invoke-direct/range {v2 .. v18}, Lcom/duoku/platform/download/PackageMode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;JJZ)V

    .line 104
    move-wide/from16 v0, p7

    iput-wide v0, v2, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    .line 105
    move-wide/from16 v0, p9

    iput-wide v0, v2, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    .line 106
    return-object v2
.end method


# virtual methods
.method public onDownloading(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 12

    .prologue
    .line 112
    invoke-direct/range {p0 .. p10}, Lcom/duoku/platform/download/utils/PackageHelper$a;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/duoku/platform/download/PackageMode;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->notifyPackageStatusChanged(Lcom/duoku/platform/download/PackageMode;)V

    .line 114
    return-void
.end method
