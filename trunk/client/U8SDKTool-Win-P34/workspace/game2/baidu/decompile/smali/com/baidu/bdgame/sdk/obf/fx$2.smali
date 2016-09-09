.class final Lcom/baidu/bdgame/sdk/obf/fx$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/fx;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/fx;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/fx;)V
    .registers 2

    .prologue
    .line 174
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fx$2;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fx$2;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/fx;->d(Lcom/baidu/bdgame/sdk/obf/fx;)Lcom/baidu/bdgame/sdk/obf/ct;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Landroid/content/BroadcastReceiver;)V

    .line 179
    const-string v0, "RESULT_STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/kk;

    .line 180
    const-string v1, "RESULT_STATUS_DES"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fx$2;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fx$2;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/fx;->c(Lcom/baidu/bdgame/sdk/obf/fx;)Lcom/baidu/bdgame/sdk/obf/ga;

    move-result-object v1

    if-nez v1, :cond_27

    const-string v1, ""

    :goto_23
    invoke-static {v3, v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/fx;->c(Lcom/baidu/bdgame/sdk/obf/fx;Lcom/baidu/bdgame/sdk/obf/kk;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void

    .line 181
    :cond_27
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fx$2;->a:Lcom/baidu/bdgame/sdk/obf/fx;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/fx;->c(Lcom/baidu/bdgame/sdk/obf/fx;)Lcom/baidu/bdgame/sdk/obf/ga;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ga;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_23
.end method
