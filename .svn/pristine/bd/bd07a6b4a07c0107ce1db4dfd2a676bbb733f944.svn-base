.class final Lcom/nearme/game/sdk/b$3;
.super Ljava/lang/Object;
.source "GCInternalImpl.java"

# interfaces
.implements Lcom/nearme/game/sdk/callback/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/game/sdk/b;->a(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/PayInfo;Lcom/nearme/game/sdk/callback/ApiCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/nearme/game/sdk/callback/ApiCallback;

.field private synthetic c:Lcom/nearme/game/sdk/common/model/biz/PayInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/nearme/game/sdk/callback/ApiCallback;Lcom/nearme/game/sdk/common/model/biz/PayInfo;)V
    .registers 4

    .prologue
    .line 188
    iput-object p1, p0, Lcom/nearme/game/sdk/b$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/nearme/game/sdk/b$3;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    iput-object p3, p0, Lcom/nearme/game/sdk/b$3;->c:Lcom/nearme/game/sdk/common/model/biz/PayInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nearme/game/sdk/b$3;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    if-eqz v0, :cond_19

    .line 203
    const v0, 0xa03bba

    if-ne v0, p2, :cond_1a

    .line 204
    iget-object v0, p0, Lcom/nearme/game/sdk/b$3;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    instance-of v0, v0, Lcom/nearme/game/sdk/callback/SinglePayCallback;

    if-eqz v0, :cond_1a

    .line 205
    iget-object v0, p0, Lcom/nearme/game/sdk/b$3;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    check-cast v0, Lcom/nearme/game/sdk/callback/SinglePayCallback;

    iget-object v1, p0, Lcom/nearme/game/sdk/b$3;->c:Lcom/nearme/game/sdk/common/model/biz/PayInfo;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/nearme/game/sdk/callback/SinglePayCallback;->onCallCarrierPay(Lcom/nearme/game/sdk/common/model/biz/PayInfo;Z)V

    .line 211
    :cond_19
    :goto_19
    return-void

    .line 209
    :cond_1a
    iget-object v0, p0, Lcom/nearme/game/sdk/b$3;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-interface {v0, p1, p2}, Lcom/nearme/game/sdk/callback/ApiCallback;->onFailure(Ljava/lang/String;I)V

    goto :goto_19
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    const-string v1, "nearme.pay.response"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v1, "nearme.plugin.aciton.notify.cp_sms_pay"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/nearme/game/sdk/b$3;->a:Landroid/content/Context;

    new-instance v2, Lcom/nearme/game/sdk/component/PayResultReceiver;

    iget-object v3, p0, Lcom/nearme/game/sdk/b$3;->b:Lcom/nearme/game/sdk/callback/ApiCallback;

    invoke-direct {v2, p1, v3, p0}, Lcom/nearme/game/sdk/component/PayResultReceiver;-><init>(Ljava/lang/String;Lcom/nearme/game/sdk/callback/ApiCallback;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    :cond_21
    return-void
.end method
