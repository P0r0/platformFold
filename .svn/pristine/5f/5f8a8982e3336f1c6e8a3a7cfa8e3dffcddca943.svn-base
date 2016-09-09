.class public Lcom/duoku/platform/ui/DKDownloadManagerActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/duoku/platform/download/apapter/TabPagerAdapter$PageCallback;
.implements Lcom/duoku/platform/view/NewSegmentedLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/ui/DKDownloadManagerActivity$a;,
        Lcom/duoku/platform/ui/DKDownloadManagerActivity$PackageIntentReceiver;
    }
.end annotation


# instance fields
.field a:Lcom/duoku/platform/ui/DKDownloadManagerActivity$PackageIntentReceiver;

.field b:Ljava/lang/String;

.field c:Z

.field d:Landroid/view/View$OnTouchListener;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Lcom/duoku/platform/view/NewSegmentedLayout;

.field private g:Lcom/duoku/platform/ui/b;

.field private h:Lcom/duoku/platform/ui/b;

.field private i:Lcom/duoku/platform/ui/b;

.field private j:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->a:Lcom/duoku/platform/ui/DKDownloadManagerActivity$PackageIntentReceiver;

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->c:Z

    .line 675
    new-instance v0, Lcom/duoku/platform/ui/DKDownloadManagerActivity$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity$1;-><init>(Lcom/duoku/platform/ui/DKDownloadManagerActivity;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->d:Landroid/view/View$OnTouchListener;

    .line 50
    return-void
.end method

.method private a(Landroid/support/v4/view/ViewPager;)V
    .registers 6

    .prologue
    .line 540
    :try_start_0
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 541
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 542
    new-instance v1, Lcom/duoku/platform/ui/DKDownloadManagerActivity$a;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-direct {v1, p0, v2, v3}, Lcom/duoku/platform/ui/DKDownloadManagerActivity$a;-><init>(Lcom/duoku/platform/ui/DKDownloadManagerActivity;Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 544
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_1d} :catch_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1d} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 556
    :goto_1d
    return-void

    .line 552
    :catch_1e
    move-exception v0

    goto :goto_1d

    .line 549
    :catch_20
    move-exception v0

    goto :goto_1d

    .line 546
    :catch_22
    move-exception v0

    goto :goto_1d
.end method

.method static synthetic a(Lcom/duoku/platform/ui/DKDownloadManagerActivity;)V
    .registers 1

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->g()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/ui/DKDownloadManagerActivity;[Ljava/lang/Integer;)V
    .registers 2

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->a([Ljava/lang/Integer;)V

    return-void
.end method

.method private a([Ljava/lang/Integer;)V
    .registers 2

    .prologue
    .line 332
    return-void
.end method

.method private b()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    .line 209
    :try_start_2
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_42

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 213
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->b:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->b:Ljava/lang/String;

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-static {p0}, Lcom/duoku/platform/download/utils/DeviceUtil;->checkStorageState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 218
    iget-object v1, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->a(Ljava/lang/String;)Lcom/duoku/platform/download/mode/DownloadItemInput;

    move-result-object v1

    .line 219
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/duoku/platform/download/mode/DownloadItemInput;->setExternal(Z)V

    .line 220
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/duoku/platform/download/utils/PackageHelper;->download(Lcom/duoku/platform/download/mode/DownloadItemInput;Lcom/duoku/platform/download/listener/DownloadCallback;)V

    .line 224
    :cond_42
    const-string v1, "notification_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 225
    cmp-long v1, v2, v4

    if-lez v1, :cond_6a

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->c:Z

    .line 241
    :cond_51
    :goto_51
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_69

    .line 242
    const-string v0, "ManagerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ManagerActivity getArgs notifierId "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_69
    :goto_69
    return-void

    .line 233
    :cond_6a
    const-string v1, "notification_update"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->c:Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_76} :catch_77

    goto :goto_51

    .line 244
    :catch_77
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69
.end method

.method private c()V
    .registers 3

    .prologue
    .line 264
    new-instance v0, Lcom/duoku/platform/ui/DKDownloadManagerActivity$2;

    invoke-direct {v0, p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity$2;-><init>(Lcom/duoku/platform/ui/DKDownloadManagerActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 310
    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/DKDownloadManagerActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 311
    return-void
.end method

.method private d()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 483
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->e()V

    .line 484
    const-string v0, "manager_segment_layout"

    invoke-static {p0, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/NewSegmentedLayout;

    iput-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->f:Lcom/duoku/platform/view/NewSegmentedLayout;

    .line 485
    const-string v0, "manager_activity_pager"

    invoke-static {p0, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->e:Landroid/support/v4/view/ViewPager;

    .line 486
    const-string v0, "dk_tv_title"

    invoke-static {p0, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 487
    const-string v1, "dk_tab_download_manager_download"

    invoke-static {p0, v1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 488
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->e:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/duoku/platform/download/apapter/TabPagerAdapter;

    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/duoku/platform/download/apapter/TabPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/duoku/platform/download/apapter/TabPagerAdapter$PageCallback;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 489
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->a(Landroid/support/v4/view/ViewPager;)V

    .line 490
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->f:Lcom/duoku/platform/view/NewSegmentedLayout;

    invoke-virtual {v0, p0}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(Lcom/duoku/platform/view/NewSegmentedLayout$b;)V

    .line 491
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 492
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->d:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 494
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->f:Lcom/duoku/platform/view/NewSegmentedLayout;

    invoke-virtual {v0}, Lcom/duoku/platform/view/NewSegmentedLayout;->a()I

    move-result v0

    .line 495
    packed-switch v0, :pswitch_data_78

    .line 507
    :goto_62
    return-void

    .line 498
    :pswitch_63
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_62

    .line 501
    :pswitch_69
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_62

    .line 504
    :pswitch_70
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_62

    .line 495
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_63
        :pswitch_69
        :pswitch_70
    .end packed-switch
.end method

.method private e()V
    .registers 3

    .prologue
    .line 514
    const-string v0, "dk_iv_payment_back"

    invoke-static {p0, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 515
    const-string v1, "dk_payment_iv_close"

    invoke-static {p0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 516
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 525
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 526
    const-class v1, Lcom/duoku/platform/download/DownloadService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 527
    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 528
    return-void
.end method

.method private g()V
    .registers 1

    .prologue
    .line 693
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/duoku/platform/download/mode/DownloadItemInput;
    .registers 22

    .prologue
    .line 253
    const-string v2, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 254
    new-instance v2, Lcom/duoku/platform/download/mode/DownloadItemInput;

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    const-string v17, ""

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v6, v5

    move-object v7, v5

    move-object/from16 v10, p1

    invoke-direct/range {v2 .. v19}, Lcom/duoku/platform/download/mode/DownloadItemInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;ZZ)V

    .line 256
    return-object v2
.end method

.method protected a()V
    .registers 1

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->c()V

    .line 198
    return-void
.end method

.method public a(II)V
    .registers 6

    .prologue
    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->j:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez p2, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    return-void

    .line 315
    :cond_2c
    const-string v0, ""

    goto :goto_24
.end method

.method public a(Lcom/duoku/platform/view/NewSegmentedLayout;I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 640
    const-string v0, "manager_segment_download"

    invoke-static {p0, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_f

    .line 642
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 652
    :cond_e
    :goto_e
    return-void

    .line 644
    :cond_f
    const-string v0, "manager_segment_update"

    invoke-static {p0, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_1e

    .line 646
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_e

    .line 648
    :cond_1e
    const-string v0, "manager_segment_installed"

    invoke-static {p0, v0}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_e

    .line 650
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_e
.end method

.method protected a(Z)V
    .registers 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->a()V

    .line 188
    return-void
.end method

.method protected b(Z)V
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->a()V

    .line 193
    return-void
.end method

.method public getFragment(I)Landroid/support/v4/app/Fragment;
    .registers 3

    .prologue
    .line 591
    packed-switch p1, :pswitch_data_24

    .line 605
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 594
    :pswitch_5
    new-instance v0, Lcom/duoku/platform/ui/b;

    invoke-direct {v0}, Lcom/duoku/platform/ui/b;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->g:Lcom/duoku/platform/ui/b;

    .line 595
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->g:Lcom/duoku/platform/ui/b;

    goto :goto_4

    .line 597
    :pswitch_f
    new-instance v0, Lcom/duoku/platform/ui/b;

    invoke-direct {v0}, Lcom/duoku/platform/ui/b;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->h:Lcom/duoku/platform/ui/b;

    .line 598
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->h:Lcom/duoku/platform/ui/b;

    goto :goto_4

    .line 600
    :pswitch_19
    new-instance v0, Lcom/duoku/platform/ui/b;

    invoke-direct {v0}, Lcom/duoku/platform/ui/b;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->i:Lcom/duoku/platform/ui/b;

    .line 601
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->i:Lcom/duoku/platform/ui/b;

    goto :goto_4

    .line 591
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_5
        :pswitch_f
        :pswitch_19
    .end packed-switch
.end method

.method public getPageCount()I
    .registers 2

    .prologue
    .line 614
    const/4 v0, 0x1

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->j:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 460
    const/16 v0, 0x64

    if-ne p1, v0, :cond_6

    .line 463
    if-eqz p2, :cond_6

    .line 475
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 476
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 657
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "img_back"

    invoke-static {p0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 663
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->finish()V

    .line 673
    :cond_f
    :goto_f
    return-void

    .line 665
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "dk_payment_iv_close"

    invoke-static {p0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 667
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->finish()V

    goto :goto_f

    .line 669
    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "dk_iv_payment_back"

    invoke-static {p0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 671
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->finish()V

    goto :goto_f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 73
    const-string v2, "dk_tab_download_manager_download"

    invoke-static {p0, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dk_tab_download_manager_update"

    invoke-static {p0, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 74
    const-string v2, "dk_tab_download_manager_installed"

    invoke-static {p0, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 71
    iput-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->j:[Ljava/lang/String;

    .line 76
    const-string v0, "dk_downloadmanager_activity"

    invoke-static {p0, v0}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->setContentView(I)V

    .line 77
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->f()V

    .line 78
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->d()V

    .line 80
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->b()V

    .line 82
    new-instance v0, Lcom/duoku/platform/ui/DKDownloadManagerActivity$PackageIntentReceiver;

    invoke-direct {v0, p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity$PackageIntentReceiver;-><init>(Lcom/duoku/platform/ui/DKDownloadManagerActivity;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->a:Lcom/duoku/platform/ui/DKDownloadManagerActivity$PackageIntentReceiver;

    .line 83
    invoke-static {}, Lcom/duoku/platform/download/utils/Notifier;->cancleNotifyUpdatableList()V

    .line 85
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 337
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 340
    :try_start_3
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->a:Lcom/duoku/platform/ui/DKDownloadManagerActivity$PackageIntentReceiver;

    if-eqz v0, :cond_f

    .line 342
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->a:Lcom/duoku/platform/ui/DKDownloadManagerActivity$PackageIntentReceiver;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->a:Lcom/duoku/platform/ui/DKDownloadManagerActivity$PackageIntentReceiver;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    .line 359
    :cond_f
    :goto_f
    return-void

    .line 346
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 378
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 380
    iget-boolean v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->c:Z

    if-eqz v0, :cond_9

    .line 383
    const/4 v0, 0x1

    .line 386
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 368
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    .line 372
    invoke-direct {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->b()V

    .line 373
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    .prologue
    .line 621
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .prologue
    .line 626
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->f:Lcom/duoku/platform/view/NewSegmentedLayout;

    invoke-virtual {v0, p1}, Lcom/duoku/platform/view/NewSegmentedLayout;->a(I)V

    .line 632
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 93
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 102
    invoke-virtual {p0}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_23

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->c:Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_27

    .line 111
    :cond_23
    :goto_23
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 112
    return-void

    .line 107
    :catch_27
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method
