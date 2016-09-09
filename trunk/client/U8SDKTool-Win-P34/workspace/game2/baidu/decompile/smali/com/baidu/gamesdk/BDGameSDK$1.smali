.class final Lcom/baidu/gamesdk/BDGameSDK$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/DkExitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/gamesdk/BDGameSDK;->gameExit(Landroid/content/Context;Lcom/baidu/gamesdk/OnGameExitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/gamesdk/OnGameExitListener;


# direct methods
.method constructor <init>(Lcom/baidu/gamesdk/OnGameExitListener;)V
    .registers 2

    .prologue
    .line 253
    iput-object p1, p0, Lcom/baidu/gamesdk/BDGameSDK$1;->a:Lcom/baidu/gamesdk/OnGameExitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exitGame()V
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/baidu/gamesdk/BDGameSDK$1;->a:Lcom/baidu/gamesdk/OnGameExitListener;

    if-eqz v0, :cond_9

    .line 259
    iget-object v0, p0, Lcom/baidu/gamesdk/BDGameSDK$1;->a:Lcom/baidu/gamesdk/OnGameExitListener;

    invoke-interface {v0}, Lcom/baidu/gamesdk/OnGameExitListener;->onGameExit()V

    .line 261
    :cond_9
    invoke-static {}, Lcom/baidu/gamesdk/BDGameSDK;->destroy()V

    .line 262
    return-void
.end method
