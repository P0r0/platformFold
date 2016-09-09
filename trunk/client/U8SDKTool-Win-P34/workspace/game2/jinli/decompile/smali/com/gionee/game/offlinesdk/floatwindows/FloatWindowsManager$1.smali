.class Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$1;
.super Ljava/lang/Object;
.source "FloatWindowsManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;


# direct methods
.method constructor <init>(Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;)V
    .registers 2

    .prologue
    .line 181
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$1;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    const-string v0, "FloatWindowsManager"

    const-string v1, "onActivityCreated call  showFloat"

    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$1;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    # invokes: Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->showFloat()V
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->access$000(Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;)V

    .line 186
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 218
    const-string v0, "FloatWindowsManager"

    const-string v1, "onActivityDestroyed call  destroyFloatView"

    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$1;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    const-wide/16 v2, 0xbb8

    # invokes: Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->startDestroyTask(J)V
    invoke-static {v0, v2, v3}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->access$100(Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;J)V

    .line 220
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 202
    const-string v0, "FloatWindowsManager"

    const-string v1, "onActivityPaused call  destroyFloatView"

    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$1;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    const-wide/16 v2, 0x3e8

    # invokes: Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->startDestroyTask(J)V
    invoke-static {v0, v2, v3}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->access$100(Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;J)V

    .line 204
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 196
    const-string v0, "FloatWindowsManager"

    const-string v1, "onActivityCreated call  onActivityResumed"

    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$1;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    # invokes: Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->showFloat()V
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->access$000(Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;)V

    .line 198
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 214
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 190
    const-string v0, "FloatWindowsManager"

    const-string v1, "onActivityCreated call  onActivityStarted"

    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$1;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    # invokes: Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->showFloat()V
    invoke-static {v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->access$000(Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;)V

    .line 192
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 208
    const-string v0, "FloatWindowsManager"

    const-string v1, "onActivityStopped call  destroyFloatView"

    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager$1;->this$0:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    const-wide/16 v2, 0x7d0

    # invokes: Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->startDestroyTask(J)V
    invoke-static {v0, v2, v3}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->access$100(Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;J)V

    .line 210
    return-void
.end method
