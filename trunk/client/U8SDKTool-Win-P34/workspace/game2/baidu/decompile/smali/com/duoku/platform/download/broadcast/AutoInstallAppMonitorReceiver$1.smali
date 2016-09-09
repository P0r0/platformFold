.class Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;->updateDataIfNecessary(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;

.field private final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver$1;->a:Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver;

    iput-object p2, p0, Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver$1;->b:Landroid/content/Intent;

    .line 55
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/duoku/platform/download/broadcast/AutoInstallAppMonitorReceiver$1;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 61
    return-void
.end method
