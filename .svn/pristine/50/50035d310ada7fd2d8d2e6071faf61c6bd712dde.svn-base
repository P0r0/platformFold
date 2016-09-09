.class Lcom/baidu/sapi2/a$42;
.super Ljava/lang/Object;
.source "SapiAccountRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/a;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 4721
    iput-object p1, p0, Lcom/baidu/sapi2/a$42;->b:Lcom/baidu/sapi2/a;

    iput-object p2, p0, Lcom/baidu/sapi2/a$42;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 4724
    iget-object v0, p0, Lcom/baidu/sapi2/a$42;->a:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4725
    return-void
.end method
