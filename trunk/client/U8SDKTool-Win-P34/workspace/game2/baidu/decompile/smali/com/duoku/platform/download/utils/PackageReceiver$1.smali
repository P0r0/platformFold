.class Lcom/duoku/platform/download/utils/PackageReceiver$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/utils/PackageReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/utils/PackageReceiver;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/utils/PackageReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->a:Lcom/duoku/platform/download/utils/PackageReceiver;

    iput-object p2, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->c:Landroid/content/Intent;

    .line 35
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->a:Lcom/duoku/platform/download/utils/PackageReceiver;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/PackageReceiver;->access$0(Lcom/duoku/platform/download/utils/PackageReceiver;Landroid/content/Context;)V

    .line 43
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->c:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 46
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->a:Lcom/duoku/platform/download/utils/PackageReceiver;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->c:Landroid/content/Intent;

    # invokes: Lcom/duoku/platform/download/utils/PackageReceiver;->onDownloadCompleted(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/PackageReceiver;->access$1(Lcom/duoku/platform/download/utils/PackageReceiver;Landroid/content/Intent;)V

    .line 48
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "37"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->b:Landroid/content/Context;

    const-string v2, "cp_download_finished"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    :cond_30
    :goto_30
    return-void

    .line 51
    :cond_31
    sget-object v1, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_PAUSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 53
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->a:Lcom/duoku/platform/download/utils/PackageReceiver;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->c:Landroid/content/Intent;

    # invokes: Lcom/duoku/platform/download/utils/PackageReceiver;->onDownloadPaused(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/PackageReceiver;->access$2(Lcom/duoku/platform/download/utils/PackageReceiver;Landroid/content/Intent;)V

    goto :goto_30

    .line 76
    :catch_41
    move-exception v0

    goto :goto_30

    .line 56
    :cond_43
    sget-object v1, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_PAUSE_BY_USER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 58
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->a:Lcom/duoku/platform/download/utils/PackageReceiver;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->c:Landroid/content/Intent;

    # invokes: Lcom/duoku/platform/download/utils/PackageReceiver;->onDownloadPausedByUser(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/PackageReceiver;->access$3(Lcom/duoku/platform/download/utils/PackageReceiver;Landroid/content/Intent;)V

    .line 59
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "40"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->b:Landroid/content/Context;

    const-string v2, "cp_download_paused"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_30

    .line 62
    :cond_67
    sget-object v1, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_START:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 64
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->a:Lcom/duoku/platform/download/utils/PackageReceiver;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->c:Landroid/content/Intent;

    # invokes: Lcom/duoku/platform/download/utils/PackageReceiver;->onDownloadStart(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/PackageReceiver;->access$4(Lcom/duoku/platform/download/utils/PackageReceiver;Landroid/content/Intent;)V

    goto :goto_30

    .line 66
    :cond_77
    sget-object v1, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_CANCLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 68
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->a:Lcom/duoku/platform/download/utils/PackageReceiver;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->c:Landroid/content/Intent;

    # invokes: Lcom/duoku/platform/download/utils/PackageReceiver;->onDownloadCancled(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/PackageReceiver;->access$5(Lcom/duoku/platform/download/utils/PackageReceiver;Landroid/content/Intent;)V

    goto :goto_30

    .line 70
    :cond_87
    sget-object v1, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_RUNNING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 72
    iget-object v0, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->a:Lcom/duoku/platform/download/utils/PackageReceiver;

    iget-object v1, p0, Lcom/duoku/platform/download/utils/PackageReceiver$1;->c:Landroid/content/Intent;

    # invokes: Lcom/duoku/platform/download/utils/PackageReceiver;->onDownloading(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/PackageReceiver;->access$6(Lcom/duoku/platform/download/utils/PackageReceiver;Landroid/content/Intent;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_96} :catch_41

    goto :goto_30
.end method
