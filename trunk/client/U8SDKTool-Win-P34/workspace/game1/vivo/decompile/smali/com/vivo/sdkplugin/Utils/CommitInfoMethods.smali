.class public Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/HandlerThread;

.field private c:Lcom/vivo/sdkplugin/Utils/b;

.field private d:Landroid/os/Handler;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/HashMap;

.field private g:Lcom/vivo/sdkplugin/net/HttpConnect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "CommitInfoMethods"

    sput-object v0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->b:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->c:Lcom/vivo/sdkplugin/Utils/b;

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->f:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;)Ljava/util/Map;
    .registers 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/vivo/sdkplugin/net/HttpConnect;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/vivo/sdkplugin/net/HttpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->g:Lcom/vivo/sdkplugin/net/HttpConnect;

    sget-object v0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "params="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->g:Lcom/vivo/sdkplugin/net/HttpConnect;

    sget-object v1, Lcom/vivo/sdkplugin/Contants;->ACCOUNT_REGISTE_CHECK_EXIST:Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->f:Ljava/util/HashMap;

    new-instance v7, Lcom/vivo/sdkplugin/Utils/c;

    const/4 v5, 0x0

    invoke-direct {v7, p0, v5}, Lcom/vivo/sdkplugin/Utils/c;-><init>(Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;B)V

    move v5, v4

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/vivo/sdkplugin/net/HttpConnect;->connect(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;IILjava/lang/Object;Lcom/vivo/sdkplugin/net/HttpResponed;)V

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public cancelBackGroundThread()V
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->b:Landroid/os/HandlerThread;

    :cond_c
    return-void
.end method

.method public cancelBgThread()V
    .registers 3

    sget-object v0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->a:Ljava/lang/String;

    const-string v1, "cancelBgThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->g:Lcom/vivo/sdkplugin/net/HttpConnect;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->g:Lcom/vivo/sdkplugin/net/HttpConnect;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/net/HttpConnect;->cancelConnect()V

    :cond_10
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->b:Landroid/os/HandlerThread;

    :cond_1c
    return-void
.end method

.method public doCheckAccNumExist()V
    .registers 3

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_1f

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.bbk.MERGE_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->b:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/vivo/sdkplugin/Utils/b;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vivo/sdkplugin/Utils/b;-><init>(Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->c:Lcom/vivo/sdkplugin/Utils/b;

    :cond_1f
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->c:Lcom/vivo/sdkplugin/Utils/b;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/Utils/b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/CommitInfoMethods;->c:Lcom/vivo/sdkplugin/Utils/b;

    invoke-virtual {v1, v0}, Lcom/vivo/sdkplugin/Utils/b;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
