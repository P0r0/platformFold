.class Lcom/baidu/bdgame/sdk/obf/at$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lcom/baidu/bdgame/sdk/obf/at;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/at;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/at;-><init>(Lcom/baidu/bdgame/sdk/obf/at$1;)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/at$a;->a:Lcom/baidu/bdgame/sdk/obf/at;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
