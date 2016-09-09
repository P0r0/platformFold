.class public final enum Lcom/baidu/bdgame/sdk/obf/kk;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/kk;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/bdgame/sdk/obf/kk;

.field public static final enum b:Lcom/baidu/bdgame/sdk/obf/kk;

.field public static final enum c:Lcom/baidu/bdgame/sdk/obf/kk;

.field public static final enum d:Lcom/baidu/bdgame/sdk/obf/kk;

.field public static final enum e:Lcom/baidu/bdgame/sdk/obf/kk;

.field private static final synthetic f:[Lcom/baidu/bdgame/sdk/obf/kk;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kk;

    const-string v1, "success"

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/kk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->a:Lcom/baidu/bdgame/sdk/obf/kk;

    .line 18
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kk;

    const-string v1, "fail"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/kk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    .line 23
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kk;

    const-string v1, "submit"

    invoke-direct {v0, v1, v4}, Lcom/baidu/bdgame/sdk/obf/kk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->c:Lcom/baidu/bdgame/sdk/obf/kk;

    .line 28
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kk;

    const-string v1, "cancel"

    invoke-direct {v0, v1, v5}, Lcom/baidu/bdgame/sdk/obf/kk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->d:Lcom/baidu/bdgame/sdk/obf/kk;

    .line 33
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kk;

    const-string v1, "notSupport"

    invoke-direct {v0, v1, v6}, Lcom/baidu/bdgame/sdk/obf/kk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->e:Lcom/baidu/bdgame/sdk/obf/kk;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/bdgame/sdk/obf/kk;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->a:Lcom/baidu/bdgame/sdk/obf/kk;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->b:Lcom/baidu/bdgame/sdk/obf/kk;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->c:Lcom/baidu/bdgame/sdk/obf/kk;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->d:Lcom/baidu/bdgame/sdk/obf/kk;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/kk;->e:Lcom/baidu/bdgame/sdk/obf/kk;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->f:[Lcom/baidu/bdgame/sdk/obf/kk;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/kk;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/baidu/bdgame/sdk/obf/kk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/kk;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bdgame/sdk/obf/kk;
    .registers 1

    .prologue
    .line 8
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kk;->f:[Lcom/baidu/bdgame/sdk/obf/kk;

    invoke-virtual {v0}, [Lcom/baidu/bdgame/sdk/obf/kk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bdgame/sdk/obf/kk;

    return-object v0
.end method
