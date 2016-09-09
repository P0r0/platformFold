.class Lcom/duoku/platform/download/mode/InstallPacket$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/mode/InstallPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/duoku/platform/download/mode/InstallPacket;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/duoku/platform/download/mode/InstallPacket;
    .registers 6

    .prologue
    .line 214
    new-instance v1, Lcom/duoku/platform/download/mode/InstallPacket;

    invoke-direct {v1}, Lcom/duoku/platform/download/mode/InstallPacket;-><init>()V

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/duoku/platform/download/mode/InstallPacket;->name:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/duoku/platform/download/mode/InstallPacket;->packageName:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/duoku/platform/download/mode/InstallPacket;->downloadId:J

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/duoku/platform/download/mode/InstallPacket;->filepath:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/duoku/platform/download/mode/InstallPacket;->gameId:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/duoku/platform/download/mode/InstallPacket;->downloadUrl:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    iput-object v0, v1, Lcom/duoku/platform/download/mode/InstallPacket;->status:Lcom/duoku/platform/download/utils/AppSilentInstaller$InstallStatus;

    .line 222
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 223
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 224
    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    iput-boolean v0, v1, Lcom/duoku/platform/download/mode/InstallPacket;->started:Z

    .line 225
    return-object v1
.end method

.method public a(I)[Lcom/duoku/platform/download/mode/InstallPacket;
    .registers 3

    .prologue
    .line 230
    new-array v0, p1, [Lcom/duoku/platform/download/mode/InstallPacket;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/mode/InstallPacket$1;->a(Landroid/os/Parcel;)Lcom/duoku/platform/download/mode/InstallPacket;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/mode/InstallPacket$1;->a(I)[Lcom/duoku/platform/download/mode/InstallPacket;

    move-result-object v0

    return-object v0
.end method
