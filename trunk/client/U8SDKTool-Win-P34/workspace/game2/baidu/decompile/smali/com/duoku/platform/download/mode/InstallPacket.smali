.class public Lcom/duoku/platform/download/mode/InstallPacket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duoku/platform/download/mode/InstallPacket;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x6ccff5850704ab13L


# instance fields
.field callback:Lcom/duoku/platform/download/utils/AppSilentInstaller$PackageInstallerCallback;

.field public downloadId:J

.field public downloadUrl:Ljava/lang/String;

.field public errorReason:I

.field public filepath:Ljava/lang/String;

.field public gameId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public started:Z

.field public status:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 209
    new-instance v0, Lcom/duoku/platform/download/mode/InstallPacket$1;

    invoke-direct {v0}, Lcom/duoku/platform/download/mode/InstallPacket$1;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/mode/InstallPacket;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 233
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/duoku/platform/download/mode/InstallPacket;->name:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/duoku/platform/download/mode/InstallPacket;->packageName:Ljava/lang/String;

    .line 43
    iput-wide p4, p0, Lcom/duoku/platform/download/mode/InstallPacket;->downloadId:J

    .line 44
    iput-object p3, p0, Lcom/duoku/platform/download/mode/InstallPacket;->filepath:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->started:Z

    .line 46
    iput-object p6, p0, Lcom/duoku/platform/download/mode/InstallPacket;->gameId:Ljava/lang/String;

    .line 47
    iput-object p7, p0, Lcom/duoku/platform/download/mode/InstallPacket;->downloadUrl:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 153
    if-nez p1, :cond_5

    .line 166
    :cond_4
    :goto_4
    return v0

    .line 157
    :cond_5
    if-ne p0, p1, :cond_9

    move v0, v1

    .line 159
    goto :goto_4

    .line 161
    :cond_9
    check-cast p1, Lcom/duoku/platform/download/mode/InstallPacket;

    .line 162
    iget-object v2, p1, Lcom/duoku/platform/download/mode/InstallPacket;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/download/mode/InstallPacket;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 164
    goto :goto_4
.end method

.method public getCallback()Lcom/duoku/platform/download/utils/AppSilentInstaller$PackageInstallerCallback;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->callback:Lcom/duoku/platform/download/utils/AppSilentInstaller$PackageInstallerCallback;

    return-object v0
.end method

.method public getDownloadId()J
    .registers 3

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->downloadId:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorReason()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->errorReason:I

    return v0
.end method

.method public getFilepath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->filepath:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->status:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 143
    .line 145
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->filepath:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v1

    :goto_6
    add-int/lit8 v0, v0, 0x1f

    .line 146
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/duoku/platform/download/mode/InstallPacket;->packageName:Ljava/lang/String;

    if-nez v2, :cond_17

    :goto_e
    add-int/2addr v0, v1

    .line 147
    return v0

    .line 145
    :cond_10
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->filepath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    .line 146
    :cond_17
    iget-object v1, p0, Lcom/duoku/platform/download/mode/InstallPacket;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_e
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->started:Z

    return v0
.end method

.method public setCallback(Lcom/duoku/platform/download/utils/AppSilentInstaller$PackageInstallerCallback;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/duoku/platform/download/mode/InstallPacket;->callback:Lcom/duoku/platform/download/utils/AppSilentInstaller$PackageInstallerCallback;

    .line 118
    return-void
.end method

.method public setDownloadId(J)V
    .registers 4

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/duoku/platform/download/mode/InstallPacket;->downloadId:J

    .line 108
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/duoku/platform/download/mode/InstallPacket;->downloadUrl:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setErrorReason(I)V
    .registers 2

    .prologue
    .line 57
    iput p1, p0, Lcom/duoku/platform/download/mode/InstallPacket;->errorReason:I

    .line 58
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/duoku/platform/download/mode/InstallPacket;->filepath:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/duoku/platform/download/mode/InstallPacket;->gameId:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, Lcom/duoku/platform/download/mode/InstallPacket;->name:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/duoku/platform/download/mode/InstallPacket;->packageName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setStarted(Z)V
    .registers 2

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/duoku/platform/download/mode/InstallPacket;->started:Z

    .line 98
    return-void
.end method

.method public setStatus(Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/duoku/platform/download/mode/InstallPacket;->status:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InstallPacket [packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/download/mode/InstallPacket;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", filepath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/InstallPacket;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", started="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/duoku/platform/download/mode/InstallPacket;->started:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/mode/InstallPacket;->callback:Lcom/duoku/platform/download/utils/AppSilentInstaller$PackageInstallerCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .prologue
    .line 194
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-wide v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->downloadId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 197
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->filepath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->gameId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/duoku/platform/download/mode/InstallPacket;->status:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 202
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 203
    iget-boolean v2, p0, Lcom/duoku/platform/download/mode/InstallPacket;->started:Z

    aput-boolean v2, v0, v1

    .line 205
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 207
    return-void
.end method
