.class public final enum Lcom/baidu/bdgame/sdk/obf/iy$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/iy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/iy$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/bdgame/sdk/obf/iy$a;

.field public static final enum b:Lcom/baidu/bdgame/sdk/obf/iy$a;

.field private static final synthetic c:[Lcom/baidu/bdgame/sdk/obf/iy$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/iy$a;

    const-string v1, "Original_Voucher"

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/iy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/iy$a;->a:Lcom/baidu/bdgame/sdk/obf/iy$a;

    .line 60
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/iy$a;

    const-string v1, "Balance_Voucher"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/iy$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/iy$a;->b:Lcom/baidu/bdgame/sdk/obf/iy$a;

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/bdgame/sdk/obf/iy$a;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/iy$a;->a:Lcom/baidu/bdgame/sdk/obf/iy$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/iy$a;->b:Lcom/baidu/bdgame/sdk/obf/iy$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/iy$a;->c:[Lcom/baidu/bdgame/sdk/obf/iy$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/iy$a;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/baidu/bdgame/sdk/obf/iy$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/iy$a;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bdgame/sdk/obf/iy$a;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/iy$a;->c:[Lcom/baidu/bdgame/sdk/obf/iy$a;

    invoke-virtual {v0}, [Lcom/baidu/bdgame/sdk/obf/iy$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bdgame/sdk/obf/iy$a;

    return-object v0
.end method
