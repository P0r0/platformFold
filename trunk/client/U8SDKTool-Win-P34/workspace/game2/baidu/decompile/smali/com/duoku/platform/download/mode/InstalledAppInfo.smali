.class public Lcom/duoku/platform/download/mode/InstalledAppInfo;
.super Lcom/duoku/platform/download/mode/BaseAppInfo;
.source "SourceFile"


# instance fields
.field private date:J

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private extra:Ljava/lang/String;

.field private fileMd5:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private isGame:Z

.field private isNewInstallApp:I

.field private isShowGiftBagRemind:Z

.field private launcherAppTime:J

.field private needLogin:Z

.field private newInstallAppTime:J

.field private pinyinName:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private size:J

.field private sizeString:Ljava/lang/String;

.field private startCount:I

.field private uid:I

.field private version:Ljava/lang/String;

.field private versionInt:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/duoku/platform/download/mode/BaseAppInfo;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;I)V
    .registers 18

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p13}, Lcom/duoku/platform/download/mode/BaseAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-object p3, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->version:Ljava/lang/String;

    .line 88
    iput p4, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->versionInt:I

    .line 89
    iput-wide p5, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->date:J

    .line 90
    iput-object p7, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->extra:Ljava/lang/String;

    .line 91
    iput-object p9, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->pinyinName:Ljava/lang/String;

    .line 92
    iput-wide p11, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->size:J

    .line 93
    iput-object p10, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->sign:Ljava/lang/String;

    .line 94
    iput-boolean p8, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->needLogin:Z

    .line 95
    iput-object p13, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->gameId:Ljava/lang/String;

    .line 96
    iput-boolean p14, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isGame:Z

    .line 97
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->fileMd5:Ljava/lang/String;

    .line 98
    move/from16 v0, p16

    iput v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->uid:I

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;IIIJ)V
    .registers 24

    .prologue
    .line 106
    move-object/from16 v0, p13

    invoke-direct {p0, p1, p2, v0}, Lcom/duoku/platform/download/mode/BaseAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-object p3, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->version:Ljava/lang/String;

    .line 108
    iput p4, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->versionInt:I

    .line 109
    iput-wide p5, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->date:J

    .line 110
    iput-object p7, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->extra:Ljava/lang/String;

    .line 111
    iput-object p9, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->pinyinName:Ljava/lang/String;

    .line 112
    iput-wide p11, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->size:J

    .line 113
    iput-object p10, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->sign:Ljava/lang/String;

    .line 114
    iput-boolean p8, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->needLogin:Z

    .line 115
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->gameId:Ljava/lang/String;

    .line 116
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isGame:Z

    .line 117
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->fileMd5:Ljava/lang/String;

    .line 118
    move/from16 v0, p16

    iput v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->uid:I

    .line 119
    move/from16 v0, p17

    iput v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->startCount:I

    .line 120
    move/from16 v0, p18

    iput v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isNewInstallApp:I

    .line 121
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->newInstallAppTime:J

    .line 122
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/duoku/platform/download/mode/BaseAppInfo;)I
    .registers 4

    .prologue
    .line 258
    instance-of v0, p1, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    if-eqz v0, :cond_20

    move-object v0, p1

    .line 260
    check-cast v0, Lcom/duoku/platform/download/mode/InstalledAppInfo;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getPinyinName()Ljava/lang/String;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->pinyinName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 263
    iget-object v1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->pinyinName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 266
    :goto_1f
    return v0

    :cond_20
    invoke-super {p0, p1}, Lcom/duoku/platform/download/mode/BaseAppInfo;->compareTo(Lcom/duoku/platform/download/mode/BaseAppInfo;)I

    move-result v0

    goto :goto_1f
.end method

.method public getDate()J
    .registers 3

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->date:J

    return-wide v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getFileMd5()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->fileMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNewInstallApp()I
    .registers 2

    .prologue
    .line 324
    iget v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isNewInstallApp:I

    return v0
.end method

.method public getLauncherAppTime()J
    .registers 3

    .prologue
    .line 354
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->launcherAppTime:J

    return-wide v0
.end method

.method public getNewInstallAppTime()J
    .registers 3

    .prologue
    .line 334
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->newInstallAppTime:J

    return-wide v0
.end method

.method public getPinyinName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->pinyinName:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->size:J

    return-wide v0
.end method

.method public getSizeString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->sizeString:Ljava/lang/String;

    return-object v0
.end method

.method public getStartCount()I
    .registers 2

    .prologue
    .line 314
    iget v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->startCount:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .prologue
    .line 300
    iget v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->uid:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionInt()I
    .registers 2

    .prologue
    .line 171
    iget v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->versionInt:I

    return v0
.end method

.method public isGame()Z
    .registers 2

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isGame:Z

    return v0
.end method

.method public isNeedLogin()Z
    .registers 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->needLogin:Z

    return v0
.end method

.method public isShowGiftBagRemind()Z
    .registers 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isShowGiftBagRemind:Z

    return v0
.end method

.method public setDate(J)V
    .registers 4

    .prologue
    .line 204
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->date:J

    .line 205
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->drawable:Landroid/graphics/drawable/Drawable;

    .line 64
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 217
    iput-object p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->extra:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setFileMd5(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->fileMd5:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setGame(Z)V
    .registers 2

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isGame:Z

    .line 288
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 277
    iput-object p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->gameId:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setIsNewInstallApp(I)V
    .registers 2

    .prologue
    .line 329
    iput p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isNewInstallApp:I

    .line 330
    return-void
.end method

.method public setLauncherAppTime(J)V
    .registers 4

    .prologue
    .line 359
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->launcherAppTime:J

    .line 360
    return-void
.end method

.method public setNeedLogin(Z)V
    .registers 2

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->needLogin:Z

    .line 137
    return-void
.end method

.method public setNewInstallAppTime(J)V
    .registers 4

    .prologue
    .line 339
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->newInstallAppTime:J

    .line 340
    return-void
.end method

.method public setPinyinName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->pinyinName:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setShowGiftBagRemind(Z)V
    .registers 2

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isShowGiftBagRemind:Z

    .line 350
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->sign:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setSize(J)V
    .registers 4

    .prologue
    .line 244
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->size:J

    .line 245
    return-void
.end method

.method public setSizeString(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 156
    iput-object p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->sizeString:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setStartCount(I)V
    .registers 2

    .prologue
    .line 319
    iput p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->startCount:I

    .line 320
    return-void
.end method

.method public setUid(I)V
    .registers 2

    .prologue
    .line 305
    iput p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->uid:I

    .line 306
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->version:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setVersionInt(I)V
    .registers 2

    .prologue
    .line 176
    iput p1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->versionInt:I

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstalledAppInfo [versionInt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->versionInt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sizeString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->sizeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->date:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pinyinName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->pinyinName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", drawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isGame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isGame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileMd5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->fileMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->startCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    const-string v1, ", isNewInstallApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->isNewInstallApp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newInstallAppTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->newInstallAppTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needLogin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/duoku/platform/download/mode/InstalledAppInfo;->needLogin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMD5()V
    .registers 1

    .prologue
    .line 310
    return-void
.end method
