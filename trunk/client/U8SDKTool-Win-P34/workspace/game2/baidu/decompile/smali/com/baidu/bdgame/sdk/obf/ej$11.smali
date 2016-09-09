.class final Lcom/baidu/bdgame/sdk/obf/ej$11;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ej;->b(Lcom/baidu/bdgame/sdk/obf/hm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/hm;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ej;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/hm;)V
    .registers 3

    .prologue
    .line 285
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ej$11;->b:Lcom/baidu/bdgame/sdk/obf/ej;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ej$11;->a:Lcom/baidu/bdgame/sdk/obf/hm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ej$11;->b:Lcom/baidu/bdgame/sdk/obf/ej;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ej;->e(Lcom/baidu/bdgame/sdk/obf/ej;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Landroid/content/BroadcastReceiver;)V

    .line 290
    const-string v0, "RESULT_STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/kk;

    .line 291
    const-string v1, ""

    .line 292
    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kk;->d:Lcom/baidu/bdgame/sdk/obf/kk;

    if-ne v0, v2, :cond_1d

    .line 293
    const-string v1, "bdp_passport_pay_cancel"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/mg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    :cond_1d
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ej$11;->b:Lcom/baidu/bdgame/sdk/obf/ej;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ej$11;->a:Lcom/baidu/bdgame/sdk/obf/hm;

    if-nez v2, :cond_29

    const-string v2, ""

    :goto_25
    invoke-static {v3, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ej;->c(Lcom/baidu/bdgame/sdk/obf/ej;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void

    .line 295
    :cond_29
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ej$11;->a:Lcom/baidu/bdgame/sdk/obf/hm;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/hm;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_25
.end method
