.class public Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

.field private c:Lcom/vivo/sdkplugin/data/DBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->a:Landroid/content/Context;

    new-instance v0, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    new-instance v0, Lcom/vivo/sdkplugin/data/DBHelper;

    invoke-direct {v0, p1}, Lcom/vivo/sdkplugin/data/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->c:Lcom/vivo/sdkplugin/data/DBHelper;

    return-void
.end method

.method static synthetic a(Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public exportDB()V
    .registers 3

    const-string v0, "VivoInsertAndExportDBUtil"

    const-string v1, "---------------exportDB() enter------------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vivo/sdkplugin/Utils/w;

    invoke-direct {v1, p0}, Lcom/vivo/sdkplugin/Utils/w;-><init>(Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public insertAndExportDB()V
    .registers 10

    const-string v0, "VivoInsertAndExportDBUtil"

    const-string v1, "------insertAndExportDB() enter -------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VivoInsertAndExportDBUtil"

    const-string v1, "---------------insertUserInDB() enter------------------"

    invoke-static {v0, v1}, Lcom/vivo/sdkplugin/Utils/VivoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_e
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getTempUuid()Ljava/lang/String;

    move-result-object v8

    :goto_1c
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->c:Lcom/vivo/sdkplugin/data/DBHelper;

    iget-object v1, p0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v1}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v2}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getMainToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v3}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getAccountNum()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v4}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v5}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getmainOpenId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/vivo/sdkplugin/Utils/VivoMakeDiffUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v7}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getVisitor()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v8}, Lcom/vivo/sdkplugin/data/DBHelper;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4f} :catch_5a

    :goto_4f
    invoke-virtual {p0}, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->exportDB()V

    return-void

    :cond_53
    :try_start_53
    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->b:Lcom/vivo/sdkplugin/accounts/BBKAccountManager;

    invoke-virtual {v0}, Lcom/vivo/sdkplugin/accounts/BBKAccountManager;->getUuid()Ljava/lang/String;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_5a

    move-result-object v8

    goto :goto_1c

    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4f
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/vivo/sdkplugin/Utils/VivoInsertAndExportDBUtil;->c:Lcom/vivo/sdkplugin/data/DBHelper;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/sdkplugin/data/DBHelper;->update(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
