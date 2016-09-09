.class Lcom/duoku/platform/download/PackageMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/PackageMode;
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
        "Lcom/duoku/platform/download/PackageMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/duoku/platform/download/PackageMode;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 324
    new-instance v1, Lcom/duoku/platform/download/PackageMode;

    invoke-direct {v1}, Lcom/duoku/platform/download/PackageMode;-><init>()V

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/duoku/platform/download/PackageMode;->title:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/duoku/platform/download/PackageMode;->packageName:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/duoku/platform/download/PackageMode;->version:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/duoku/platform/download/PackageMode;->versionCode:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_79

    :goto_58
    iput-boolean v0, v1, Lcom/duoku/platform/download/PackageMode;->isDiffDownload:Z

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/duoku/platform/download/PackageMode;->totalApkSize:J

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/duoku/platform/download/PackageMode;->pacthSize:J

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/duoku/platform/download/PackageMode;->localVersion:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/duoku/platform/download/PackageMode;->localVersionCode:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/duoku/platform/download/PackageMode;->mergeFailedCount:I

    .line 350
    return-object v1

    .line 341
    :cond_79
    const/4 v0, 0x0

    goto :goto_58
.end method

.method public a(I)[Lcom/duoku/platform/download/PackageMode;
    .registers 3

    .prologue
    .line 356
    new-array v0, p1, [Lcom/duoku/platform/download/PackageMode;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/PackageMode$1;->a(Landroid/os/Parcel;)Lcom/duoku/platform/download/PackageMode;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/PackageMode$1;->a(I)[Lcom/duoku/platform/download/PackageMode;

    move-result-object v0

    return-object v0
.end method
