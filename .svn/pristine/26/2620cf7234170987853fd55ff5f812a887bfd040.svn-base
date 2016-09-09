.class final Lcom/baidu/bdgame/sdk/obf/ek$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ek;->a(Landroid/app/Activity;Lcom/baidu/bdgame/sdk/obf/ek$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ek$a;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/baidu/bdgame/sdk/obf/ek$a;)V
    .registers 3

    .prologue
    .line 94
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ek$2;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ek$2;->b:Lcom/baidu/bdgame/sdk/obf/ek$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 96
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ek$2;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 97
    invoke-virtual {v0}, Lcom/alipay/sdk/app/PayTask;->checkAccountIfExist()Z

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ek$2;->b:Lcom/baidu/bdgame/sdk/obf/ek$a;

    if-eqz v1, :cond_14

    .line 99
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ek$2;->b:Lcom/baidu/bdgame/sdk/obf/ek$a;

    invoke-interface {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ek$a;->a(Z)V

    .line 101
    :cond_14
    return-void
.end method
