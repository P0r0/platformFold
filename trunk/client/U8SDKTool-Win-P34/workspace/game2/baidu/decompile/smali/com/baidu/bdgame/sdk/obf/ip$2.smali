.class final Lcom/baidu/bdgame/sdk/obf/ip$2;
.super Lcom/baidu/bdgame/sdk/obf/ip;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ip;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;)V
    .registers 5

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/bdgame/sdk/obf/ip;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/la;Lcom/baidu/bdgame/sdk/obf/ip$1;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/jt;)V
    .registers 3

    .prologue
    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/jt;->a(F)V

    .line 71
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/jt;->d(I)V

    .line 72
    return-void
.end method
