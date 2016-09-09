.class public Lcom/gionee/game/offlinesdk/floatwindows/FloatView;
.super Landroid/widget/Button;
.source "FloatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;
    }
.end annotation


# static fields
.field private static final ACTION_GIFT_LIST:Ljava/lang/String; = "amigoplay.intent.action.GIFT_LIST"

.field private static final CHANGE_SHAPE_DELAY:J = 0xbb8L

.field private static final KEY_APP_ID:Ljava/lang/String; = "app_id"

.field private static final KEY_GAME_PACKAGE:Ljava/lang/String; = "key_game_package"

.field private static final SOURCE:Ljava/lang/String; = "gameofflinesdk_floatview"

.field private static final TAG:Ljava/lang/String; = "FloatView"


# instance fields
.field private mFloatManager:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

.field private mGameListener:Lcom/gionee/game/offlinesdk/listener/GameListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGoEdgeRunnable:Ljava/lang/Runnable;

.field private mInitWindowX:I

.field private mInitWindowY:I

.field private mIsEdge:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;)V
    .registers 4
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "floatManager"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mIsEdge:Z

    .line 36
    new-instance v0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$1;

    invoke-direct {v0, p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$1;-><init>(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)V

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mGoEdgeRunnable:Ljava/lang/Runnable;

    .line 44
    new-instance v0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$2;

    invoke-direct {v0, p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$2;-><init>(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)V

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mGameListener:Lcom/gionee/game/offlinesdk/listener/GameListener;

    .line 69
    invoke-direct {p0, p1}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->init(Landroid/app/Application;)V

    .line 70
    iput-object p2, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mFloatManager:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)V
    .registers 1
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->goEdge()V

    return-void
.end method

.method static synthetic access$100(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)V
    .registers 1
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->onFloatWindowsStatusChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->getNormalDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mIsEdge:Z

    return v0
.end method

.method static synthetic access$402(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatView;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mIsEdge:Z

    return p1
.end method

.method static synthetic access$500(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)V
    .registers 1
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->startGameGiftActivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)I
    .registers 2
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    .prologue
    .line 23
    iget v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mInitWindowX:I

    return v0
.end method

.method static synthetic access$602(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatView;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mInitWindowX:I

    return p1
.end method

.method static synthetic access$700(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)I
    .registers 2
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    .prologue
    .line 23
    iget v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mInitWindowY:I

    return v0
.end method

.method static synthetic access$702(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatView;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mInitWindowY:I

    return p1
.end method

.method static synthetic access$800(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;)Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;
    .registers 2
    .param p0, "x0"    # Lcom/gionee/game/offlinesdk/floatwindows/FloatView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mFloatManager:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    return-object v0
.end method

.method private createExtraIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v1, "app_id"

    sget-object v2, Lcom/gionee/gsp/common/GnCommonConfig;->sAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v1, "key_game_package"

    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    return-object v0
.end method

.method private getDefaultDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 253
    const-string v0, "game_float_normal.png"

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultWithHintDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 249
    const-string v0, "game_float_hint.png"

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mIsEdge:Z

    if-eqz v0, :cond_9

    .line 223
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->getEdgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 225
    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->getNormalDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_8
.end method

.method private getEdgeDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 236
    invoke-static {}, Lcom/gionee/game/offlinesdk/gift/GameGiftManager;->getInstance()Lcom/gionee/game/offlinesdk/gift/GameGiftManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/gift/GameGiftManager;->needShowFloatHint()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 237
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mFloatManager:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->isLeft()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 238
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->getLeftWithHintDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 245
    :goto_16
    return-object v0

    .line 240
    :cond_17
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->getRightWithHintDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_16

    .line 242
    :cond_1c
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mFloatManager:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->isLeft()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 243
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->getLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_16

    .line 245
    :cond_29
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_16
.end method

.method private getLeftDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 261
    const-string v0, "game_float_hide_left.png"

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getLeftWithHintDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 257
    const-string v0, "game_float_hide_left_hint.png"

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getNormalDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 229
    invoke-static {}, Lcom/gionee/game/offlinesdk/gift/GameGiftManager;->getInstance()Lcom/gionee/game/offlinesdk/gift/GameGiftManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/gift/GameGiftManager;->needShowFloatHint()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 230
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->getDefaultWithHintDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 232
    :goto_e
    return-object v0

    :cond_f
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->getDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_e
.end method

.method private getRightDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 269
    const-string v0, "game_float_hide_right.png"

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getRightWithHintDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 265
    const-string v0, "game_float_hide_right_hint.png"

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/utils/Utils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private goEdge()V
    .registers 3

    .prologue
    .line 89
    const-string v0, "FloatView"

    const-string v1, "goEdge"

    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mIsEdge:Z

    .line 91
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->getEdgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mFloatManager:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->setFloatEdging()V

    .line 93
    return-void
.end method

.method private init(Landroid/app/Application;)V
    .registers 5
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 74
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView$FloatGestureListener;-><init>(Lcom/gionee/game/offlinesdk/floatwindows/FloatView;Lcom/gionee/game/offlinesdk/floatwindows/FloatView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 75
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->getNormalDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mGameListener:Lcom/gionee/game/offlinesdk/listener/GameListener;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/gionee/game/offlinesdk/listener/GameListenerManager;->addListener(Lcom/gionee/game/offlinesdk/listener/GameListener;I)V

    .line 77
    return-void
.end method

.method private onFloatWindowsStatusChanged()V
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    return-void
.end method

.method private setFloatNormalState()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mFloatManager:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->setFloatNormalState()V

    .line 127
    return-void
.end method

.method private startGameGiftActivity()V
    .registers 4

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "amigoplay.intent.action.GIFT_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "gameofflinesdk_floatview"

    invoke-direct {p0, v1}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->createExtraIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 205
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 207
    const-string v1, "FloatView"

    const-string v2, "resolveActivity null return"

    invoke-static {v1, v2}, Lcom/gionee/game/offlinesdk/utils/LogUtils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_2a
    return-void

    .line 210
    :cond_2b
    invoke-static {}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2a
.end method

.method private updateFloatNormalSize()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mFloatManager:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    invoke-virtual {v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->updateFloatNormalSize()V

    .line 123
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mFloatManager:Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;

    iget-boolean v0, v0, Lcom/gionee/game/offlinesdk/floatwindows/FloatWindowsManager;->mIsFloatShow:Z

    if-nez v0, :cond_a

    .line 141
    :goto_9
    return-void

    .line 136
    :cond_a
    iget-boolean v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mIsEdge:Z

    if-eqz v0, :cond_12

    .line 137
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->goEdge()V

    goto :goto_9

    .line 139
    :cond_12
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->setFloatNormalState()V

    goto :goto_9
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    iget-object v3, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v3, :cond_8

    if-nez p1, :cond_9

    .line 113
    :cond_8
    :goto_8
    return v2

    .line 101
    :cond_9
    iget-object v3, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 102
    .local v0, "isActionConsumed":Z
    if-eqz v0, :cond_15

    .line 103
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->setFloatNormalState()V

    goto :goto_8

    .line 107
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_21

    .line 108
    .local v1, "isActionUp":Z
    :goto_1b
    if-eqz v1, :cond_8

    .line 112
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->setFloatNormalState()V

    goto :goto_8

    .end local v1    # "isActionUp":Z
    :cond_21
    move v1, v2

    .line 107
    goto :goto_1b
.end method

.method public postGoEdgeRunnable()V
    .registers 5

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->removeGoEdgeRunnable()V

    .line 81
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mGoEdgeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->postDelayed(Ljava/lang/Runnable;J)V

    .line 82
    return-void
.end method

.method public removeGoEdgeRunnable()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->mGoEdgeRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/gionee/game/offlinesdk/common/GamePlatformImpl;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public resetFloatWindowsState()V
    .registers 2

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->updateFloatNormalSize()V

    .line 118
    invoke-direct {p0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->getNormalDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gionee/game/offlinesdk/floatwindows/FloatView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    return-void
.end method
