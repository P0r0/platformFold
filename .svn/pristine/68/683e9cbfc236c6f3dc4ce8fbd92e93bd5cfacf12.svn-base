.class public Lcom/duoku/platform/download/PackageMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CHECKING:I = 0x40000

.field public static final CHECKING_FINISHED:I = 0x80000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/duoku/platform/download/PackageMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_STATUS:I = 0x0

.field public static final DOWNLOADED:I = 0x40

.field public static final DOWNLOADED_DIFFERENT_SIGN:I = 0x8000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DOWNLOAD_FAILED:I = 0x20

.field public static final DOWNLOAD_PAUSED:I = 0x10

.field public static final DOWNLOAD_PENDING:I = 0x4

.field public static final DOWNLOAD_RUNNING:I = 0x8

.field public static final ERROR_DATABASE_ERROR:I = 0x7d5

.field public static final ERROR_DEVICE_NOT_FOUND:I = 0x3eb

.field public static final ERROR_FILE_ERROR:I = 0x3e9

.field public static final ERROR_HTTP_ERROR:I = 0x3e8

.field public static final ERROR_INSUFFICIENT_SPACE:I = 0x3ea

.field public static final ERROR_PARAM_ERROR:I = 0x7d4

.field public static final ERROR_PARAM_NO_GAME_ID:I = 0x7d1

.field public static final ERROR_PARAM_NO_PACKAGE_NAME:I = 0x7d2

.field public static final ERROR_PARAM_NO_URL:I = 0x7d0

.field public static final ERROR_PARAM_NO_VERSION:I = 0x7d3

.field public static final ERROR_UNKNOWN:I = 0x3ec

.field public static final INSTALLED:I = 0x1000

.field public static final INSTALLING:I = 0x400

.field public static final INSTALL_FAILED:I = 0x800

.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5

.field public static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field public static final INSTALL_FAILED_MISSING_FEATURE:I = -0x11

.field public static final INSTALL_FAILED_OLDER_SDK:I = -0xc

.field public static final INSTALL_FAILED_OTHER:I = -0x3e7

.field public static final INSTALL_FAILED_PERMISSION:I = -0x64

.field public static final MERGED:I = 0x200

.field public static final MERGED_DIFFERENT_SIGN:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MERGE_ERROR_INSUFFICIENT_SPACE:I = 0xbb8

.field public static final MERGE_ERROR_OTHER:I = 0xbba

.field public static final MERGE_FAILED:I = 0x100

.field public static final MERGING:I = 0x80

.field public static final PAUSED_BY_APP:I = 0x323

.field public static final PAUSED_QUEUED_FOR_WIFI:I = 0x322

.field public static final PAUSED_UNKNOWN:I = 0x324

.field public static final PAUSED_WAITING_FOR_NETWORK:I = 0x321

.field public static final PAUSED_WAITING_TO_RETRY:I = 0x320

.field public static final RESET_STATUS:I = 0x20000

.field public static final UNDOWNLOAD:I = 0x0

.field public static final UPDATABLE:I = 0x2000

.field public static final UPDATABLE_DIFF:I = 0x4000

.field private static final serialVersionUID:J = -0x4d83a0d71e36e917L


# instance fields
.field public currentSize:J

.field public downloadDest:Ljava/lang/String;

.field public downloadId:J

.field public downloadUrl:Ljava/lang/String;

.field public gameId:Ljava/lang/String;

.field public isDiffDownload:Z

.field public localVersion:Ljava/lang/String;

.field public localVersionCode:I

.field public mergeFailedCount:I

.field public packageName:Ljava/lang/String;

.field public pacthSize:J

.field public reason:Ljava/lang/Integer;

.field public status:I

.field public title:Ljava/lang/String;

.field public totalApkSize:J

.field public totalSize:J

.field public version:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 318
    new-instance v0, Lcom/duoku/platform/download/PackageMode$1;

    invoke-direct {v0}, Lcom/duoku/platform/download/PackageMode$1;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/PackageMode;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 359
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    .line 248
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    .line 260
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;JJZ)V
    .registers 21

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    .line 248
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    .line 267
    iput-object p1, p0, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    .line 268
    iput-object p2, p0, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    .line 269
    iput-object p3, p0, Lcom/duoku/platform/download/PackageMode;->packageName:Ljava/lang/String;

    .line 270
    iput-object p4, p0, Lcom/duoku/platform/download/PackageMode;->version:Ljava/lang/String;

    .line 271
    iput p5, p0, Lcom/duoku/platform/download/PackageMode;->versionCode:I

    .line 272
    iput-wide p6, p0, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    .line 273
    iput-object p8, p0, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    .line 274
    iput-object p9, p0, Lcom/duoku/platform/download/PackageMode;->title:Ljava/lang/String;

    .line 275
    iput p10, p0, Lcom/duoku/platform/download/PackageMode;->status:I

    .line 276
    iput-object p11, p0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    .line 277
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    .line 278
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    .line 281
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/duoku/platform/download/PackageMode;->isDiffDownload:Z

    .line 282
    return-void
.end method

.method public static getStatusString(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 372
    const-string v0, "null"

    .line 373
    sparse-switch p0, :sswitch_data_3c

    .line 432
    :goto_5
    return-object v0

    .line 376
    :sswitch_6
    const-string v0, "UNDOWNLOAD"

    goto :goto_5

    .line 379
    :sswitch_9
    const-string v0, "DOWNLOAD_PENDING"

    goto :goto_5

    .line 382
    :sswitch_c
    const-string v0, "DOWNLOAD_RUNNING"

    goto :goto_5

    .line 385
    :sswitch_f
    const-string v0, "DOWNLOAD_PAUSED"

    goto :goto_5

    .line 388
    :sswitch_12
    const-string v0, "DOWNLOAD_FAILED"

    goto :goto_5

    .line 391
    :sswitch_15
    const-string v0, "DOWNLOADED"

    goto :goto_5

    .line 394
    :sswitch_18
    const-string v0, "MERGING"

    goto :goto_5

    .line 397
    :sswitch_1b
    const-string v0, "MERGE_FAILED"

    goto :goto_5

    .line 400
    :sswitch_1e
    const-string v0, "MERGED"

    goto :goto_5

    .line 403
    :sswitch_21
    const-string v0, "INSTALLING"

    goto :goto_5

    .line 406
    :sswitch_24
    const-string v0, "INSTALL_FAILED"

    goto :goto_5

    .line 409
    :sswitch_27
    const-string v0, "INSTALLED"

    goto :goto_5

    .line 412
    :sswitch_2a
    const-string v0, "UPDATABLE"

    goto :goto_5

    .line 415
    :sswitch_2d
    const-string v0, "UPDATABLE_DIFF"

    goto :goto_5

    .line 418
    :sswitch_30
    const-string v0, "DOWNLOADED_DIFFERENT_SIGN"

    goto :goto_5

    .line 421
    :sswitch_33
    const-string v0, "DOWNLOADED_DIFFERENT_SIGN"

    goto :goto_5

    .line 424
    :sswitch_36
    const-string v0, "CHECKING"

    goto :goto_5

    .line 427
    :sswitch_39
    const-string v0, "CHECKING_FINISHED"

    goto :goto_5

    .line 373
    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_6
        0x4 -> :sswitch_9
        0x8 -> :sswitch_c
        0x10 -> :sswitch_f
        0x20 -> :sswitch_12
        0x40 -> :sswitch_15
        0x80 -> :sswitch_18
        0x100 -> :sswitch_1b
        0x200 -> :sswitch_1e
        0x400 -> :sswitch_21
        0x800 -> :sswitch_24
        0x1000 -> :sswitch_27
        0x2000 -> :sswitch_2a
        0x4000 -> :sswitch_2d
        0x8000 -> :sswitch_30
        0x10000 -> :sswitch_33
        0x40000 -> :sswitch_36
        0x80000 -> :sswitch_39
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PackageMode [gameId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/PackageMode;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/PackageMode;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/download/PackageMode;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/duoku/platform/download/PackageMode;->localVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/download/PackageMode;->localVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadDest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/PackageMode;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDiffDownload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/duoku/platform/download/PackageMode;->isDiffDownload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 366
    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/download/PackageMode;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalApkSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/PackageMode;->totalApkSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pacthSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/duoku/platform/download/PackageMode;->pacthSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .prologue
    .line 293
    iget-object v0, p0, Lcom/duoku/platform/download/PackageMode;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/duoku/platform/download/PackageMode;->gameId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/duoku/platform/download/PackageMode;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/duoku/platform/download/PackageMode;->downloadDest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/duoku/platform/download/PackageMode;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/duoku/platform/download/PackageMode;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget v0, p0, Lcom/duoku/platform/download/PackageMode;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-wide v0, p0, Lcom/duoku/platform/download/PackageMode;->downloadId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 301
    iget v0, p0, Lcom/duoku/platform/download/PackageMode;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget-object v0, p0, Lcom/duoku/platform/download/PackageMode;->reason:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-wide v0, p0, Lcom/duoku/platform/download/PackageMode;->currentSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 305
    iget-wide v0, p0, Lcom/duoku/platform/download/PackageMode;->totalSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 309
    iget-boolean v0, p0, Lcom/duoku/platform/download/PackageMode;->isDiffDownload:Z

    if-eqz v0, :cond_62

    const/4 v0, 0x1

    :goto_45
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget-wide v0, p0, Lcom/duoku/platform/download/PackageMode;->totalApkSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 311
    iget-wide v0, p0, Lcom/duoku/platform/download/PackageMode;->pacthSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 313
    iget-object v0, p0, Lcom/duoku/platform/download/PackageMode;->localVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    iget v0, p0, Lcom/duoku/platform/download/PackageMode;->localVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget v0, p0, Lcom/duoku/platform/download/PackageMode;->mergeFailedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    return-void

    .line 309
    :cond_62
    const/4 v0, 0x0

    goto :goto_45
.end method
