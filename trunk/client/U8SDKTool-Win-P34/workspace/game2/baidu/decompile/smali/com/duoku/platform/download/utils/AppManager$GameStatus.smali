.class public final enum Lcom/duoku/platform/download/utils/AppManager$GameStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/utils/AppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoku/platform/download/utils/AppManager$GameStatus;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum DONWLOADED:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

.field public static final enum DOWNLOADING:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/duoku/platform/download/utils/AppManager$GameStatus;

.field public static final enum INSTALLED:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

.field public static final enum UNDOWNLOAD:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

.field public static final enum UPDATABLE:Lcom/duoku/platform/download/utils/AppManager$GameStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    new-instance v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    const-string v1, "UPDATABLE"

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/download/utils/AppManager$GameStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->UPDATABLE:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    .line 270
    new-instance v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v3}, Lcom/duoku/platform/download/utils/AppManager$GameStatus;-><init>(Ljava/lang/String;I)V

    .line 273
    sput-object v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->INSTALLED:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    .line 274
    new-instance v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v4}, Lcom/duoku/platform/download/utils/AppManager$GameStatus;-><init>(Ljava/lang/String;I)V

    .line 277
    sput-object v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->DOWNLOADING:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    .line 279
    new-instance v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    const-string v1, "DONWLOADED"

    invoke-direct {v0, v1, v5}, Lcom/duoku/platform/download/utils/AppManager$GameStatus;-><init>(Ljava/lang/String;I)V

    .line 282
    sput-object v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->DONWLOADED:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    .line 283
    new-instance v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    const-string v1, "UNDOWNLOAD"

    invoke-direct {v0, v1, v6}, Lcom/duoku/platform/download/utils/AppManager$GameStatus;-><init>(Ljava/lang/String;I)V

    .line 286
    sput-object v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->UNDOWNLOAD:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    .line 267
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    sget-object v1, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->UPDATABLE:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->INSTALLED:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->DOWNLOADING:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->DONWLOADED:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->UNDOWNLOAD:Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->ENUM$VALUES:[Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoku/platform/download/utils/AppManager$GameStatus;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    return-object v0
.end method

.method public static values()[Lcom/duoku/platform/download/utils/AppManager$GameStatus;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/duoku/platform/download/utils/AppManager$GameStatus;->ENUM$VALUES:[Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/duoku/platform/download/utils/AppManager$GameStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
