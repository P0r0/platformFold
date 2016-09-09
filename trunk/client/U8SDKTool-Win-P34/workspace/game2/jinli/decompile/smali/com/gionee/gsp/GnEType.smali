.class public final enum Lcom/gionee/gsp/GnEType;
.super Ljava/lang/Enum;
.source "GnEType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gionee/gsp/GnEType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMMON:Lcom/gionee/gsp/GnEType;

.field private static final synthetic ENUM$VALUES:[Lcom/gionee/gsp/GnEType;

.field public static final enum GAME:Lcom/gionee/gsp/GnEType;

.field public static final enum GAME_STANDALONE:Lcom/gionee/gsp/GnEType;

.field public static final enum NO_ACCOUNT:Lcom/gionee/gsp/GnEType;

.field public static final enum NO_ACCOUNT_BY_CHANNEL:Lcom/gionee/gsp/GnEType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 11
    new-instance v0, Lcom/gionee/gsp/GnEType;

    const-string v1, "GAME"

    .line 13
    invoke-direct {v0, v1, v7, v3}, Lcom/gionee/gsp/GnEType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gionee/gsp/GnEType;->GAME:Lcom/gionee/gsp/GnEType;

    .line 14
    new-instance v0, Lcom/gionee/gsp/GnEType;

    const-string v1, "COMMON"

    .line 15
    invoke-direct {v0, v1, v3, v4}, Lcom/gionee/gsp/GnEType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gionee/gsp/GnEType;->COMMON:Lcom/gionee/gsp/GnEType;

    .line 16
    new-instance v0, Lcom/gionee/gsp/GnEType;

    const-string v1, "GAME_STANDALONE"

    .line 17
    invoke-direct {v0, v1, v4, v5}, Lcom/gionee/gsp/GnEType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gionee/gsp/GnEType;->GAME_STANDALONE:Lcom/gionee/gsp/GnEType;

    .line 18
    new-instance v0, Lcom/gionee/gsp/GnEType;

    const-string v1, "NO_ACCOUNT"

    .line 19
    invoke-direct {v0, v1, v5, v6}, Lcom/gionee/gsp/GnEType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gionee/gsp/GnEType;->NO_ACCOUNT:Lcom/gionee/gsp/GnEType;

    .line 20
    new-instance v0, Lcom/gionee/gsp/GnEType;

    const-string v1, "NO_ACCOUNT_BY_CHANNEL"

    .line 21
    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/gionee/gsp/GnEType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gionee/gsp/GnEType;->NO_ACCOUNT_BY_CHANNEL:Lcom/gionee/gsp/GnEType;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/gionee/gsp/GnEType;

    sget-object v1, Lcom/gionee/gsp/GnEType;->GAME:Lcom/gionee/gsp/GnEType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/gionee/gsp/GnEType;->COMMON:Lcom/gionee/gsp/GnEType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gionee/gsp/GnEType;->GAME_STANDALONE:Lcom/gionee/gsp/GnEType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gionee/gsp/GnEType;->NO_ACCOUNT:Lcom/gionee/gsp/GnEType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gionee/gsp/GnEType;->NO_ACCOUNT_BY_CHANNEL:Lcom/gionee/gsp/GnEType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/gionee/gsp/GnEType;->ENUM$VALUES:[Lcom/gionee/gsp/GnEType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/gionee/gsp/GnEType;->value:I

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gionee/gsp/GnEType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/gionee/gsp/GnEType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gionee/gsp/GnEType;

    return-object v0
.end method

.method public static values()[Lcom/gionee/gsp/GnEType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/gionee/gsp/GnEType;->ENUM$VALUES:[Lcom/gionee/gsp/GnEType;

    array-length v1, v0

    new-array v2, v1, [Lcom/gionee/gsp/GnEType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, Lcom/gionee/gsp/GnEType;->value:I

    return v0
.end method
