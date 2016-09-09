.class public Lcom/vivo/sdkplugin/accounts/LogWatcherService;
.super Landroid/app/Service;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "LogWatcherService"

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->a:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->c:Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->startLogObserver()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->stopLogObserver()V

    return-void
.end method

.method public run()V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "logcat -c"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "logcat"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_17} :catch_2b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_30

    move-result-object v0

    :goto_18
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_26
    iget-boolean v0, p0, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->b:Z

    if-nez v0, :cond_89

    return-void

    :catch_2b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_18

    :catch_30
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    :cond_35
    :try_start_35
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string v4, "VPS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_54
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->c:Landroid/content/Intent;

    const-string v5, "log"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->c:Landroid/content/Intent;

    const-string v4, "LogObserverActivity.LOG_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->c:Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "com.vivo.sdkplugin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_90

    const-string v3, "android.permission.SEND_SMS=0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_90

    const-string v0, "016"

    const-string v3, "0"

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_86
    :goto_86
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_89
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_35

    goto :goto_26

    :cond_90
    const-string v3, "com.vivo.sdkplugin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_86

    const-string v3, "android.permission.SEND_SMS=-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_86

    const-string v0, "016"

    const-string v3, "-1"

    invoke-virtual {p0}, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/vivo/sdkplugin/Utils/FunctionUtils;->saveEventValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_ab} :catch_ac

    goto :goto_86

    :catch_ac
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_26
.end method

.method public startLogObserver()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->a:Ljava/lang/String;

    const-string v1, "startObserverLog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->b:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopLogObserver()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/sdkplugin/accounts/LogWatcherService;->b:Z

    return-void
.end method
