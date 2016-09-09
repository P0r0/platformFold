.class public final enum Lcom/alipay/sdk/protocol/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/sdk/protocol/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alipay/sdk/protocol/a;

.field public static final enum b:Lcom/alipay/sdk/protocol/a;

.field public static final enum c:Lcom/alipay/sdk/protocol/a;

.field private static final synthetic e:[Lcom/alipay/sdk/protocol/a;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/alipay/sdk/protocol/a;

    const-string v1, "None"

    const-string v2, "none"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/sdk/protocol/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/a;->a:Lcom/alipay/sdk/protocol/a;

    new-instance v0, Lcom/alipay/sdk/protocol/a;

    const-string v1, "WapPay"

    const-string v2, "js://wappay"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/sdk/protocol/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    new-instance v0, Lcom/alipay/sdk/protocol/a;

    const-string v1, "Update"

    const-string v2, "js://update"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/sdk/protocol/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/a;->c:Lcom/alipay/sdk/protocol/a;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/sdk/protocol/a;

    sget-object v1, Lcom/alipay/sdk/protocol/a;->a:Lcom/alipay/sdk/protocol/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/sdk/protocol/a;->c:Lcom/alipay/sdk/protocol/a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/sdk/protocol/a;->e:[Lcom/alipay/sdk/protocol/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/alipay/sdk/protocol/a;->d:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/sdk/protocol/a;
    .registers 7

    .prologue
    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 23
    sget-object v0, Lcom/alipay/sdk/protocol/a;->a:Lcom/alipay/sdk/protocol/a;

    .line 33
    :cond_8
    :goto_8
    return-object v0

    .line 26
    :cond_9
    sget-object v1, Lcom/alipay/sdk/protocol/a;->a:Lcom/alipay/sdk/protocol/a;

    .line 27
    invoke-static {}, Lcom/alipay/sdk/protocol/a;->values()[Lcom/alipay/sdk/protocol/a;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_12
    if-ge v2, v4, :cond_22

    aget-object v0, v3, v2

    .line 28
    iget-object v5, v0, Lcom/alipay/sdk/protocol/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    :cond_22
    move-object v0, v1

    goto :goto_8
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/protocol/a;
    .registers 2

    .prologue
    .line 11
    const-class v0, Lcom/alipay/sdk/protocol/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/a;

    return-object v0
.end method

.method public static values()[Lcom/alipay/sdk/protocol/a;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/alipay/sdk/protocol/a;->e:[Lcom/alipay/sdk/protocol/a;

    invoke-virtual {v0}, [Lcom/alipay/sdk/protocol/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/sdk/protocol/a;

    return-object v0
.end method
