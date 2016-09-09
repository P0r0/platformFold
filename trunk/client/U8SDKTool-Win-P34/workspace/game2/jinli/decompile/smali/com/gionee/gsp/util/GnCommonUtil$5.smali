.class Lcom/gionee/gsp/util/GnCommonUtil$5;
.super Ljava/lang/Thread;
.source "GnCommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/util/GnCommonUtil;->checkCurrentAppIsTopApp(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/util/GnCommonUtil$5;->val$context:Landroid/content/Context;

    .line 1353
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1357
    :cond_0
    const-wide/16 v2, 0x12c

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_11

    .line 1362
    :goto_5
    iget-object v2, p0, Lcom/gionee/gsp/util/GnCommonUtil$5;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/gionee/gsp/util/GnCommonUtil;->isTopApp(Landroid/content/Context;)Z

    move-result v1

    .line 1363
    .local v1, "flag":Z
    if-nez v1, :cond_0

    .line 1364
    const/4 v2, 0x0

    sput-boolean v2, Lcom/gionee/gsp/common/GnCommonConfig;->IS_RUNNING_THREAD:Z

    .line 1372
    return-void

    .line 1358
    .end local v1    # "flag":Z
    :catch_11
    move-exception v0

    .line 1360
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method
