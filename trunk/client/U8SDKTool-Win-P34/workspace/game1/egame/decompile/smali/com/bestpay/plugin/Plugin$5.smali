.class Lcom/bestpay/plugin/Plugin$5;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Lcom/bestpay/plugin/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bestpay/plugin/Plugin;->pay(Landroid/content/Context;Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public execute()Z
    .registers 2

    .prologue
    .line 448
    sget-object v0, Lcom/bestpay/plugin/Plugin;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 449
    sget-object v0, Lcom/bestpay/plugin/Plugin;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 451
    :cond_9
    sget-boolean v0, Lcom/bestpay/plugin/Plugin;->isUpdate:Z

    return v0
.end method
