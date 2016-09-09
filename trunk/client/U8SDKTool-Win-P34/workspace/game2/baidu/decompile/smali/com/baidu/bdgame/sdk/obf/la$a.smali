.class Lcom/baidu/bdgame/sdk/obf/la$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/la;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lcom/baidu/bdgame/sdk/obf/la;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/la;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;-><init>(Lcom/baidu/bdgame/sdk/obf/la$1;)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/la$a;->a:Lcom/baidu/bdgame/sdk/obf/la;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
