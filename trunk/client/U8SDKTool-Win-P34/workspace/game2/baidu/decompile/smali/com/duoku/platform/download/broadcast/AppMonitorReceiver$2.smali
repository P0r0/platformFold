.class Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->submitIncompleteTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$2;->a:Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;

    .line 293
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 297
    invoke-static {}, Lcom/duoku/platform/download/work/FutureTaskManager;->getInstance()Lcom/duoku/platform/download/work/FutureTaskManager;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcom/duoku/platform/download/work/FutureTaskManager;->submitIncompleteIfNecessary()V

    .line 299
    return-void
.end method
