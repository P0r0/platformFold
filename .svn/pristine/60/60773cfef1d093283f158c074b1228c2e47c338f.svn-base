.class public final Lcom/baidu/wallet/core/plugins/pluginmanager/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidu/wallet/core/plugins/pluginmanager/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/wallet/core/plugins/pluginmanager/b;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/core/plugins/pluginmanager/b;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/b;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginmanager/b;

    invoke-direct {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/b;-><init>()V

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginmanager/b;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/b;

    :cond_b
    sget-object v0, Lcom/baidu/wallet/core/plugins/pluginmanager/b;->a:Lcom/baidu/wallet/core/plugins/pluginmanager/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;
    .registers 5

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->isNeedUpdate()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->getPlugin()Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p2}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->removeComponent(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public a(ZLandroid/content/Context;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->a(ZLandroid/content/Context;Ljava/lang/String;Z)V

    :goto_a
    return-void

    :cond_b
    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContextWrapper;
    .registers 4

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p2}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->a(Ljava/lang/String;)Lcom/baidu/wallet/core/plugins/pluginfake/c;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public b()Ljava/util/HashMap;
    .registers 2

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getmUpdatePluginDatas()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->a(Ljava/lang/String;)V

    return-void
.end method
