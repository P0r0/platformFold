.class public Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/download/worker/AbstractListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageIntentReceiver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/BroadcastReceiver;"
    }
.end annotation


# instance fields
.field final mLoader:Lcom/duoku/platform/download/worker/AbstractListLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/duoku/platform/download/worker/AbstractListLoader",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/duoku/platform/download/worker/AbstractListLoader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duoku/platform/download/worker/AbstractListLoader",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;->mLoader:Lcom/duoku/platform/download/worker/AbstractListLoader;

    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "duoku.platform.download.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 260
    const-string v1, "duoku.platform.download.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v1, "duoku.platform.download.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;->mLoader:Lcom/duoku/platform/download/worker/AbstractListLoader;

    invoke-virtual {v1}, Lcom/duoku/platform/download/worker/AbstractListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 271
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 272
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;->mLoader:Lcom/duoku/platform/download/worker/AbstractListLoader;

    invoke-virtual {v1}, Lcom/duoku/platform/download/worker/AbstractListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 277
    const-string v1, "duoku.platform.download.intent.action.INSTALLEDLIST_INITIALIZED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v1, "duoku.platform.download.intent.action.UPDATABLELIST_INITIALIZED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v1, "duoku.platform.download.intent.action.WHITELIST_INITIALIZED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;->mLoader:Lcom/duoku/platform/download/worker/AbstractListLoader;

    invoke-virtual {v1}, Lcom/duoku/platform/download/worker/AbstractListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 282
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 283
    const-string v1, "duoku.platform.download.intent.action.DOWNLOAD_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;->mLoader:Lcom/duoku/platform/download/worker/AbstractListLoader;

    invoke-virtual {v1}, Lcom/duoku/platform/download/worker/AbstractListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    const-string v1, "duoku.platform.download.intent.action.INSTALL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;->mLoader:Lcom/duoku/platform/download/worker/AbstractListLoader;

    invoke-virtual {v1}, Lcom/duoku/platform/download/worker/AbstractListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "duoku.platform.download.intent.action.IGNORED_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;->mLoader:Lcom/duoku/platform/download/worker/AbstractListLoader;

    invoke-virtual {v1}, Lcom/duoku/platform/download/worker/AbstractListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 298
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;->mLoader:Lcom/duoku/platform/download/worker/AbstractListLoader;

    iget-boolean v1, v1, Lcom/duoku/platform/download/worker/AbstractListLoader;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 300
    const-string v1, "PackageIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "##onReceive "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1f
    const-string v1, "duoku.platform.download.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 305
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;->mLoader:Lcom/duoku/platform/download/worker/AbstractListLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onReceveAppEvent(Z)V

    .line 334
    :cond_2d
    :goto_2d
    return-void

    .line 307
    :cond_2e
    const-string v1, "duoku.platform.download.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 309
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;->mLoader:Lcom/duoku/platform/download/worker/AbstractListLoader;

    invoke-virtual {v0, v4}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onReceveAppEvent(Z)V

    goto :goto_2d

    .line 311
    :cond_3c
    const-string v1, "duoku.platform.download.intent.action.INSTALLEDLIST_INITIALIZED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "duoku.platform.download.intent.action.WHITELIST_INITIALIZED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 313
    :cond_4c
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;->mLoader:Lcom/duoku/platform/download/worker/AbstractListLoader;

    invoke-virtual {v0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onInstalledListInitialized()V

    goto :goto_2d

    .line 315
    :cond_52
    const-string v1, "duoku.platform.download.intent.action.UPDATABLELIST_INITIALIZED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 317
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;->mLoader:Lcom/duoku/platform/download/worker/AbstractListLoader;

    invoke-virtual {v0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onUpdatableListInitialized()V

    goto :goto_2d

    .line 319
    :cond_60
    const-string v1, "duoku.platform.download.intent.action.DOWNLOAD_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 321
    const-string v0, "download_arg"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;->mLoader:Lcom/duoku/platform/download/worker/AbstractListLoader;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onDownloadChanged(Z)V

    goto :goto_2d

    .line 324
    :cond_74
    const-string v1, "duoku.platform.download.intent.action.INSTALL_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 326
    iget-object v0, p0, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;->mLoader:Lcom/duoku/platform/download/worker/AbstractListLoader;

    invoke-virtual {v0}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onInstallChanged()V

    goto :goto_2d

    .line 328
    :cond_82
    const-string v1, "duoku.platform.download.intent.action.IGNORED_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 330
    const-string v0, "ignored_state"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 331
    const-string v1, "ignored_packages"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 332
    iget-object v2, p0, Lcom/duoku/platform/download/worker/AbstractListLoader$PackageIntentReceiver;->mLoader:Lcom/duoku/platform/download/worker/AbstractListLoader;

    invoke-virtual {v2, v0, v1}, Lcom/duoku/platform/download/worker/AbstractListLoader;->onIgnoredStatusChanged(Z[Ljava/lang/String;)V

    goto :goto_2d
.end method
