.class public Lcom/duoku/platform/download/mode/UpdatableItem;
.super Lcom/duoku/platform/h/a;
.source "SourceFile"


# instance fields
.field downloadUrl:Ljava/lang/String;

.field extra:Ljava/lang/String;

.field gameId:Ljava/lang/String;

.field iconUrl:Ljava/lang/String;

.field isDiffUpdate:Z

.field name:Ljava/lang/String;

.field needLogin:Z

.field newSize:J

.field newVersion:Ljava/lang/String;

.field newVersionInt:I

.field packageName:Ljava/lang/String;

.field pacthSize:J

.field patchUrl:Ljava/lang/String;

.field publishDate:J

.field serverSign:Ljava/lang/String;

.field updatable:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/duoku/platform/h/a;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;J)V
    .registers 22

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/duoku/platform/h/a;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->gameId:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->packageName:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->name:Ljava/lang/String;

    .line 48
    iput p4, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersionInt:I

    .line 49
    iput-object p5, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersion:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->downloadUrl:Ljava/lang/String;

    .line 51
    iput-wide p7, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->publishDate:J

    .line 52
    iput-object p9, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->serverSign:Ljava/lang/String;

    .line 53
    iput-wide p10, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->newSize:J

    .line 54
    iput-object p12, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->iconUrl:Ljava/lang/String;

    .line 55
    iput-object p13, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->extra:Ljava/lang/String;

    .line 56
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->needLogin:Z

    .line 57
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->updatable:Z

    .line 58
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->isDiffUpdate:Z

    .line 59
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->patchUrl:Ljava/lang/String;

    .line 60
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->pacthSize:J

    .line 61
    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNewSize()J
    .registers 3

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->newSize:J

    return-wide v0
.end method

.method public getNewVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getNewVersionInt()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersionInt:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPacthSize()J
    .registers 3

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->pacthSize:J

    return-wide v0
.end method

.method public getPatchUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->patchUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishDate()J
    .registers 3

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->publishDate:J

    return-wide v0
.end method

.method public getServerSign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->serverSign:Ljava/lang/String;

    return-object v0
.end method

.method public isDiffUpdate()Z
    .registers 2

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->isDiffUpdate:Z

    return v0
.end method

.method public isNeedLogin()Z
    .registers 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->needLogin:Z

    return v0
.end method

.method public isUpdatable()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->updatable:Z

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/duoku/platform/h/a;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDiffUpdate(Z)V
    .registers 2

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->isDiffUpdate:Z

    .line 211
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 120
    iput-object p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->downloadUrl:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 185
    iput-object p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->extra:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->gameId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->iconUrl:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->name:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setNeedLogin(Z)V
    .registers 2

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->needLogin:Z

    .line 201
    return-void
.end method

.method public setNewSize(J)V
    .registers 4

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->newSize:J

    .line 151
    return-void
.end method

.method public setNewVersion(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersion:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setNewVersionInt(I)V
    .registers 2

    .prologue
    .line 90
    iput p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersionInt:I

    .line 91
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->packageName:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setPacthSize(J)V
    .registers 4

    .prologue
    .line 230
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->pacthSize:J

    .line 231
    return-void
.end method

.method public setPatchUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 220
    iput-object p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->patchUrl:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setPublishDate(J)V
    .registers 4

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->publishDate:J

    .line 131
    return-void
.end method

.method public setServerSign(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->serverSign:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setUpdatable(Z)V
    .registers 2

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->updatable:Z

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdatableItem [gameId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newVersionInt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersionInt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->newVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publishDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->publishDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->serverSign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->newSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/UpdatableItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
