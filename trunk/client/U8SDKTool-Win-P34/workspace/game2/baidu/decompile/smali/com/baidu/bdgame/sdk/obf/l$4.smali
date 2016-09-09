.class final Lcom/baidu/bdgame/sdk/obf/l$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/l;->a(Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/o",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/platformsdk/PayOrderInfo;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/baidu/bdgame/sdk/obf/o;

.field final synthetic e:Lcom/baidu/bdgame/sdk/obf/l;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/l;Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 6

    .prologue
    .line 356
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/l$4;->e:Lcom/baidu/bdgame/sdk/obf/l;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/l$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/l$4;->b:Lcom/baidu/platformsdk/PayOrderInfo;

    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/l$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/bdgame/sdk/obf/l$4;->d:Lcom/baidu/bdgame/sdk/obf/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 356
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/l$4;->a(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 9

    .prologue
    .line 360
    if-nez p1, :cond_10

    .line 361
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/l$4;->e:Lcom/baidu/bdgame/sdk/obf/l;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/l$4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/l$4;->b:Lcom/baidu/platformsdk/PayOrderInfo;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/l$4;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/l$4;->d:Lcom/baidu/bdgame/sdk/obf/o;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/l;->a(Lcom/baidu/bdgame/sdk/obf/l;Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Z

    .line 365
    :cond_f
    :goto_f
    return-void

    .line 362
    :cond_10
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/l$4;->d:Lcom/baidu/bdgame/sdk/obf/o;

    if-eqz v0, :cond_f

    .line 363
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/l$4;->d:Lcom/baidu/bdgame/sdk/obf/o;

    const/16 v1, -0xbba

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/l$4;->a:Landroid/content/Context;

    const-string v3, "bdp_account_authenticate_failed"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/o;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_f
.end method
