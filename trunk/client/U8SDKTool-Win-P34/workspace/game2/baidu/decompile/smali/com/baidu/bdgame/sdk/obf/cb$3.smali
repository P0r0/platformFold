.class final Lcom/baidu/bdgame/sdk/obf/cb$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cb;->f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/o;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/o",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/o;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 2

    .prologue
    .line 321
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cb$3;->a:Lcom/baidu/bdgame/sdk/obf/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 326
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cb$3;->a:Lcom/baidu/bdgame/sdk/obf/o;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/q;->a(Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/q;

    move-result-object v0

    check-cast p3, Lcom/baidu/bdgame/sdk/obf/hz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/q;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 327
    return-void
.end method
