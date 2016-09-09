.class public final enum Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

.field public static final enum STATUS_FAILED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

.field public static final enum STATUS_PAUSED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

.field public static final enum STATUS_PENDING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

.field public static final enum STATUS_RUNNING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

.field public static final enum STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    const-string v1, "STATUS_PENDING"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;-><init>(Ljava/lang/String;I)V

    .line 197
    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_PENDING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    .line 198
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    const-string v1, "STATUS_RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;-><init>(Ljava/lang/String;I)V

    .line 201
    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_RUNNING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    .line 202
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    const-string v1, "STATUS_PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;-><init>(Ljava/lang/String;I)V

    .line 205
    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_PAUSED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    .line 207
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    const-string v1, "STATUS_SUCCESSFUL"

    invoke-direct {v0, v1, v5}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;-><init>(Ljava/lang/String;I)V

    .line 210
    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    .line 211
    new-instance v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    const-string v1, "STATUS_FAILED"

    invoke-direct {v0, v1, v6}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;-><init>(Ljava/lang/String;I)V

    .line 214
    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_FAILED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    .line 192
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_PENDING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_RUNNING:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_PAUSED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_FAILED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->ENUM$VALUES:[Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 222
    :try_start_3
    invoke-virtual {p0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->name()Ljava/lang/String;

    move-result-object v0

    .line 223
    const-class v1, Lcom/duoku/platform/download/DownloadManager;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 224
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 225
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 226
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->code:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_1f

    .line 231
    :goto_1e
    return-void

    .line 228
    :catch_1f
    move-exception v0

    goto :goto_1e
.end method

.method static getStatus(I)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;
    .registers 6

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    invoke-static {}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->values()[Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v2

    .line 242
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_9
    array-length v3, v2

    if-lt v1, v3, :cond_d

    .line 249
    return-object v0

    .line 244
    :cond_d
    aget-object v3, v2, v1

    iget v3, v3, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->code:I

    if-ne p0, v3, :cond_15

    .line 246
    aget-object v0, v2, v1

    .line 242
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    return-object v0
.end method

.method public static values()[Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->ENUM$VALUES:[Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getStatusCode()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->code:I

    return v0
.end method
