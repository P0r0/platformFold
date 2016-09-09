.class public Lcom/gionee/game/offlinesdk/gift/GameGiftManager;
.super Ljava/lang/Object;
.source "GameGiftManager.java"


# static fields
.field private static final FIRST_TIME:Ljava/lang/String; = "firstTime"

.field private static final GAME_GIFT:Ljava/lang/String; = "gameGift"

.field private static sGameGiftManager:Lcom/gionee/game/offlinesdk/gift/GameGiftManager;


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "gameGift"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/gift/GameGiftManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 19
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/gionee/game/offlinesdk/gift/GameGiftManager;
    .registers 3

    .prologue
    .line 22
    const-class v2, Lcom/gionee/game/offlinesdk/gift/GameGiftManager;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getAppContext()Landroid/content/Context;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1a

    move-result-object v0

    .line 23
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_c

    .line 24
    const/4 v1, 0x0

    .line 29
    :goto_a
    monitor-exit v2

    return-object v1

    .line 26
    :cond_c
    :try_start_c
    sget-object v1, Lcom/gionee/game/offlinesdk/gift/GameGiftManager;->sGameGiftManager:Lcom/gionee/game/offlinesdk/gift/GameGiftManager;

    if-nez v1, :cond_17

    .line 27
    new-instance v1, Lcom/gionee/game/offlinesdk/gift/GameGiftManager;

    invoke-direct {v1, v0}, Lcom/gionee/game/offlinesdk/gift/GameGiftManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/gionee/game/offlinesdk/gift/GameGiftManager;->sGameGiftManager:Lcom/gionee/game/offlinesdk/gift/GameGiftManager;

    .line 29
    :cond_17
    sget-object v1, Lcom/gionee/game/offlinesdk/gift/GameGiftManager;->sGameGiftManager:Lcom/gionee/game/offlinesdk/gift/GameGiftManager;
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1a

    goto :goto_a

    .line 22
    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public needShowFloatHint()Z
    .registers 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/gift/GameGiftManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "firstTime"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setShowFLoatHintDisabled()V
    .registers 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/gift/GameGiftManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstTime"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    return-void
.end method
