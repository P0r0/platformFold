.class public Lcom/duoku/platform/download/mode/DownloadAppInfo;
.super Lcom/duoku/platform/download/mode/InstalledAppInfo;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5b0b074b9689b47L


# instance fields
.field private apkReason:Ljava/lang/Integer;

.field private apkStatus:I

.field private currtentSize:J

.field private diffUpdate:Z

.field private downloadDate:J

.field private downloadId:J

.field private downloadUrl:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private installErrorReason:I

.field public installeStatus:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

.field private isCancelDownload:Z

.field private markDeleted:Z

.field private mergeFailedCount:I

.field private publishDate:J

.field reason:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

.field private saveDest:Ljava/lang/String;

.field status:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

.field private totalSize:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->installErrorReason:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isCancelDownload:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;)V
    .registers 45

    .prologue
    .line 86
    const-wide/16 v10, -0x1

    const/16 v19, 0x1

    const/16 v21, -0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-wide/from16 v16, p11

    move-object/from16 v18, p19

    move-object/from16 v20, p21

    invoke-direct/range {v5 .. v21}, Lcom/duoku/platform/download/mode/InstalledAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;I)V

    .line 32
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->installErrorReason:I

    .line 53
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isCancelDownload:Z

    .line 87
    move-wide/from16 v0, p13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/duoku/platform/download/mode/DownloadAppInfo;->downloadId:J

    .line 88
    move-wide/from16 v0, p17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/duoku/platform/download/mode/DownloadAppInfo;->downloadDate:J

    .line 91
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/duoku/platform/download/mode/DownloadAppInfo;->publishDate:J

    .line 92
    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/duoku/platform/download/mode/DownloadAppInfo;->downloadUrl:Ljava/lang/String;

    .line 93
    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/duoku/platform/download/mode/DownloadAppInfo;->iconUrl:Ljava/lang/String;

    .line 94
    move/from16 v0, p20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/duoku/platform/download/mode/DownloadAppInfo;->diffUpdate:Z

    .line 96
    return-void
.end method


# virtual methods
.method public getApkReason()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->apkReason:Ljava/lang/Integer;

    return-object v0
.end method

.method public getApkStatus()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->apkStatus:I

    return v0
.end method

.method public getCurrtentSize()J
    .registers 3

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->currtentSize:J

    return-wide v0
.end method

.method public getDownloadDate()J
    .registers 3

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->downloadDate:J

    return-wide v0
.end method

.method public getDownloadId()J
    .registers 3

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->downloadId:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorReason()I
    .registers 2

    .prologue
    .line 305
    iget v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->installErrorReason:I

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 2

    .prologue
    .line 343
    invoke-super {p0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallErrorReason()I
    .registers 2

    .prologue
    .line 315
    iget v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->installErrorReason:I

    return v0
.end method

.method public getInstalleStatus()Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->installeStatus:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    return-object v0
.end method

.method public getIsCancelDownload()Z
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isCancelDownload:Z

    return v0
.end method

.method public getMergeFailedCount()I
    .registers 2

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public getPublishDate()J
    .registers 3

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->publishDate:J

    return-wide v0
.end method

.method public getReason()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->reason:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    return-object v0
.end method

.method public getSaveDest()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->saveDest:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 282
    invoke-super {p0}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->status:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    return-object v0
.end method

.method public getTotalSize()J
    .registers 3

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->totalSize:J

    return-wide v0
.end method

.method public isDiffUpdate()Z
    .registers 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->diffUpdate:Z

    return v0
.end method

.method public isMarkDeleted()Z
    .registers 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->markDeleted:Z

    return v0
.end method

.method public setApkReason(Ljava/lang/Integer;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->apkReason:Ljava/lang/Integer;

    .line 117
    return-void
.end method

.method public setApkStatus(I)V
    .registers 2

    .prologue
    .line 105
    iput p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->apkStatus:I

    .line 106
    return-void
.end method

.method public setCurrtentSize(J)V
    .registers 4

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->currtentSize:J

    .line 183
    return-void
.end method

.method public setDiffUpdate(Z)V
    .registers 2

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->diffUpdate:Z

    .line 215
    return-void
.end method

.method public setDownloadDate(J)V
    .registers 4

    .prologue
    .line 234
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->downloadDate:J

    .line 235
    return-void
.end method

.method public setDownloadId(J)V
    .registers 4

    .prologue
    .line 224
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->downloadId:J

    .line 225
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 244
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->downloadUrl:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setErrorReason(I)V
    .registers 2

    .prologue
    .line 310
    iput p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->installErrorReason:I

    .line 311
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setGameId(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 264
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->iconUrl:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setInstallErrorReason(I)V
    .registers 2

    .prologue
    .line 320
    iput p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->installErrorReason:I

    .line 321
    return-void
.end method

.method public setInstalleStatus(Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;)V
    .registers 2

    .prologue
    .line 300
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->installeStatus:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    .line 301
    return-void
.end method

.method public setIsCancelDownload(Z)V
    .registers 2

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isCancelDownload:Z

    .line 171
    return-void
.end method

.method public setMarkDeleted(Z)V
    .registers 2

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->markDeleted:Z

    .line 205
    return-void
.end method

.method public setMergeFailedCount(I)V
    .registers 2

    .prologue
    .line 334
    iput p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->mergeFailedCount:I

    .line 335
    return-void
.end method

.method public setPublishDate(J)V
    .registers 4

    .prologue
    .line 254
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->publishDate:J

    .line 255
    return-void
.end method

.method public setReason(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->reason:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 161
    return-void
.end method

.method public setSaveDest(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 128
    if-eqz p1, :cond_c

    .line 132
    :try_start_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->saveDest:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    .line 141
    :cond_c
    :goto_c
    return-void

    .line 134
    :catch_d
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->saveDest:Ljava/lang/String;

    goto :goto_c
.end method

.method public setSize(J)V
    .registers 4

    .prologue
    .line 290
    invoke-super {p0, p1, p2}, Lcom/duoku/platform/download/mode/InstalledAppInfo;->setSize(J)V

    .line 291
    return-void
.end method

.method public setStatus(Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;)V
    .registers 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->status:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    .line 151
    return-void
.end method

.method public setTotalSize(J)V
    .registers 4

    .prologue
    .line 194
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->totalSize:J

    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownloadAppInfo id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->downloadId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [currtentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->currtentSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->totalSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->status:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->reason:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", installeStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->installeStatus:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 350
    const-string v1, ", installErrorReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->installErrorReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", markDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/duoku/platform/download/mode/DownloadAppInfo;->markDeleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
