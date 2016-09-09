.class public Lcom/duoku/platform/download/mode/DownloadItemInput;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field action:Ljava/lang/String;

.field displayName:Ljava/lang/String;

.field downloadUrl:Ljava/lang/String;

.field gameId:Ljava/lang/String;

.field iconUrl:Ljava/lang/String;

.field isDiffDownload:Z

.field isExternal:Z

.field needLogin:Z

.field packageName:Ljava/lang/String;

.field publishDate:J

.field saveName:Ljava/lang/String;

.field sign:Ljava/lang/String;

.field size:J

.field sizeString:Ljava/lang/String;

.field version:Ljava/lang/String;

.field versionInt:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;ZZ)V
    .registers 19

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->iconUrl:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->gameId:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->packageName:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->displayName:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->saveName:Ljava/lang/String;

    .line 85
    iput p6, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->versionInt:I

    .line 86
    iput-object p7, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->version:Ljava/lang/String;

    .line 87
    iput-object p8, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->downloadUrl:Ljava/lang/String;

    .line 88
    iput-object p9, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->sign:Ljava/lang/String;

    .line 89
    iput-wide p10, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->size:J

    .line 90
    iput-object p12, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->sizeString:Ljava/lang/String;

    .line 91
    iput-wide p13, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->publishDate:J

    .line 92
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->action:Ljava/lang/String;

    .line 93
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->needLogin:Z

    .line 94
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->isDiffDownload:Z

    .line 95
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishDate()J
    .registers 3

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->publishDate:J

    return-wide v0
.end method

.method public getSaveName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->saveName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->saveName:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->size:J

    return-wide v0
.end method

.method public getSizeString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->sizeString:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionInt()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->versionInt:I

    return v0
.end method

.method public isDiffDownload()Z
    .registers 2

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->isDiffDownload:Z

    return v0
.end method

.method public isExternal()Z
    .registers 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->isExternal:Z

    return v0
.end method

.method public isNeedLogin()Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->needLogin:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 252
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->action:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setDiffDownload(Z)V
    .registers 2

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->isDiffDownload:Z

    .line 263
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->displayName:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 192
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->downloadUrl:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setExternal(Z)V
    .registers 2

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->isExternal:Z

    .line 44
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->gameId:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->iconUrl:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setNeedLogin(Z)V
    .registers 2

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->needLogin:Z

    .line 105
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->packageName:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setPublishDate(J)V
    .registers 4

    .prologue
    .line 222
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->publishDate:J

    .line 223
    return-void
.end method

.method public setSaveName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->saveName:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 202
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->sign:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setSize(J)V
    .registers 4

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->size:J

    .line 213
    return-void
.end method

.method public setSizeString(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 232
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->sizeString:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 182
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->version:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setVersionInt(I)V
    .registers 2

    .prologue
    .line 172
    iput p1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->versionInt:I

    .line 173
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DowanloadItemInput:{iconUrl == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameId == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    const-string v1, ", saveName == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->saveName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionInt == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->versionInt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadUrl == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sign == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",size == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    const-string v1, ", sizeString == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->sizeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publishData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needLogin == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDiffDownload == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/duoku/platform/download/mode/DownloadItemInput;->isDiffDownload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    return-object v0
.end method
