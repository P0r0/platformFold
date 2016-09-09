.class public Lcom/duoku/platform/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/duoku/platform/b;

.field private static e:Landroid/content/Context;

.field private static l:Lcom/duoku/platform/download/utils/DownloadTasks;


# instance fields
.field private b:Lcom/duoku/platform/DkPlatformSettings;

.field private c:Lcom/duoku/platform/c/a;

.field private d:Landroid/content/Context;

.field private f:Lcom/duoku/platform/view/StartView;

.field private g:Lcom/duoku/platform/view/e;

.field private h:Lcom/duoku/platform/util/k;

.field private i:J

.field private j:Lcom/duoku/platform/IDKSDKCallBack;

.field private k:Landroid/app/Application;

.field private m:Lcom/duoku/platform/floatview/DKFloatWindow;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-class v0, Lcom/duoku/platform/DkPlatform;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/b;->h:Lcom/duoku/platform/util/k;

    .line 84
    new-instance v0, Lcom/duoku/platform/c/a;

    invoke-direct {v0}, Lcom/duoku/platform/c/a;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/b;->c:Lcom/duoku/platform/c/a;

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/baidu/platformsdk/BDPlatformUser$UserType;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 612
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v1

    .line 616
    if-nez p1, :cond_e

    .line 640
    :cond_d
    :goto_d
    return-object v0

    .line 621
    :cond_e
    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne p1, v2, :cond_2f

    .line 623
    const-string v0, "3"

    .line 624
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v2

    invoke-static {}, Lcom/duoku/platform/b;->c()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->d()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/k;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 626
    invoke-virtual {v1}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 628
    const-string v0, "0"

    goto :goto_d

    .line 632
    :cond_2f
    sget-object v1, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->_91:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne p1, v1, :cond_36

    .line 634
    const-string v0, "2"

    goto :goto_d

    .line 636
    :cond_36
    sget-object v1, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Duoku:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne p1, v1, :cond_d

    .line 638
    const-string v0, "1"

    goto :goto_d
.end method

.method private a(JI)V
    .registers 11

    .prologue
    const-wide/16 v4, 0x1388

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 568
    sub-long/2addr v0, p1

    .line 569
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_21

    cmp-long v2, v4, v0

    if-lez v2, :cond_21

    .line 571
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/duoku/platform/b$2;

    invoke-direct {v3, p0, p3}, Lcom/duoku/platform/b$2;-><init>(Lcom/duoku/platform/b;I)V

    .line 594
    sub-long v0, v4, v0

    .line 571
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 608
    :cond_20
    :goto_20
    return-void

    .line 598
    :cond_21
    iget-object v0, p0, Lcom/duoku/platform/b;->f:Lcom/duoku/platform/view/StartView;

    if-eqz v0, :cond_20

    .line 600
    iget-object v0, p0, Lcom/duoku/platform/b;->f:Lcom/duoku/platform/view/StartView;

    invoke-virtual {v0}, Lcom/duoku/platform/view/StartView;->b()V

    .line 601
    iget-object v0, p0, Lcom/duoku/platform/b;->f:Lcom/duoku/platform/view/StartView;

    invoke-virtual {v0}, Lcom/duoku/platform/view/StartView;->c()V

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/b;->f:Lcom/duoku/platform/view/StartView;

    .line 603
    iget-object v0, p0, Lcom/duoku/platform/b;->g:Lcom/duoku/platform/view/e;

    invoke-virtual {v0}, Lcom/duoku/platform/view/e;->cancel()V

    .line 604
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 605
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/duoku/platform/f/a;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/DKProCallbackListener;->onInitComplete(Ljava/lang/String;)V

    goto :goto_20
.end method

.method private a(Landroid/app/Activity;Lcom/duoku/platform/ui/entity/c;)V
    .registers 7

    .prologue
    .line 891
    invoke-virtual {p2}, Lcom/duoku/platform/ui/entity/c;->a()Ljava/util/List;

    move-result-object v0

    .line 892
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_time"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/util/o;->e(Ljava/lang/String;)Z

    .line 893
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_title"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/util/o;->e(Ljava/lang/String;)Z

    .line 894
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_content"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/util/o;->e(Ljava/lang/String;)Z

    .line 895
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_link"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/util/o;->e(Ljava/lang/String;)Z

    .line 896
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_actiontype"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/util/o;->e(Ljava/lang/String;)Z

    .line 897
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_actionnoticeurl"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/util/o;->e(Ljava/lang/String;)Z

    .line 898
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_94

    .line 900
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/a;

    .line 902
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_actiontype"

    invoke-virtual {v0}, Lcom/duoku/platform/bean/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 903
    invoke-virtual {v0}, Lcom/duoku/platform/bean/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 905
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_time"

    invoke-virtual {v0}, Lcom/duoku/platform/bean/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 906
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_title"

    invoke-virtual {v0}, Lcom/duoku/platform/bean/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 907
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_content"

    invoke-virtual {v0}, Lcom/duoku/platform/bean/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 908
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_link"

    invoke-virtual {v0}, Lcom/duoku/platform/bean/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 915
    :cond_94
    :goto_94
    return-void

    .line 910
    :cond_95
    invoke-virtual {v0}, Lcom/duoku/platform/bean/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 912
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_actionnoticeurl"

    invoke-virtual {v0}, Lcom/duoku/platform/bean/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_94
.end method

.method static synthetic a(Lcom/duoku/platform/b;JI)V
    .registers 5

    .prologue
    .line 565
    invoke-direct {p0, p1, p2, p3}, Lcom/duoku/platform/b;->a(JI)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/b;Landroid/app/Activity;Lcom/duoku/platform/ui/entity/c;)V
    .registers 3

    .prologue
    .line 889
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/b;->a(Landroid/app/Activity;Lcom/duoku/platform/ui/entity/c;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/b;Lcom/duoku/platform/view/StartView;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/duoku/platform/b;->f:Lcom/duoku/platform/view/StartView;

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/b;)Lcom/duoku/platform/IDKSDKCallBack;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/duoku/platform/b;->j:Lcom/duoku/platform/IDKSDKCallBack;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 9

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_WAKEUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Constants;->ACTION_RETRY:Ljava/lang/String;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.REDOWNLOAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Constants;->ACTION_REDOWNLOAD:Ljava/lang/String;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Constants;->ACTION_OPEN:Ljava/lang/String;

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_LIST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Constants;->ACTION_LIST:Ljava/lang/String;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_HIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Constants;->ACTION_HIDE:Ljava/lang/String;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Constants;->DEFAULT_DL_SUBDIR:Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".download_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Constants;->DOWNLOAD_ID:Ljava/lang/String;

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_START"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_START:Ljava/lang/String;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_CANCLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_CANCLE:Ljava/lang/String;

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_PAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_PAUSE:Ljava/lang/String;

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_PAUSE_BY_USER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_PAUSE_BY_USER:Ljava/lang/String;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_RUNNING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_RUNNING:Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_NOTIFICATION_CLICKED:Ljava/lang/String;

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.VIEW_DOWNLOADS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_VIEW_DOWNLOADS:Ljava/lang/String;

    .line 241
    sget-object v0, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    sput-object v0, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    .line 243
    sget-object v0, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "my_downloads"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    sget-object v0, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "my_downloads/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    sget-object v0, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "all_downloads"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 246
    sget-object v0, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "all_downloads/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    sget-object v0, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "my_downloads/#/headers"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    sget-object v0, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "all_downloads/#/headers"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    sget-object v0, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "download"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    sget-object v0, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "download/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    sget-object v0, Lcom/duoku/platform/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "download/#/headers"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads;->ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads;->ACTION_NOTIFICATION_CLICKED:Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".permission.ACCESS_DOWNLOAD_MANAGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads;->PERMISSION_ACCESS:Ljava/lang/String;

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads;->PERMISSION_ACCESS_ADVANCED:Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".permission.ACCESS_CACHE_FILESYSTEM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads;->PERMISSION_CACHE:Ljava/lang/String;

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".permission.SEND_DOWNLOAD_COMPLETED_INTENTS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads;->PERMISSION_SEND_INTENTS:Ljava/lang/String;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads$Impl;->ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads$Impl;->ACTION_NOTIFICATION_CLICKED:Ljava/lang/String;

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".permission.ACCESS_DOWNLOAD_MANAGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads$Impl;->PERMISSION_ACCESS:Ljava/lang/String;

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads$Impl;->PERMISSION_ACCESS_ADVANCED:Ljava/lang/String;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".permission.ACCESS_ALL_DOWNLOADS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads$Impl;->PERMISSION_ACCESS_ALL:Ljava/lang/String;

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".permission.ACCESS_CACHE_FILESYSTEM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads$Impl;->PERMISSION_CACHE:Ljava/lang/String;

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".permission.DOWNLOAD_CACHE_NON_PURGEABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads$Impl;->PERMISSION_CACHE_NON_PURGEABLE:Ljava/lang/String;

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".permission.DOWNLOAD_WITHOUT_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads$Impl;->PERMISSION_NO_NOTIFICATION:Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/duoku/platform/download/Constants;->PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".permission.SEND_DOWNLOAD_COMPLETED_INTENTS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads$Impl;->PERMISSION_SEND_INTENTS:Ljava/lang/String;

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/my_downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads;->CONTENT_URI:Landroid/net/Uri;

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/my_downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/duoku/platform/download/DownloadProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/all_downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    .line 272
    sget-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String;

    sput-object v0, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String;

    .line 273
    sget-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_PAUSE:Ljava/lang/String;

    sput-object v0, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_PAUSE:Ljava/lang/String;

    .line 274
    sget-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_PAUSE_BY_USER:Ljava/lang/String;

    sput-object v0, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_PAUSE_BY_USER:Ljava/lang/String;

    .line 275
    sget-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_START:Ljava/lang/String;

    sput-object v0, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_START:Ljava/lang/String;

    .line 276
    sget-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_CANCLE:Ljava/lang/String;

    sput-object v0, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_CANCLE:Ljava/lang/String;

    .line 277
    sget-object v0, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_RUNNING:Ljava/lang/String;

    sput-object v0, Lcom/duoku/platform/download/utils/BroadcaseSender;->ACTION_DOWNLOAD_RUNNING:Ljava/lang/String;

    .line 280
    new-array v0, v5, [Landroid/net/Uri;

    const/4 v1, 0x0

    .line 281
    sget-object v2, Lcom/duoku/platform/download/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    sget-object v1, Lcom/duoku/platform/download/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v4

    .line 279
    sput-object v0, Lcom/duoku/platform/download/DownloadProvider;->BASE_URIS:[Landroid/net/Uri;

    .line 283
    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/b;)J
    .registers 3

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/duoku/platform/b;->i:J

    return-wide v0
.end method

.method public static declared-synchronized c()Lcom/duoku/platform/b;
    .registers 2

    .prologue
    .line 413
    const-class v1, Lcom/duoku/platform/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/b;->a:Lcom/duoku/platform/b;

    if-nez v0, :cond_e

    .line 415
    new-instance v0, Lcom/duoku/platform/b;

    invoke-direct {v0}, Lcom/duoku/platform/b;-><init>()V

    sput-object v0, Lcom/duoku/platform/b;->a:Lcom/duoku/platform/b;

    .line 418
    :cond_e
    sget-object v0, Lcom/duoku/platform/b;->a:Lcom/duoku/platform/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 413
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d(Lcom/duoku/platform/b;)Lcom/duoku/platform/view/StartView;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/duoku/platform/b;->f:Lcom/duoku/platform/view/StartView;

    return-object v0
.end method

.method static synthetic e(Lcom/duoku/platform/b;)Lcom/duoku/platform/view/e;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/duoku/platform/b;->g:Lcom/duoku/platform/view/e;

    return-object v0
.end method

.method public static m()Lcom/duoku/platform/bean/SynLoginUserInfo;
    .registers 1

    .prologue
    .line 741
    invoke-static {}, Lcom/duoku/platform/util/q;->f()Lcom/duoku/platform/bean/SynLoginUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static n()Lcom/duoku/platform/bean/SynLoginUserInfo;
    .registers 1

    .prologue
    .line 746
    invoke-static {}, Lcom/duoku/platform/util/q;->e()Lcom/duoku/platform/bean/SynLoginUserInfo;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 94
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v1}, Lcom/duoku/platform/DkPlatformSettings;->getAppkey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->initGame(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    const-string v1, "deb6af019f"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->initGame(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v1}, Lcom/duoku/platform/DkPlatformSettings;->getAppid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v2}, Lcom/duoku/platform/DkPlatformSettings;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lcom/baidu/mtjstatsdk/StatSDKService;->setAppChannel(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v1}, Lcom/duoku/platform/DkPlatformSettings;->getAppid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deb6af019f"

    invoke-static {v0, v1, v3, v2}, Lcom/baidu/mtjstatsdk/StatSDKService;->setAppChannel(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 99
    const-string v0, "3.7.1"

    iget-object v1, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v1}, Lcom/duoku/platform/DkPlatformSettings;->getAppkey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/StatSDKService;->setAppVersionName(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/mtjstatsdk/StatSDKService;->getCuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deb6af019f"

    invoke-static {v0, v1, v2}, Lcom/baidu/mtjstatsdk/game/BDGameSDK;->setAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private r()V
    .registers 4

    .prologue
    .line 319
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "mAppid"

    iget-object v2, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v2}, Lcom/duoku/platform/DkPlatformSettings;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 320
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "mAppkey"

    iget-object v2, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v2}, Lcom/duoku/platform/DkPlatformSettings;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 321
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "mGameCategory"

    iget-object v2, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v2}, Lcom/duoku/platform/DkPlatformSettings;->getGameCategory()Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/DkPlatformSettings$GameCategory;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;I)Z

    .line 324
    return-void
.end method

.method private s()V
    .registers 5

    .prologue
    .line 331
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "dkAppFirstStart"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->d(Ljava/lang/String;)Z

    move-result v0

    .line 332
    if-nez v0, :cond_27

    .line 334
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "34"

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "dkAppFirstStart"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Z)Z

    .line 337
    :cond_27
    return-void
.end method

.method private t()V
    .registers 4

    .prologue
    .line 345
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/duoku/platform/util/Constants;->BAIDU_PUSH_API_KEY:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/PushManager;->startWork(Landroid/content/Context;ILjava/lang/String;)V

    .line 386
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Application;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/duoku/platform/b;->k:Landroid/app/Application;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 811
    const-string v0, "DKPlatformInternal\u83b7\u53d6\u516c\u544a\u63a5\u53e3\u8c03\u7528"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    new-instance v0, Lcom/duoku/platform/e/a;

    invoke-direct {v0, p1}, Lcom/duoku/platform/e/a;-><init>(Landroid/content/Context;)V

    .line 813
    invoke-virtual {v0, v2}, Lcom/duoku/platform/e/a;->setCancelable(Z)V

    .line 814
    invoke-virtual {v0, v2}, Lcom/duoku/platform/e/a;->setCanceledOnTouchOutside(Z)V

    .line 815
    const-string v1, "\u6b63\u5728\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/e/a;->a(Ljava/lang/String;)V

    .line 816
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/f/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 817
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v2

    sget-object v3, Lcom/duoku/platform/util/Constants;->DK_GET_ANNOUNCEMENT:Ljava/lang/String;

    const/16 v4, 0x6e

    new-instance v5, Lcom/duoku/platform/b$3;

    invoke-direct {v5, p0, v0, p1}, Lcom/duoku/platform/b$3;-><init>(Lcom/duoku/platform/b;Lcom/duoku/platform/e/a;Landroid/app/Activity;)V

    invoke-interface {v2, v3, v4, v1, v5}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 881
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/duoku/platform/DkPlatformSettings;Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 8

    .prologue
    .line 146
    invoke-static {}, Lcom/duoku/platform/util/c;->a()V

    .line 147
    if-eqz p1, :cond_84

    if-eqz p2, :cond_84

    .line 149
    iput-object p1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    .line 158
    :goto_b
    invoke-static {p3}, Lcom/duoku/platform/DKProCallbackListener;->setmOnInitCompleteListener(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 161
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    if-eqz v0, :cond_43

    .line 163
    new-instance v0, Lcom/duoku/platform/view/StartView;

    iget-object v1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duoku/platform/view/StartView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/b;->f:Lcom/duoku/platform/view/StartView;

    .line 164
    new-instance v0, Lcom/duoku/platform/view/e;

    iget-object v1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    const-string v3, "dk_fullscreen_dialog"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/view/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/duoku/platform/b;->g:Lcom/duoku/platform/view/e;

    .line 165
    iget-object v0, p0, Lcom/duoku/platform/b;->g:Lcom/duoku/platform/view/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/e;->setCancelable(Z)V

    .line 166
    iget-object v0, p0, Lcom/duoku/platform/b;->g:Lcom/duoku/platform/view/e;

    iget-object v1, p0, Lcom/duoku/platform/b;->f:Lcom/duoku/platform/view/StartView;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/e;->setContentView(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lcom/duoku/platform/b;->g:Lcom/duoku/platform/view/e;

    invoke-virtual {v0}, Lcom/duoku/platform/view/e;->show()V

    .line 169
    iget-object v0, p0, Lcom/duoku/platform/b;->f:Lcom/duoku/platform/view/StartView;

    invoke-virtual {v0}, Lcom/duoku/platform/view/StartView;->a()V

    .line 171
    :cond_43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duoku/platform/b;->i:J

    .line 173
    iget-object v0, p0, Lcom/duoku/platform/b;->c:Lcom/duoku/platform/c/a;

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->b()Lcom/duoku/platform/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    new-instance v2, Lcom/duoku/platform/b$1;

    invoke-direct {v2, p0, p1}, Lcom/duoku/platform/b$1;-><init>(Lcom/duoku/platform/b;Landroid/app/Activity;)V

    invoke-interface {v0, v1, v2}, Lcom/duoku/platform/b/a;->a(Landroid/content/Context;Lcom/duoku/platform/c;)V

    .line 189
    invoke-direct {p0}, Lcom/duoku/platform/b;->r()V

    .line 193
    :try_start_5c
    invoke-direct {p0}, Lcom/duoku/platform/b;->q()V

    .line 196
    invoke-direct {p0}, Lcom/duoku/platform/b;->t()V

    .line 199
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/c;->b(Landroid/content/Context;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_67} :catch_8a

    .line 210
    :goto_67
    invoke-direct {p0}, Lcom/duoku/platform/b;->s()V

    .line 212
    invoke-virtual {p0}, Lcom/duoku/platform/b;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duoku/platform/b;->b(Landroid/content/Context;)V

    .line 215
    invoke-virtual {p0}, Lcom/duoku/platform/b;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/DownloadTasks;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/DownloadTasks;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/b;->l:Lcom/duoku/platform/download/utils/DownloadTasks;

    .line 216
    return-void

    .line 154
    :cond_84
    const-string v0, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    .line 201
    :catch_8a
    move-exception v0

    .line 203
    const-string v0, " TiebaSDK.init"

    const-string v1, "\u521d\u59cb\u5316\u5f02\u5e38"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67
.end method

.method public a(Landroid/app/Application;)V
    .registers 2

    .prologue
    .line 292
    iput-object p1, p0, Lcom/duoku/platform/b;->k:Landroid/app/Application;

    .line 307
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 758
    sput-object p1, Lcom/duoku/platform/b;->e:Landroid/content/Context;

    .line 759
    if-nez p1, :cond_f

    .line 761
    const-string v0, "context is null"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 780
    :goto_e
    return-void

    .line 765
    :cond_f
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 767
    const-string v0, "user unlogin"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 770
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1}, Lcom/duoku/platform/util/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 771
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 772
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 775
    :cond_36
    invoke-virtual {p0}, Lcom/duoku/platform/b;->p()V

    .line 777
    invoke-static {}, Lcom/duoku/platform/ui/util/a;->a()Lcom/duoku/platform/ui/util/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/util/a;->a(Z)V

    .line 779
    new-instance v0, Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-direct {v0, p1}, Lcom/duoku/platform/floatview/DKFloatWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/b;->m:Lcom/duoku/platform/floatview/DKFloatWindow;

    goto :goto_e
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 6

    .prologue
    .line 402
    iget-object v0, p0, Lcom/duoku/platform/b;->h:Lcom/duoku/platform/util/k;

    sget-object v1, Lcom/duoku/platform/b;->a:Lcom/duoku/platform/b;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/duoku/platform/b;->h()Z

    move-result v0

    if-nez v0, :cond_12

    .line 409
    :goto_11
    return-void

    .line 408
    :cond_12
    iget-object v0, p0, Lcom/duoku/platform/b;->c:Lcom/duoku/platform/c/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/duoku/platform/c/a;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_11
.end method

.method public a(Landroid/content/Context;Lcom/duoku/platform/DkExitListener;)V
    .registers 6

    .prologue
    .line 949
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/k;->b(Landroid/content/Context;)Z

    move-result v0

    .line 950
    sget v1, Lcom/duoku/platform/util/Constants;->exitAdType:I

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_1a

    sget-object v1, Lcom/duoku/platform/util/Constants;->backAdList:Ljava/util/List;

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/duoku/platform/util/Constants;->backAdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_34

    .line 952
    :cond_1a
    invoke-static {}, Lcom/duoku/platform/ui/util/DKDialogUtil;->c()Lcom/duoku/platform/ui/util/DKDialogUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/content/Context;Lcom/duoku/platform/DkExitListener;Z)V

    .line 963
    :goto_21
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "42"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 964
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "bd_exit_ad"

    invoke-virtual {v0, p1, v1}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 966
    return-void

    .line 954
    :cond_34
    sget v1, Lcom/duoku/platform/util/Constants;->exitAdType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4a

    sget-object v1, Lcom/duoku/platform/util/Constants;->backAdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_4a

    .line 956
    invoke-static {}, Lcom/duoku/platform/ui/util/DKDialogUtil;->c()Lcom/duoku/platform/ui/util/DKDialogUtil;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/content/Context;Lcom/duoku/platform/DkExitListener;Z)V

    goto :goto_21

    .line 960
    :cond_4a
    invoke-static {}, Lcom/duoku/platform/ui/util/DKDialogUtil;->c()Lcom/duoku/platform/ui/util/DKDialogUtil;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/util/Constants;->backAdList:Ljava/util/List;

    sget v2, Lcom/duoku/platform/util/Constants;->exitAdType:I

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/duoku/platform/ui/util/DKDialogUtil;->a(Landroid/content/Context;Ljava/util/List;ILcom/duoku/platform/DkExitListener;)V

    goto :goto_21
.end method

.method public a(Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;)V
    .registers 2

    .prologue
    .line 544
    if-eqz p1, :cond_5

    .line 546
    invoke-virtual {p1}, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;->showView()V

    .line 548
    :cond_5
    return-void
.end method

.method public a(Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 8

    .prologue
    .line 124
    iput-object p1, p0, Lcom/duoku/platform/b;->j:Lcom/duoku/platform/IDKSDKCallBack;

    .line 125
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 136
    :cond_e
    :goto_e
    return-void

    .line 129
    :cond_f
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_e

    .line 132
    iget-object v1, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v1}, Lcom/duoku/platform/DkPlatformSettings;->getOrient()I

    move-result v1

    .line 133
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/duoku/platform/b;->a(Lcom/baidu/platformsdk/BDPlatformUser$UserType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/duoku/platform/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->TIPS_INFO_URL:Ljava/lang/String;

    const/16 v3, 0x258

    new-instance v4, Lcom/duoku/platform/b$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/b$a;-><init>(Lcom/duoku/platform/b;Lcom/duoku/platform/b$a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    goto :goto_e
.end method

.method public b()Lcom/duoku/platform/c/a;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/duoku/platform/b;->c:Lcom/duoku/platform/c/a;

    return-object v0
.end method

.method public b(Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;)V
    .registers 2

    .prologue
    .line 552
    if-eqz p1, :cond_5

    .line 554
    invoke-virtual {p1}, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;->closeView()V

    .line 556
    :cond_5
    return-void
.end method

.method public b(Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 4

    .prologue
    .line 518
    const-string v0, "DKSuspendWindowCallBack\u60ac\u6d6e\u7a97\u56de\u8c03\u65b9\u6cd5"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-static {p1}, Lcom/duoku/platform/DKProCallbackListener;->setDKSuspendWindowListener(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 520
    return-void
.end method

.method public c(Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 2

    .prologue
    .line 529
    invoke-static {p1}, Lcom/duoku/platform/DKProCallbackListener;->setmOnsessionFailedListener(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 530
    return-void
.end method

.method public d()Landroid/content/Context;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v0}, Lcom/duoku/platform/DkPlatformSettings;->getAppid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v0}, Lcom/duoku/platform/DkPlatformSettings;->getAppkey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 491
    iget-object v1, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    if-eqz v1, :cond_e

    .line 493
    iget-object v1, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v1}, Lcom/duoku/platform/DkPlatformSettings;->getOrient()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    .line 497
    :cond_e
    return v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 505
    const/4 v0, 0x0

    .line 508
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public i()V
    .registers 2

    .prologue
    .line 537
    invoke-static {}, Lcom/duoku/platform/ui/util/DKDialogUtil;->c()Lcom/duoku/platform/ui/util/DKDialogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/util/DKDialogUtil;->e()V

    .line 538
    return-void
.end method

.method public j()V
    .registers 1

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/duoku/platform/b;->l()V

    .line 702
    return-void
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 706
    const-string v0, "3.7.1"

    return-object v0
.end method

.method public l()V
    .registers 3

    .prologue
    .line 716
    sget-object v0, Lcom/duoku/platform/b;->e:Landroid/content/Context;

    if-eqz v0, :cond_18

    .line 718
    invoke-static {}, Lcom/duoku/platform/ui/util/a;->a()Lcom/duoku/platform/ui/util/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/util/a;->a(Z)V

    .line 720
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.ACTION_VISITOR_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 721
    iget-object v1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 723
    :cond_18
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    .line 737
    return-void
.end method

.method public o()Lcom/duoku/platform/download/utils/DownloadTasks;
    .registers 2

    .prologue
    .line 786
    sget-object v0, Lcom/duoku/platform/b;->l:Lcom/duoku/platform/download/utils/DownloadTasks;

    if-nez v0, :cond_12

    .line 789
    invoke-virtual {p0}, Lcom/duoku/platform/b;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/DownloadTasks;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/DownloadTasks;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/b;->l:Lcom/duoku/platform/download/utils/DownloadTasks;

    .line 791
    :cond_12
    sget-object v0, Lcom/duoku/platform/b;->l:Lcom/duoku/platform/download/utils/DownloadTasks;

    return-object v0
.end method

.method public p()V
    .registers 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/duoku/platform/b;->m:Lcom/duoku/platform/floatview/DKFloatWindow;

    if-eqz v0, :cond_c

    .line 803
    iget-object v0, p0, Lcom/duoku/platform/b;->m:Lcom/duoku/platform/floatview/DKFloatWindow;

    invoke-virtual {v0}, Lcom/duoku/platform/floatview/DKFloatWindow;->h()V

    .line 804
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/b;->m:Lcom/duoku/platform/floatview/DKFloatWindow;

    .line 806
    :cond_c
    return-void
.end method
