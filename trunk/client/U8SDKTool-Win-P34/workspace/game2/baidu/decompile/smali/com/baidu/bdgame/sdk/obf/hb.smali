.class public final enum Lcom/baidu/bdgame/sdk/obf/hb;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/hb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/bdgame/sdk/obf/hb;

.field public static final enum b:Lcom/baidu/bdgame/sdk/obf/hb;

.field private static final synthetic c:[Lcom/baidu/bdgame/sdk/obf/hb;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/hb;

    const-string v1, "creditCard"

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/hb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/hb;->a:Lcom/baidu/bdgame/sdk/obf/hb;

    new-instance v0, Lcom/baidu/bdgame/sdk/obf/hb;

    const-string v1, "cashCard"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/hb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/hb;->b:Lcom/baidu/bdgame/sdk/obf/hb;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/bdgame/sdk/obf/hb;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/hb;->a:Lcom/baidu/bdgame/sdk/obf/hb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/hb;->b:Lcom/baidu/bdgame/sdk/obf/hb;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/hb;->c:[Lcom/baidu/bdgame/sdk/obf/hb;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/hb;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/baidu/bdgame/sdk/obf/hb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/hb;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bdgame/sdk/obf/hb;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/hb;->c:[Lcom/baidu/bdgame/sdk/obf/hb;

    invoke-virtual {v0}, [Lcom/baidu/bdgame/sdk/obf/hb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bdgame/sdk/obf/hb;

    return-object v0
.end method
