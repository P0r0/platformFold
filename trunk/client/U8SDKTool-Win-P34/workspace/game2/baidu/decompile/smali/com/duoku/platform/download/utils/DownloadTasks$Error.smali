.class public final enum Lcom/duoku/platform/download/utils/DownloadTasks$Error;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/utils/DownloadTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoku/platform/download/utils/DownloadTasks$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/duoku/platform/download/utils/DownloadTasks$Error;

.field public static final enum INVALID:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

.field public static final enum NETWORK_NOT_CONNECTED:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

.field public static final enum NETWORK_NOT_WIFI:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

.field public static final enum NONE:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

.field public static final enum SD_SPACE_NOT_ENOUGH:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

.field public static final enum SD_UNMOUNTED:Lcom/duoku/platform/download/utils/DownloadTasks$Error;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 260
    new-instance v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcom/duoku/platform/download/utils/DownloadTasks$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->INVALID:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    new-instance v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/duoku/platform/download/utils/DownloadTasks$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->NONE:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    new-instance v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    const-string v1, "SD_UNMOUNTED"

    invoke-direct {v0, v1, v5}, Lcom/duoku/platform/download/utils/DownloadTasks$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->SD_UNMOUNTED:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    new-instance v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    const-string v1, "SD_SPACE_NOT_ENOUGH"

    invoke-direct {v0, v1, v6}, Lcom/duoku/platform/download/utils/DownloadTasks$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->SD_SPACE_NOT_ENOUGH:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    new-instance v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    const-string v1, "NETWORK_NOT_WIFI"

    invoke-direct {v0, v1, v7}, Lcom/duoku/platform/download/utils/DownloadTasks$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->NETWORK_NOT_WIFI:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    new-instance v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    const-string v1, "NETWORK_NOT_CONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/utils/DownloadTasks$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->NETWORK_NOT_CONNECTED:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    .line 258
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    sget-object v1, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->INVALID:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->NONE:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->SD_UNMOUNTED:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->SD_SPACE_NOT_ENOUGH:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->NETWORK_NOT_WIFI:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->NETWORK_NOT_CONNECTED:Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->ENUM$VALUES:[Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoku/platform/download/utils/DownloadTasks$Error;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    return-object v0
.end method

.method public static values()[Lcom/duoku/platform/download/utils/DownloadTasks$Error;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/duoku/platform/download/utils/DownloadTasks$Error;->ENUM$VALUES:[Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    array-length v1, v0

    new-array v2, v1, [Lcom/duoku/platform/download/utils/DownloadTasks$Error;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
