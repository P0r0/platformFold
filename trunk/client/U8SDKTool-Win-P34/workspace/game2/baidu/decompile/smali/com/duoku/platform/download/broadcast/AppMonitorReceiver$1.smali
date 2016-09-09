.class Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->initIfNessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$1;->a:Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;

    .line 263
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Long;
    .registers 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$1;->a:Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;

    # getter for: Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->access$0(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/download/utils/AppManager;->init()V

    .line 269
    invoke-static {}, Lcom/duoku/platform/download/utils/DeviceUtil;->getMaxMemory()J

    .line 270
    invoke-static {}, Lcom/duoku/platform/download/utils/DeviceUtil;->getUsableSpace()J

    move-result-wide v0

    .line 271
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Long;)V
    .registers 6

    .prologue
    .line 276
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x1400000

    cmp-long v0, v0, v2

    if-gez v0, :cond_24

    .line 278
    iget-object v0, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$1;->a:Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;

    # getter for: Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->access$0(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$1;->a:Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;

    # getter for: Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;->access$0(Lcom/duoku/platform/download/broadcast/AppMonitorReceiver;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_sdcard_lack_space"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    .line 282
    :cond_24
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$1;->a([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/download/broadcast/AppMonitorReceiver$1;->a(Ljava/lang/Long;)V

    return-void
.end method
