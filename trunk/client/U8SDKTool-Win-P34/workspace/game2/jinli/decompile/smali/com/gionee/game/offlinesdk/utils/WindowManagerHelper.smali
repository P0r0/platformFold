.class public Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;
.super Ljava/lang/Object;
.source "WindowManagerHelper.java"


# static fields
.field public static final NO_ANIM_FLAG:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowManagerHelper"

.field private static sInstance:Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;


# instance fields
.field private mAddViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/app/Application;)V
    .registers 3
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->mAddViewList:Ljava/util/ArrayList;

    .line 23
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->mWindowManager:Landroid/view/WindowManager;

    .line 24
    return-void
.end method

.method public static createWindowParams(III)Landroid/view/WindowManager$LayoutParams;
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "animId"    # I

    .prologue
    .line 66
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 67
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 68
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 69
    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 71
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 72
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 73
    const/4 v1, -0x1

    if-eq p2, v1, :cond_19

    .line 74
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 76
    :cond_19
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/app/Application;)Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;
    .registers 3
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 27
    const-class v1, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->sInstance:Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;

    if-nez v0, :cond_e

    .line 28
    new-instance v0, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;

    invoke-direct {v0, p0}, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->sInstance:Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;

    .line 30
    :cond_e
    sget-object v0, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->sInstance:Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->mAddViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 48
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->mAddViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    .line 50
    :cond_12
    const/4 v1, 0x1

    .line 53
    :goto_13
    return v1

    .line 51
    :catch_14
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManagerHelper"

    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->getFunctionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public removeView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 36
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->mAddViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 37
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->mAddViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 42
    :cond_12
    :goto_12
    return-void

    .line 39
    :catch_13
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManagerHelper"

    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->getFunctionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public updateView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/gionee/game/offlinesdk/utils/WindowManagerHelper;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 63
    :goto_5
    return-void

    .line 60
    :catch_6
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManagerHelper"

    invoke-static {}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->getFunctionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
