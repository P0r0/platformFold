.class Lcom/gionee/game/offlinesdk/upgrade/PluginManager$3;
.super Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->manualInstall(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/game/offlinesdk/upgrade/PluginManager;


# direct methods
.method constructor <init>(Lcom/gionee/game/offlinesdk/upgrade/PluginManager;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 73
    .local p2, "x0":Ljava/util/List;, "Ljava/util/List<Lcom/gionee/gsp/data/GnInstanllPackageInfo;>;"
    iput-object p1, p0, Lcom/gionee/game/offlinesdk/upgrade/PluginManager$3;->this$0:Lcom/gionee/game/offlinesdk/upgrade/PluginManager;

    invoke-direct {p0, p2}, Lcom/gionee/gsp/service/account/sdk/listener/IGnInstallListener;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    .prologue
    .line 84
    const-string v0, "test"

    const-string v1, "\u624b\u52a8\u5b89\u88c5\u6210\u529f"

    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->onEvent(I)V

    .line 86
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/PluginManager$3;->this$0:Lcom/gionee/game/offlinesdk/upgrade/PluginManager;

    const/4 v1, 0x0

    # setter for: Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->access$002(Lcom/gionee/game/offlinesdk/upgrade/PluginManager;Landroid/app/Activity;)Landroid/app/Activity;

    .line 87
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 77
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u624b\u52a8\u5b89\u88c5\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->onEvent(I)V

    .line 79
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/upgrade/PluginManager$3;->this$0:Lcom/gionee/game/offlinesdk/upgrade/PluginManager;

    const/4 v1, 0x0

    # setter for: Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/upgrade/PluginManager;->access$002(Lcom/gionee/game/offlinesdk/upgrade/PluginManager;Landroid/app/Activity;)Landroid/app/Activity;

    .line 80
    return-void
.end method
