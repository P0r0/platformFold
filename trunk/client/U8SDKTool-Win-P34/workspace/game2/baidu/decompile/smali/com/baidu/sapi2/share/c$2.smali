.class final Lcom/baidu/sapi2/share/c$2;
.super Ljava/lang/Object;
.source "ShareUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/share/c;->a(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/b;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/b;)V
    .registers 2

    .prologue
    .line 264
    iput-object p1, p0, Lcom/baidu/sapi2/share/c$2;->a:Lcom/baidu/sapi2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 267
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getSilentShareListener()Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/baidu/sapi2/share/c$2;->a:Lcom/baidu/sapi2/b;

    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 269
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getSilentShareListener()Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;->onSilentShare()V

    .line 271
    :cond_15
    return-void
.end method
