.class Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$2;
.super Ljava/lang/Object;
.source "FloatWindowsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->startDestroyTask(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;J)V
    .registers 4

    .prologue
    .line 224
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$2;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    iput-wide p2, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$2;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 228
    :try_start_0
    iget-wide v2, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$2;->val$time:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 229
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$2;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    # invokes: Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->destroyFloatView()V
    invoke-static {v1}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->access$200(Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_b

    .line 233
    :goto_a
    return-void

    .line 230
    :catch_b
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "FloatWindowsManager"

    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->getFunctionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method
