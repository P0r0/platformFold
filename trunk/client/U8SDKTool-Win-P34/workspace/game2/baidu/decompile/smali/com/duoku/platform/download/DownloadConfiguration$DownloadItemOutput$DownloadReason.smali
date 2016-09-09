.class public final enum Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL_UPDATE:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

.field private static final synthetic ENUM$VALUES:[Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

.field public static final enum ERROR_DEVICE_NOT_FOUND:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

.field public static final enum ERROR_FILE_ALREADY_EXISTS:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

.field public static final enum ERROR_FILE_ERROR:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

.field public static final enum ERROR_HTTP_CANNOT_RUSUME:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

.field public static final enum ERROR_HTTP_ERROR:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

.field public static final enum ERROR_HTTP_UNKNOWN:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

.field public static final enum ERROR_INSUFFICIENT_SPACE:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

.field public static final enum ERROR_UNKNOWN:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

.field public static final enum PAUSED_BY_APP:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

.field public static final enum PAUSED_QUEUED_FOR_WIFI:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

.field public static final enum PAUSED_UNKNOWN:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

.field public static final enum PAUSED_WAITING_FOR_NETWORK:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

.field public static final enum PAUSED_WAITING_TO_RETRY:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 263
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    const-string v1, "ERROR_HTTP_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;-><init>(Ljava/lang/String;I)V

    .line 267
    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_HTTP_ERROR:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 271
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    const-string v1, "ERROR_HTTP_CANNOT_RUSUME"

    invoke-direct {v0, v1, v4}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_HTTP_CANNOT_RUSUME:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 272
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    const-string v1, "ERROR_HTTP_UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;-><init>(Ljava/lang/String;I)V

    .line 275
    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_HTTP_UNKNOWN:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 277
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    const-string v1, "ERROR_FILE_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;-><init>(Ljava/lang/String;I)V

    .line 280
    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_FILE_ERROR:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 284
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    const-string v1, "ERROR_INSUFFICIENT_SPACE"

    invoke-direct {v0, v1, v7}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_INSUFFICIENT_SPACE:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 288
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    const-string v1, "ERROR_DEVICE_NOT_FOUND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_DEVICE_NOT_FOUND:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 293
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    const-string v1, "ERROR_FILE_ALREADY_EXISTS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_FILE_ALREADY_EXISTS:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 297
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    const-string v1, "ERROR_UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_UNKNOWN:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 299
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    const-string v1, "CANCEL_UPDATE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->CANCEL_UPDATE:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 301
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    const-string v1, "PAUSED_WAITING_TO_RETRY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;-><init>(Ljava/lang/String;I)V

    .line 307
    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->PAUSED_WAITING_TO_RETRY:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 311
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    const-string v1, "PAUSED_WAITING_FOR_NETWORK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->PAUSED_WAITING_FOR_NETWORK:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 315
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    const-string v1, "PAUSED_QUEUED_FOR_WIFI"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->PAUSED_QUEUED_FOR_WIFI:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 319
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    const-string v1, "PAUSED_BY_APP"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->PAUSED_BY_APP:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 323
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    const-string v1, "PAUSED_UNKNOWN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->PAUSED_UNKNOWN:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 260
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_HTTP_ERROR:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_HTTP_CANNOT_RUSUME:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_HTTP_UNKNOWN:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_FILE_ERROR:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_INSUFFICIENT_SPACE:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_DEVICE_NOT_FOUND:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_FILE_ALREADY_EXISTS:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ERROR_UNKNOWN:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->CANCEL_UPDATE:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->PAUSED_WAITING_TO_RETRY:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->PAUSED_WAITING_FOR_NETWORK:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->PAUSED_QUEUED_FOR_WIFI:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->PAUSED_BY_APP:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->PAUSED_UNKNOWN:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ENUM$VALUES:[Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 327
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 331
    :try_start_3
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->name()Ljava/lang/String;

    move-result-object v0

    .line 332
    const-class v1, Lcom/duoku/platform/download/DownloadManager;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 333
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 334
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 335
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->code:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_1f

    .line 340
    :goto_1e
    return-void

    .line 337
    :catch_1f
    move-exception v0

    goto :goto_1e
.end method

.method static getReason(I)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;
    .registers 6

    .prologue
    .line 354
    const/4 v1, 0x0

    .line 355
    invoke-static {}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->values()[Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    move-result-object v2

    .line 356
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_9
    array-length v3, v2

    if-lt v1, v3, :cond_d

    .line 363
    return-object v0

    .line 358
    :cond_d
    aget-object v3, v2, v1

    iget v3, v3, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->code:I

    if-ne p0, v3, :cond_15

    .line 360
    aget-object v0, v2, v1

    .line 356
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    return-object v0
.end method

.method public static values()[Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->ENUM$VALUES:[Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    array-length v1, v0

    new-array v2, v1, [Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method getReasonCode()I
    .registers 2

    .prologue
    .line 368
    iget v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->code:I

    return v0
.end method

.method getStatusCode()I
    .registers 2

    .prologue
    .line 349
    iget v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;->code:I

    return v0
.end method
