.class Lcom/duoku/platform/download/utils/AppCache$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/utils/AppCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/download/utils/AppCache;


# direct methods
.method constructor <init>(Lcom/duoku/platform/download/utils/AppCache;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/duoku/platform/download/utils/AppCache$a;->a:Lcom/duoku/platform/download/utils/AppCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    sget-boolean v1, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v1, :cond_1c

    .line 137
    const-string v1, "AppCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[AppCache]onReceive "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1c
    const-string v1, "duoku.platform.download.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 142
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache$a;->a:Lcom/duoku/platform/download/utils/AppCache;

    # invokes: Lcom/duoku/platform/download/utils/AppCache;->notifyAppsChanged(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/duoku/platform/download/utils/AppCache;->access$0(Lcom/duoku/platform/download/utils/AppCache;Landroid/content/Context;)V

    .line 179
    :cond_29
    :goto_29
    return-void

    .line 144
    :cond_2a
    const-string v1, "duoku.platform.download.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 147
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache$a;->a:Lcom/duoku/platform/download/utils/AppCache;

    # invokes: Lcom/duoku/platform/download/utils/AppCache;->notifyAppsChanged(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/duoku/platform/download/utils/AppCache;->access$0(Lcom/duoku/platform/download/utils/AppCache;Landroid/content/Context;)V

    goto :goto_29

    .line 149
    :cond_38
    const-string v1, "duoku.platform.download.intent.action.INSTALLEDLIST_INITIALIZED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "duoku.platform.download.intent.action.WHITELIST_INITIALIZED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 152
    :cond_48
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache$a;->a:Lcom/duoku/platform/download/utils/AppCache;

    # invokes: Lcom/duoku/platform/download/utils/AppCache;->notifyAppsChanged(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/duoku/platform/download/utils/AppCache;->access$0(Lcom/duoku/platform/download/utils/AppCache;Landroid/content/Context;)V

    goto :goto_29

    .line 154
    :cond_4e
    const-string v1, "duoku.platform.download.intent.action.UPDATABLELIST_INITIALIZED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 158
    const-string v1, "duoku.platform.download.intent.action.DOWNLOAD_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 161
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache$a;->a:Lcom/duoku/platform/download/utils/AppCache;

    # invokes: Lcom/duoku/platform/download/utils/AppCache;->notifyAppsChanged(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/duoku/platform/download/utils/AppCache;->access$0(Lcom/duoku/platform/download/utils/AppCache;Landroid/content/Context;)V

    goto :goto_29

    .line 165
    :cond_64
    const-string v1, "duoku.platform.download.intent.action.INSTALL_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 169
    const-string v1, "duoku.platform.download.intent.action.IGNORED_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 172
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache$a;->a:Lcom/duoku/platform/download/utils/AppCache;

    # invokes: Lcom/duoku/platform/download/utils/AppCache;->notifyAppsChanged(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/duoku/platform/download/utils/AppCache;->access$0(Lcom/duoku/platform/download/utils/AppCache;Landroid/content/Context;)V

    goto :goto_29

    .line 174
    :cond_7a
    const-string v1, "duoku.platform.download.intent.action.PRE_PACKAGE_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 176
    iget-object v0, p0, Lcom/duoku/platform/download/utils/AppCache$a;->a:Lcom/duoku/platform/download/utils/AppCache;

    # invokes: Lcom/duoku/platform/download/utils/AppCache;->notifyAppsChanged(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/duoku/platform/download/utils/AppCache;->access$0(Lcom/duoku/platform/download/utils/AppCache;Landroid/content/Context;)V

    goto :goto_29
.end method
