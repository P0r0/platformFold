.class public Lcom/duoku/platform/download/utils/CustomToast;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static toast:Lcom/duoku/platform/download/utils/CustomToast;


# instance fields
.field private handler:Landroid/os/Handler;

.field private mLock:[Ljava/lang/Boolean;

.field private preToast:Ljava/lang/String;

.field private showToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/duoku/platform/download/utils/CustomToast;->toast:Lcom/duoku/platform/download/utils/CustomToast;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/download/utils/CustomToast;->showToast:Landroid/widget/Toast;

    .line 17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/duoku/platform/download/utils/CustomToast;->mLock:[Ljava/lang/Boolean;

    .line 20
    new-instance v0, Lcom/duoku/platform/download/utils/CustomToast$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/utils/CustomToast$1;-><init>(Lcom/duoku/platform/download/utils/CustomToast;)V

    iput-object v0, p0, Lcom/duoku/platform/download/utils/CustomToast;->handler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/duoku/platform/download/utils/CustomToast;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 18
    iput-object p1, p0, Lcom/duoku/platform/download/utils/CustomToast;->preToast:Ljava/lang/String;

    return-void
.end method

.method public static cancel()V
    .registers 1

    .prologue
    .line 83
    sget-object v0, Lcom/duoku/platform/download/utils/CustomToast;->toast:Lcom/duoku/platform/download/utils/CustomToast;

    if-eqz v0, :cond_9

    .line 85
    sget-object v0, Lcom/duoku/platform/download/utils/CustomToast;->toast:Lcom/duoku/platform/download/utils/CustomToast;

    invoke-direct {v0}, Lcom/duoku/platform/download/utils/CustomToast;->toastCancel()V

    .line 87
    :cond_9
    return-void
.end method

.method private show(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 34
    iget-object v1, p0, Lcom/duoku/platform/download/utils/CustomToast;->mLock:[Ljava/lang/Boolean;

    monitor-enter v1

    .line 36
    if-eqz p1, :cond_d

    :try_start_5
    iget-object v0, p0, Lcom/duoku/platform/download/utils/CustomToast;->preToast:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_d
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->isAppForeground()Z

    move-result v0

    if-nez v0, :cond_15

    .line 38
    :cond_13
    monitor-exit v1

    .line 50
    :goto_14
    return-void

    .line 41
    :cond_15
    invoke-direct {p0}, Lcom/duoku/platform/download/utils/CustomToast;->toastCancel()V

    .line 43
    invoke-static {}, Lcom/duoku/platform/download/utils/AppUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/utils/CustomToast;->showToast:Landroid/widget/Toast;

    .line 44
    iget-object v0, p0, Lcom/duoku/platform/download/utils/CustomToast;->showToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    iget-object v0, p0, Lcom/duoku/platform/download/utils/CustomToast;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 48
    iput-object p1, p0, Lcom/duoku/platform/download/utils/CustomToast;->preToast:Ljava/lang/String;

    .line 34
    monitor-exit v1

    goto :goto_14

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public static showToast(I)V
    .registers 3

    .prologue
    .line 73
    sget-object v0, Lcom/duoku/platform/download/utils/CustomToast;->toast:Lcom/duoku/platform/download/utils/CustomToast;

    if-nez v0, :cond_b

    .line 75
    new-instance v0, Lcom/duoku/platform/download/utils/CustomToast;

    invoke-direct {v0}, Lcom/duoku/platform/download/utils/CustomToast;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/utils/CustomToast;->toast:Lcom/duoku/platform/download/utils/CustomToast;

    .line 78
    :cond_b
    sget-object v0, Lcom/duoku/platform/download/utils/CustomToast;->toast:Lcom/duoku/platform/download/utils/CustomToast;

    invoke-static {p0}, Lcom/duoku/platform/download/utils/AppUtil;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/duoku/platform/download/utils/CustomToast;->show(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static showToast(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 63
    sget-object v0, Lcom/duoku/platform/download/utils/CustomToast;->toast:Lcom/duoku/platform/download/utils/CustomToast;

    if-nez v0, :cond_b

    .line 65
    new-instance v0, Lcom/duoku/platform/download/utils/CustomToast;

    invoke-direct {v0}, Lcom/duoku/platform/download/utils/CustomToast;-><init>()V

    sput-object v0, Lcom/duoku/platform/download/utils/CustomToast;->toast:Lcom/duoku/platform/download/utils/CustomToast;

    .line 68
    :cond_b
    sget-object v0, Lcom/duoku/platform/download/utils/CustomToast;->toast:Lcom/duoku/platform/download/utils/CustomToast;

    invoke-direct {v0, p0}, Lcom/duoku/platform/download/utils/CustomToast;->show(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private toastCancel()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/duoku/platform/download/utils/CustomToast;->showToast:Landroid/widget/Toast;

    if-eqz v0, :cond_c

    .line 56
    iget-object v0, p0, Lcom/duoku/platform/download/utils/CustomToast;->showToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/download/utils/CustomToast;->showToast:Landroid/widget/Toast;

    .line 59
    :cond_c
    return-void
.end method
