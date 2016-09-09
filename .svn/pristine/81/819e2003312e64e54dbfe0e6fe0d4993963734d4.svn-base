.class public Lcom/duoku/platform/download/mode/UpdatableAppInfo;
.super Lcom/duoku/platform/download/mode/InstalledAppInfo;
.source "SourceFile"


# instance fields
.field private apkReason:Ljava/lang/Integer;

.field private apkStatus:I

.field private currtentSize:J

.field private downloadId:J

.field private ignoreUpdate:Z

.field private mergeFailedCount:I

.field private saveDest:Ljava/lang/String;

.field private totalSize:J

.field private updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;-><init>()V

    .line 17
    new-instance v0, Lcom/duoku/platform/download/mode/UpdatableItem;

    invoke-direct {v0}, Lcom/duoku/platform/download/mode/UpdatableItem;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/duoku/platform/download/mode/UpdatableItem;)V
    .registers 22

    .prologue
    .line 71
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersionInt:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->publishDate:J

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->extra:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->needLogin:Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->newSize:J

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->gameId:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v19}, Lcom/duoku/platform/download/mode/InstalledAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;I)V

    .line 72
    new-instance v2, Lcom/duoku/platform/download/mode/UpdatableItem;

    invoke-direct {v2}, Lcom/duoku/platform/download/mode/UpdatableItem;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    .line 73
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->ignoreUpdate:Z

    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->packageName:Ljava/lang/String;

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->name:Ljava/lang/String;

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersion:Ljava/lang/String;

    iput-object v3, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersion:Ljava/lang/String;

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersionInt:I

    iput v3, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersionInt:I

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->downloadUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->downloadUrl:Ljava/lang/String;

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->publishDate:J

    iput-wide v4, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->publishDate:J

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->serverSign:Ljava/lang/String;

    iput-object v3, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->serverSign:Ljava/lang/String;

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->newSize:J

    iput-wide v4, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->newSize:J

    .line 84
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->gameId:Ljava/lang/String;

    iput-object v3, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->gameId:Ljava/lang/String;

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->iconUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->iconUrl:Ljava/lang/String;

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->extra:Ljava/lang/String;

    iput-object v3, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->extra:Ljava/lang/String;

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->needLogin:Z

    iput-boolean v3, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->needLogin:Z

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->isDiffUpdate:Z

    iput-boolean v3, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->isDiffUpdate:Z

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->patchUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->patchUrl:Ljava/lang/String;

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->pacthSize:J

    iput-wide v4, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->pacthSize:J

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;J)V
    .registers 48

    .prologue
    .line 45
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-wide/from16 v14, p11

    move-object/from16 v16, p22

    invoke-direct/range {v3 .. v19}, Lcom/duoku/platform/download/mode/InstalledAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;I)V

    .line 46
    new-instance v2, Lcom/duoku/platform/download/mode/UpdatableItem;

    invoke-direct {v2}, Lcom/duoku/platform/download/mode/UpdatableItem;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    .line 47
    move/from16 v0, p20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->ignoreUpdate:Z

    .line 49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->packageName:Ljava/lang/String;

    .line 50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->name:Ljava/lang/String;

    .line 52
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p13

    iput-object v0, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersion:Ljava/lang/String;

    .line 53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move/from16 v0, p14

    iput v0, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersionInt:I

    .line 54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p15

    iput-object v0, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->downloadUrl:Ljava/lang/String;

    .line 55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-wide/from16 v0, p16

    iput-wide v0, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->publishDate:J

    .line 56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p21

    iput-object v0, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->serverSign:Ljava/lang/String;

    .line 57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-wide/from16 v0, p18

    iput-wide v0, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->newSize:J

    .line 58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p22

    iput-object v0, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->gameId:Ljava/lang/String;

    .line 59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p23

    iput-object v0, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->iconUrl:Ljava/lang/String;

    .line 60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p7

    iput-object v0, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->extra:Ljava/lang/String;

    .line 61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move/from16 v0, p8

    iput-boolean v0, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->needLogin:Z

    .line 62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move/from16 v0, p24

    iput-boolean v0, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->isDiffUpdate:Z

    .line 63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-object/from16 v0, p25

    iput-object v0, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->patchUrl:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    move-wide/from16 v0, p26

    iput-wide v0, v2, Lcom/duoku/platform/download/mode/UpdatableItem;->pacthSize:J

    .line 66
    return-void
.end method

.method private getMergeFaildCount(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getApkReason()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->apkReason:Ljava/lang/Integer;

    return-object v0
.end method

.method public getApkStatus()I
    .registers 2

    .prologue
    .line 306
    iget v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->apkStatus:I

    return v0
.end method

.method public getCurrtentSize()J
    .registers 3

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->currtentSize:J

    return-wide v0
.end method

.method public getDownloadId()J
    .registers 3

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->downloadId:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iget-object v0, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iget-object v0, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iget-object v0, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMergeFailedCount()I
    .registers 2

    .prologue
    .line 326
    iget v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->mergeFailedCount:I

    return v0
.end method

.method public getNewSize()J
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iget-wide v0, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->newSize:J

    return-wide v0
.end method

.method public getNewVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iget-object v0, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getNewVersionInt()I
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iget v0, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersionInt:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iget-object v0, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchSize()J
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iget-wide v0, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->pacthSize:J

    return-wide v0
.end method

.method public getPatchUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iget-object v0, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->patchUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishDate()J
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iget-wide v0, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->publishDate:J

    return-wide v0
.end method

.method public getSaveDest()Ljava/lang/String;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->saveDest:Ljava/lang/String;

    return-object v0
.end method

.method public getServerSign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iget-object v0, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->serverSign:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()J
    .registers 3

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->totalSize:J

    return-wide v0
.end method

.method public isDiffUpdate()Z
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iget-boolean v0, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->isDiffUpdate:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/UpdatableItem;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getMergeFaildCount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isIgnoreUpdate()Z
    .registers 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->ignoreUpdate:Z

    return v0
.end method

.method public setApkReason(Ljava/lang/Integer;)V
    .registers 2

    .prologue
    .line 321
    iput-object p1, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->apkReason:Ljava/lang/Integer;

    .line 322
    return-void
.end method

.method public setApkStatus(I)V
    .registers 2

    .prologue
    .line 311
    iput p1, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->apkStatus:I

    .line 312
    return-void
.end method

.method public setCurrtentSize(J)V
    .registers 4

    .prologue
    .line 281
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->currtentSize:J

    .line 282
    return-void
.end method

.method public setDiffUpdate(Z)V
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/mode/UpdatableItem;->setDiffUpdate(Z)V

    .line 235
    return-void
.end method

.method public setDownloadId(J)V
    .registers 4

    .prologue
    .line 341
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->downloadId:J

    .line 342
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iput-object p1, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->downloadUrl:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iput-object p1, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->gameId:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iput-object p1, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->iconUrl:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setIgnoreUpdate(Z)V
    .registers 2

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->ignoreUpdate:Z

    .line 184
    return-void
.end method

.method public setMergeFailedCount(I)V
    .registers 2

    .prologue
    .line 331
    iput p1, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->mergeFailedCount:I

    .line 332
    return-void
.end method

.method public setNewSize(J)V
    .registers 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iput-wide p1, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->newSize:J

    .line 174
    return-void
.end method

.method public setNewVersion(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iput-object p1, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersion:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setNewVersionInt(I)V
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iput p1, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersionInt:I

    .line 154
    return-void
.end method

.method public setPachUrl(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iput-object p1, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->patchUrl:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iput-object p1, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->packageName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setPacthSize(J)V
    .registers 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    invoke-virtual {v0, p1, p2}, Lcom/duoku/platform/download/mode/UpdatableItem;->setPacthSize(J)V

    .line 255
    return-void
.end method

.method public setPatchUrl(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    invoke-virtual {v0, p1}, Lcom/duoku/platform/download/mode/UpdatableItem;->setPatchUrl(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public setPublishDate(J)V
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iput-wide p1, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->publishDate:J

    .line 134
    return-void
.end method

.method public setSaveDest(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 301
    iput-object p1, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->saveDest:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setServerSign(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    iput-object p1, v0, Lcom/duoku/platform/download/mode/UpdatableItem;->serverSign:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setTotalSize(J)V
    .registers 4

    .prologue
    .line 291
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->totalSize:J

    .line 292
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdatableAppInfo [updatableItem="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->updatableItem:Lcom/duoku/platform/download/mode/UpdatableItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ignoreUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->ignoreUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currtentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->currtentSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->totalSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", saveDest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->saveDest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 348
    const-string v1, ", apkStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->apkStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apkReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->apkReason:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->downloadId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mergeFailedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->mergeFailedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
