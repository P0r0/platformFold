.class public Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;
.super Ljava/lang/Object;
.source "WaittingDialog.java"


# static fields
.field private static DEFAULT_DELAY_TIME:J

.field private static volatile sInstance:Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mShowProgressDialogRunnable:Ljava/lang/Runnable;

.field private mWaittingDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11
    const-wide/16 v0, 0xc8

    sput-wide v0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->DEFAULT_DELAY_TIME:J

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mHandler:Landroid/os/Handler;

    .line 18
    new-instance v0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog$1;

    invoke-direct {v0, p0}, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog$1;-><init>(Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;)V

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mShowProgressDialogRunnable:Ljava/lang/Runnable;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mWaittingDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private createDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .registers 4
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 61
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;
    .registers 2

    .prologue
    .line 31
    const-class v1, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->sInstance:Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;

    if-nez v0, :cond_e

    .line 32
    new-instance v0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;

    invoke-direct {v0}, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;-><init>()V

    sput-object v0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->sInstance:Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;

    .line 34
    :cond_e
    sget-object v0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->sInstance:Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private showDialog(Landroid/app/Activity;Ljava/lang/CharSequence;J)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "delayMillis"    # J

    .prologue
    .line 42
    sget-wide v0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->DEFAULT_DELAY_TIME:J

    .line 43
    .local v0, "delayTime":J
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mActivity:Landroid/app/Activity;

    .line 44
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mWaittingDialog:Landroid/app/Dialog;

    if-nez v2, :cond_e

    .line 45
    invoke-direct {p0, p2}, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->createDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mWaittingDialog:Landroid/app/Dialog;

    .line 48
    :cond_e
    iget-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mShowProgressDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mShowProgressDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mWaittingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mWaittingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 54
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mWaittingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 56
    :cond_19
    iput-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mActivity:Landroid/app/Activity;

    .line 57
    iput-object v2, p0, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->mWaittingDialog:Landroid/app/Dialog;

    .line 58
    return-void
.end method

.method public showDialog(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    const-string v0, "\u6b63\u5728\u521d\u59cb\u5316AmigoPlay\u5b89\u5168\u63d2\u4ef6..."

    sget-wide v2, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->DEFAULT_DELAY_TIME:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/gionee/game/offlinesdk/upgrade/WaittingDialog;->showDialog(Landroid/app/Activity;Ljava/lang/CharSequence;J)V

    .line 39
    return-void
.end method
