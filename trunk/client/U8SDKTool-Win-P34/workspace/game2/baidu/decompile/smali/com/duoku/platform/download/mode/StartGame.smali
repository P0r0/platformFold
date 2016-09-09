.class public final Lcom/duoku/platform/download/mode/StartGame;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final START_GAME_REQUEST_CODE:I = 0x400


# instance fields
.field private action:Ljava/lang/String;

.field private cx:Landroid/content/Context;

.field private gameid:Ljava/lang/String;

.field private pManager:Landroid/content/pm/PackageManager;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 27
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/duoku/platform/download/mode/StartGame;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/duoku/platform/download/mode/StartGame;->packageName:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/duoku/platform/download/mode/StartGame;->cx:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/duoku/platform/download/mode/StartGame;->action:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/duoku/platform/download/mode/StartGame;->gameid:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/download/mode/StartGame;->pManager:Landroid/content/pm/PackageManager;

    .line 41
    return-void
.end method

.method private startActivity(ZLandroid/content/Intent;)Z
    .registers 4

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/duoku/platform/download/mode/StartGame;->startActivity(ZLandroid/content/Intent;Z)Z

    move-result v0

    return v0
.end method

.method private startActivity(ZLandroid/content/Intent;Z)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 141
    if-nez p2, :cond_5

    move v0, v1

    .line 172
    :goto_4
    return v0

    .line 146
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/duoku/platform/download/mode/StartGame;->cx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 147
    if-eqz p1, :cond_17

    .line 149
    const/16 v2, 0x400

    invoke-virtual {v0, p2, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 150
    if-eqz p3, :cond_15

    .line 152
    invoke-direct {p0}, Lcom/duoku/platform/download/mode/StartGame;->statisAppStartCount()V

    .line 172
    :cond_15
    :goto_15
    const/4 v0, 0x1

    goto :goto_4

    .line 159
    :cond_17
    iget-object v0, p0, Lcom/duoku/platform/download/mode/StartGame;->cx:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 160
    if-eqz p3, :cond_15

    .line 162
    invoke-direct {p0}, Lcom/duoku/platform/download/mode/StartGame;->statisAppStartCount()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_22

    goto :goto_15

    .line 166
    :catch_22
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 169
    goto :goto_4
.end method

.method private startAppByAction(Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 92
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-direct {p0, p2, v0}, Lcom/duoku/platform/download/mode/StartGame;->startActivity(ZLandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 98
    iget-object v0, p0, Lcom/duoku/platform/download/mode/StartGame;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/duoku/platform/download/mode/StartGame;->pManager:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/AppUtil;->getIntent(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/duoku/platform/download/mode/StartGame;->startActivity(ZLandroid/content/Intent;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 105
    :cond_1e
    :goto_1e
    return-void

    .line 101
    :catch_1f
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method private statisAppStartCount()V
    .registers 1

    .prologue
    .line 183
    return-void
.end method


# virtual methods
.method public startGame()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/download/mode/StartGame;->startGame(Z)V

    .line 46
    return-void
.end method

.method public startGame(Z)V
    .registers 3

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/duoku/platform/download/mode/StartGame;->startGame(ZZ)V

    .line 54
    return-void
.end method

.method public startGame(ZZ)V
    .registers 5

    .prologue
    .line 66
    iget-object v0, p0, Lcom/duoku/platform/download/mode/StartGame;->action:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/duoku/platform/download/mode/StartGame;->action:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 69
    :cond_e
    iget-object v0, p0, Lcom/duoku/platform/download/mode/StartGame;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/duoku/platform/download/mode/StartGame;->pManager:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/AppUtil;->getIntent(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/duoku/platform/download/mode/StartGame;->startActivity(ZLandroid/content/Intent;Z)Z

    .line 78
    :goto_19
    return-void

    .line 74
    :cond_1a
    iget-object v0, p0, Lcom/duoku/platform/download/mode/StartGame;->action:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/duoku/platform/download/mode/StartGame;->startAppByAction(Ljava/lang/String;Z)V

    goto :goto_19
.end method
