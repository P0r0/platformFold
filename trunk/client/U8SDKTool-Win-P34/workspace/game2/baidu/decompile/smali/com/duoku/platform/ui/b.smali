.class public Lcom/duoku/platform/ui/b;
.super Lcom/duoku/platform/ui/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/ui/b$a;,
        Lcom/duoku/platform/ui/b$b;,
        Lcom/duoku/platform/ui/b$c;,
        Lcom/duoku/platform/ui/b$d;,
        Lcom/duoku/platform/ui/b$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duoku/platform/ui/a",
        "<",
        "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Lcom/duoku/platform/download/DownloadConfiguration$DownloadListener;"
    }
.end annotation


# instance fields
.field c:Landroid/widget/LinearLayout;

.field d:Ljava/lang/String;

.field public e:Lcom/duoku/platform/download/worker/DowloadAppsLoader;

.field f:Landroid/os/Handler;

.field g:Landroid/content/BroadcastReceiver;

.field h:Z

.field i:Lcom/duoku/platform/ui/b$c;

.field j:Lcom/duoku/platform/ui/b$d;

.field k:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/content/Context;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ListView;

.field private o:Landroid/app/Dialog;

.field private p:Landroid/app/Dialog;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Z

.field private t:Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/duoku/platform/ui/a;-><init>()V

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->d:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/duoku/platform/ui/b$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/ui/b$1;-><init>(Lcom/duoku/platform/ui/b;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->f:Landroid/os/Handler;

    .line 191
    new-instance v0, Lcom/duoku/platform/ui/b$2;

    invoke-direct {v0, p0}, Lcom/duoku/platform/ui/b$2;-><init>(Lcom/duoku/platform/ui/b;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->g:Landroid/content/BroadcastReceiver;

    .line 269
    iput-boolean v1, p0, Lcom/duoku/platform/ui/b;->h:Z

    .line 270
    new-instance v0, Lcom/duoku/platform/ui/b$c;

    invoke-direct {v0, p0}, Lcom/duoku/platform/ui/b$c;-><init>(Lcom/duoku/platform/ui/b;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->i:Lcom/duoku/platform/ui/b$c;

    .line 768
    new-instance v0, Lcom/duoku/platform/ui/b$d;

    invoke-direct {v0, p0}, Lcom/duoku/platform/ui/b$d;-><init>(Lcom/duoku/platform/ui/b;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->j:Lcom/duoku/platform/ui/b$d;

    .line 1728
    new-instance v0, Lcom/duoku/platform/ui/b$3;

    invoke-direct {v0, p0}, Lcom/duoku/platform/ui/b$3;-><init>(Lcom/duoku/platform/ui/b;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->k:Ljava/util/Comparator;

    .line 1838
    iput-boolean v1, p0, Lcom/duoku/platform/ui/b;->s:Z

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/ui/b;Ljava/util/List;)Ljava/util/List;
    .registers 3

    .prologue
    .line 1694
    invoke-direct {p0, p1}, Lcom/duoku/platform/ui/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 6

    .prologue
    .line 488
    invoke-virtual {p2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/duoku/platform/ui/b;->i:Lcom/duoku/platform/ui/b$c;

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/download/utils/PackageHelper;->restartDownload(JLcom/duoku/platform/download/listener/DownloadCallback;)V

    .line 491
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 10

    .prologue
    .line 818
    if-nez p1, :cond_3

    .line 845
    :cond_2
    :goto_2
    return-void

    .line 822
    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 823
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_36

    .line 832
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [J

    .line 833
    const/4 v0, 0x0

    .line 834
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_58

    .line 839
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 843
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->i:Lcom/duoku/platform/ui/b$c;

    invoke-static {v0, v3}, Lcom/duoku/platform/download/utils/PackageHelper;->resumeDownload(Lcom/duoku/platform/download/listener/DownloadCallback;[J)V

    goto :goto_2

    .line 825
    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 827
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v3

    sget-object v4, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_PAUSED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-eq v3, v4, :cond_4c

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v3

    sget-object v4, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_FAILED:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-ne v3, v4, :cond_12

    .line 829
    :cond_4c
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 834
    :cond_58
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 836
    aput-wide v6, v3, v1

    .line 837
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24
.end method

.method private a(Landroid/view/View;Landroid/widget/TextView;I)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 965
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0, p3}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 966
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getApkStatus()I

    move-result v1

    .line 967
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getIsCancelDownload()Z

    move-result v2

    .line 968
    if-nez v2, :cond_db

    .line 970
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setIsCancelDownload(Z)V

    .line 971
    const/16 v2, 0x1000

    if-ne v1, v2, :cond_44

    .line 973
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duoku/platform/download/utils/AppUtil;->getLauncherIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/duoku/platform/ui/b;->a(ZLandroid/content/Intent;)Z

    .line 975
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "39"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 976
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v2, "cp_download_open"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1008
    :goto_43
    return-void

    .line 978
    :cond_44
    const/16 v0, 0x200

    if-eq v1, v0, :cond_64

    const/16 v0, 0x100

    if-eq v1, v0, :cond_64

    const/16 v0, 0x80

    if-eq v1, v0, :cond_64

    const/16 v0, 0x400

    if-eq v1, v0, :cond_64

    .line 979
    const/16 v0, 0x800

    if-eq v1, v0, :cond_64

    const/16 v0, 0x40

    if-eq v1, v0, :cond_64

    const/high16 v0, 0x40000

    if-eq v1, v0, :cond_64

    const/high16 v0, 0x80000

    if-ne v1, v0, :cond_9f

    .line 981
    :cond_64
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "dk_delete_download_file"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 982
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "dk_ad_off_file"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 984
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 985
    invoke-virtual {p2, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 986
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 987
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->notifyDataSetChanged()V

    .line 988
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->n:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_43

    .line 992
    :cond_9f
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "dk_cancel_download_file"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 993
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 994
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "dk_ad_canceloff_file"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 996
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 997
    invoke-virtual {p2, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 998
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->notifyDataSetChanged()V

    .line 999
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->n:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_43

    .line 1004
    :cond_db
    invoke-virtual {v0, v3}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->setIsCancelDownload(Z)V

    .line 1005
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1006
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_43
.end method

.method private a(Lcom/duoku/platform/download/PackageMode;)V
    .registers 4

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->j:Lcom/duoku/platform/ui/b$d;

    new-instance v1, Lcom/duoku/platform/ui/b$7;

    invoke-direct {v1, p0, p1}, Lcom/duoku/platform/ui/b$7;-><init>(Lcom/duoku/platform/ui/b;Lcom/duoku/platform/download/PackageMode;)V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b$d;->post(Ljava/lang/Runnable;)Z

    .line 2071
    return-void
.end method

.method private a(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 4

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/duoku/platform/ui/b;->h:Z

    if-eqz v0, :cond_7

    .line 429
    invoke-direct {p0, p1}, Lcom/duoku/platform/ui/b;->c(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    .line 431
    :cond_7
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/duoku/platform/download/utils/PackageHelper;->pauseDownloadGames(J)V

    .line 432
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/ui/b;)V
    .registers 1

    .prologue
    .line 1563
    invoke-direct {p0}, Lcom/duoku/platform/ui/b;->j()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/ui/b;J)V
    .registers 4

    .prologue
    .line 2000
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/ui/b;->b(J)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/ui/b;Lcom/duoku/platform/download/PackageMode;)V
    .registers 2

    .prologue
    .line 2031
    invoke-direct {p0, p1}, Lcom/duoku/platform/ui/b;->a(Lcom/duoku/platform/download/PackageMode;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/ui/b;Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 2

    .prologue
    .line 1141
    invoke-direct {p0, p1}, Lcom/duoku/platform/ui/b;->g(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/ui/b;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lcom/duoku/platform/ui/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/ui/b;Z)V
    .registers 2

    .prologue
    .line 1838
    iput-boolean p1, p0, Lcom/duoku/platform/ui/b;->s:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 743
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 744
    if-nez v0, :cond_9

    .line 766
    :goto_8
    return-void

    .line 746
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 756
    :goto_13
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->notifyDataSetChanged()V

    .line 758
    invoke-direct {p0}, Lcom/duoku/platform/ui/b;->h()V

    .line 759
    invoke-direct {p0}, Lcom/duoku/platform/ui/b;->j()V

    goto :goto_8

    .line 748
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 749
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 751
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_13
.end method

.method private a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->j:Lcom/duoku/platform/ui/b$d;

    new-instance v1, Lcom/duoku/platform/ui/b$5;

    invoke-direct {v1, p0, p1}, Lcom/duoku/platform/ui/b$5;-><init>(Lcom/duoku/platform/ui/b;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b$d;->post(Ljava/lang/Runnable;)Z

    .line 1686
    return-void
.end method

.method private a(I)Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/DeviceUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 401
    if-nez v1, :cond_1c

    .line 403
    iget-object v1, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v2, "alert_network_inavailble"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/duoku/platform/ui/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    .line 417
    :goto_1b
    return v0

    .line 407
    :cond_1c
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/DeviceUtil;->getActiveNetworkType(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    .line 408
    invoke-static {}, Lcom/duoku/platform/download/utils/MineProfile;->getInstance()Lcom/duoku/platform/download/utils/MineProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/download/utils/MineProfile;->isDownloadOnlyWithWiFi()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 410
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3f

    .line 413
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1, v3, v3, v1}, Lcom/duoku/platform/view/f;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_1b

    .line 417
    :cond_3f
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method private a(ILcom/duoku/platform/download/mode/DownloadAppInfo;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 377
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/DeviceUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 378
    if-nez v1, :cond_1c

    .line 380
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v1, "dk_download_request_net_error_tip"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoku/platform/ui/b;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x0

    .line 394
    :cond_1b
    :goto_1b
    return v0

    .line 384
    :cond_1c
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/DeviceUtil;->getActiveNetworkType(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    .line 385
    invoke-static {}, Lcom/duoku/platform/download/utils/MineProfile;->getInstance()Lcom/duoku/platform/download/utils/MineProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/download/utils/MineProfile;->isDownloadOnlyWithWiFi()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 387
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1b

    .line 390
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "dk_network_non_wifi"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/CustomToast;->showToast(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private a(J)Z
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 1971
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v4

    .line 1972
    if-nez v4, :cond_b

    move v0, v2

    .line 1992
    :goto_a
    return v0

    .line 1976
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1977
    const/4 v1, 0x0

    move v3, v2

    .line 1978
    :goto_11
    if-lt v3, v5, :cond_37

    .line 1986
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getApkStatus()I

    move-result v0

    const/16 v3, 0x200

    if-eq v0, v3, :cond_2d

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getApkStatus()I

    move-result v0

    const/16 v3, 0x40

    if-eq v0, v3, :cond_2d

    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getApkStatus()I

    move-result v0

    const/high16 v3, 0x80000

    if-ne v0, v3, :cond_4a

    .line 1988
    :cond_2d
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->remove(Ljava/lang/Object;)V

    .line 1989
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1990
    const/4 v0, 0x1

    goto :goto_a

    .line 1980
    :cond_37
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1981
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-nez v6, :cond_4c

    .line 1978
    :goto_45
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_11

    :cond_4a
    move v0, v2

    .line 1992
    goto :goto_a

    :cond_4c
    move-object v0, v1

    goto :goto_45
.end method

.method private a(ZLandroid/content/Intent;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 671
    if-nez p2, :cond_4

    .line 693
    :goto_3
    return v0

    .line 676
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 677
    if-nez p1, :cond_d

    .line 685
    invoke-virtual {v1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_f

    .line 693
    :cond_d
    const/4 v0, 0x1

    goto :goto_3

    .line 688
    :catch_f
    move-exception v1

    .line 690
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method static synthetic b(Lcom/duoku/platform/ui/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1697
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1699
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1700
    const-string v0, "original:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1701
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1705
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 1722
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->k:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1723
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1724
    return-object p1

    .line 1701
    :cond_2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1703
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 1707
    :cond_4f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1708
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    .line 1709
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getReason()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadReason;

    .line 1711
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getApkStatus()I

    move-result v3

    .line 1713
    if-eqz v0, :cond_79

    .line 1714
    const/16 v4, 0x200

    if-eq v3, v4, :cond_7d

    const/16 v4, 0x400

    if-eq v3, v4, :cond_7d

    const/16 v4, 0x100

    if-eq v3, v4, :cond_7d

    const/16 v4, 0x800

    if-eq v3, v4, :cond_7d

    .line 1715
    const/16 v4, 0x40

    if-eq v3, v4, :cond_7d

    const/high16 v4, 0x80000

    if-eq v3, v4, :cond_7d

    :cond_79
    const/16 v4, 0x1000

    if-ne v3, v4, :cond_1d

    .line 1717
    :cond_7d
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1718
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1d
.end method

.method private b()V
    .registers 6

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getView()Landroid/view/View;

    move-result-object v1

    .line 243
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v2, "manager_download_downloadall"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 244
    iget-object v2, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v3, "manager_download_pauseall"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 245
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v2, "manager_activity_download_list"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->n:Landroid/widget/ListView;

    .line 249
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->n:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v3, "download_null"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 251
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v2, "manager_download_list_progressbar"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->m:Landroid/view/View;

    .line 254
    new-instance v0, Lcom/duoku/platform/download/apapter/DownloadAdapter;

    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/duoku/platform/download/apapter/DownloadAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    .line 255
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0, p0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->setOnListItemClickListener(Lcom/duoku/platform/download/apapter/AbstractListAdapter$OnListItemClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->n:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->n:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 258
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->n:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v2, "manager_activity_download_hint_text"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->q:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->q:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v3, "red_notify_plain_text"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->r:Landroid/widget/TextView;

    .line 263
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->q:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v3, "red_notify_red_text"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->q:Landroid/view/View;

    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v4, "dk_listview_header_background"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 266
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v2, "manager_pager"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->c:Landroid/widget/LinearLayout;

    .line 267
    return-void
.end method

.method private b(ILcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 6

    .prologue
    .line 539
    const/16 v0, 0xc9

    invoke-direct {p0, p1, p2, v0}, Lcom/duoku/platform/ui/b;->a(ILcom/duoku/platform/download/mode/DownloadAppInfo;I)Z

    move-result v0

    .line 540
    if-nez v0, :cond_9

    .line 552
    :goto_8
    return-void

    .line 544
    :cond_9
    iget-boolean v0, p0, Lcom/duoku/platform/ui/b;->h:Z

    if-eqz v0, :cond_10

    .line 546
    invoke-direct {p0, p2}, Lcom/duoku/platform/ui/b;->d(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    .line 548
    :cond_10
    invoke-virtual {p2}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/duoku/platform/ui/b;->i:Lcom/duoku/platform/ui/b$c;

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/download/utils/PackageHelper;->resumeDownload(JLcom/duoku/platform/download/listener/DownloadCallback;)V

    goto :goto_8
.end method

.method private b(J)V
    .registers 6

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->j:Lcom/duoku/platform/ui/b$d;

    new-instance v1, Lcom/duoku/platform/ui/b$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/duoku/platform/ui/b$6;-><init>(Lcom/duoku/platform/ui/b;J)V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b$d;->post(Ljava/lang/Runnable;)Z

    .line 2029
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .registers 7

    .prologue
    const/4 v1, -0x1

    .line 849
    const-string v0, "arg_extra"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 850
    if-ne v0, v1, :cond_a

    .line 878
    :cond_9
    :goto_9
    return-void

    .line 855
    :cond_a
    const-string v0, "arg2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 856
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v1

    .line 857
    if-eqz v1, :cond_9

    .line 861
    const/4 v0, 0x0

    .line 862
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_30

    .line 870
    if-eqz v1, :cond_9

    .line 873
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/duoku/platform/ui/b;->i:Lcom/duoku/platform/ui/b$c;

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/download/utils/PackageHelper;->resumeDownload(JLcom/duoku/platform/download/listener/DownloadCallback;)V

    goto :goto_9

    .line 862
    :cond_30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 864
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object v1, v0

    .line 866
    goto :goto_1e
.end method

.method private b(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 22

    .prologue
    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getMergeFailedCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_5a

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/duoku/platform/download/utils/AppManager;->getUpdatableGame(Ljava/lang/String;)Lcom/duoku/platform/download/mode/UpdatableAppInfo;

    move-result-object v12

    .line 451
    new-instance v2, Lcom/duoku/platform/download/mode/DownloadItemInput;

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersionInt()I

    move-result v8

    .line 452
    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v12}, Lcom/duoku/platform/download/mode/UpdatableAppInfo;->getNewSize()J

    move-result-wide v12

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getExtra()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isNeedLogin()Z

    move-result v18

    const/16 v19, 0x0

    .line 451
    invoke-direct/range {v2 .. v19}, Lcom/duoku/platform/download/mode/DownloadItemInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;ZZ)V

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/duoku/platform/ui/b;->i:Lcom/duoku/platform/ui/b$c;

    invoke-static {v4, v5, v2, v3}, Lcom/duoku/platform/download/utils/PackageHelper;->restartDownloadNormally(JLcom/duoku/platform/download/mode/DownloadItemInput;Lcom/duoku/platform/download/listener/DownloadCallback;)V

    .line 460
    :goto_59
    return-void

    .line 458
    :cond_5a
    invoke-virtual/range {p1 .. p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/duoku/platform/download/utils/PackageHelper;->sendMergeRequestFromUI(J)V

    goto :goto_59
.end method

.method static synthetic b(Lcom/duoku/platform/ui/b;J)Z
    .registers 4

    .prologue
    .line 1969
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/ui/b;->a(J)Z

    move-result v0

    return v0
.end method

.method private c()V
    .registers 7

    .prologue
    .line 495
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 496
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 497
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 511
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3d

    .line 528
    :cond_1b
    :goto_1b
    return-void

    .line 497
    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 500
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getApkStatus()I

    move-result v3

    .line 501
    const/16 v4, 0x20

    if-eq v3, v4, :cond_31

    const/16 v4, 0x10

    if-eq v3, v4, :cond_31

    const/4 v4, 0x4

    if-ne v3, v4, :cond_f

    .line 503
    :cond_31
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 515
    :cond_3d
    const/16 v0, 0xca

    invoke-direct {p0, v0}, Lcom/duoku/platform/ui/b;->a(I)Z

    move-result v0

    .line 516
    if-eqz v0, :cond_1b

    .line 518
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    .line 519
    const/4 v0, 0x0

    .line 520
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 525
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->i:Lcom/duoku/platform/ui/b$c;

    invoke-static {v0, v2}, Lcom/duoku/platform/download/utils/PackageHelper;->resumeDownload(Lcom/duoku/platform/download/listener/DownloadCallback;[J)V

    goto :goto_1b

    .line 520
    :cond_5d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 522
    aput-wide v4, v2, v1

    .line 523
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_51
.end method

.method private c(Landroid/content/Intent;)V
    .registers 7

    .prologue
    const/4 v1, -0x1

    .line 883
    const-string v0, "arg_extra"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 884
    if-ne v0, v1, :cond_a

    .line 910
    :cond_9
    :goto_9
    return-void

    .line 888
    :cond_a
    const-string v0, "arg2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 889
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v1

    .line 890
    if-eqz v1, :cond_9

    .line 894
    const/4 v0, 0x0

    .line 895
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_30

    .line 903
    if-eqz v1, :cond_9

    .line 905
    invoke-virtual {v1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/duoku/platform/ui/b;->i:Lcom/duoku/platform/ui/b$c;

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/download/utils/PackageHelper;->restartDownload(JLcom/duoku/platform/download/listener/DownloadCallback;)V

    goto :goto_9

    .line 895
    :cond_30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 897
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object v1, v0

    .line 899
    goto :goto_1e
.end method

.method private c(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 8

    .prologue
    .line 556
    const-string v0, "Pause download for %s,is diff update? %s,downloadId:%s,apk status:%s"

    .line 557
    const-string v1, "DownloadAppListFragment"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isDiffUpdate()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getApkStatus()I

    move-result v4

    invoke-static {v4}, Lcom/duoku/platform/download/PackageMode;->getStatusString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/ui/b;)V
    .registers 1

    .prologue
    .line 1120
    invoke-direct {p0}, Lcom/duoku/platform/ui/b;->e()V

    return-void
.end method

.method private c(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1761
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 1763
    :cond_8
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 1764
    const-string v0, "DownloadAppListFragment"

    const-string v1, "[Download List is empty]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :cond_13
    return-void

    .line 1768
    :cond_14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1769
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1771
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    .line 1772
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1773
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v3

    .line 1774
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getCurrentBytes()J

    move-result-wide v4

    .line 1775
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getTotalBytes()J

    move-result-wide v6

    .line 1776
    invoke-virtual {v0}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getDownloadId()J

    move-result-wide v8

    .line 1777
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1778
    const/4 v10, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v0, v10

    .line 1779
    const/4 v8, 0x1

    aput-object v2, v0, v8

    .line 1780
    const/4 v2, 0x2

    aput-object v3, v0, v2

    .line 1781
    const/4 v2, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1782
    const/4 v2, 0x4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1783
    const-string v2, "DownloadAppListFragment"

    const-string v3, "[Download List item:id=%d,title=%s,status=%s,current=%d,total=%d]"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private d()V
    .registers 6

    .prologue
    const/4 v4, -0x2

    .line 1096
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->p:Landroid/app/Dialog;

    if-nez v0, :cond_73

    .line 1098
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v3, "dk_dialog_style_zoom"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->p:Landroid/app/Dialog;

    .line 1099
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->p:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1100
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v2, "dk_custom_delete_confirm_dialog_layout"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1101
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v1, "progress_message_body"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1103
    const-string v1, "\u786e\u5b9a\u8981\u5168\u90e8\u53d6\u6d88\u6240\u6709\u4e0b\u8f7d\u4efb\u52a1?"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v1, "dialog_button_left"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1106
    iget-object v1, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v3, "dialog_button_right"

    invoke-static {v1, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1107
    new-instance v3, Lcom/duoku/platform/ui/b$a;

    invoke-direct {v3, p0}, Lcom/duoku/platform/ui/b$a;-><init>(Lcom/duoku/platform/ui/b;)V

    .line 1108
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1111
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->p:Landroid/app/Dialog;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1114
    :cond_73
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->p:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1115
    return-void
.end method

.method private d(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 7

    .prologue
    .line 563
    const-string v0, "Resume Download for %s,is diff update? %s,apk status:%s"

    .line 564
    const-string v1, "DownloadAppListFragment"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isDiffUpdate()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getApkStatus()I

    move-result v4

    invoke-static {v4}, Lcom/duoku/platform/download/PackageMode;->getStatusString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/ui/b;)V
    .registers 1

    .prologue
    .line 1168
    invoke-direct {p0}, Lcom/duoku/platform/ui/b;->g()V

    return-void
.end method

.method private e()V
    .registers 2

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->o:Landroid/app/Dialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/duoku/platform/ui/b;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1124
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->o:Landroid/app/Dialog;

    .line 1127
    :cond_14
    return-void
.end method

.method private e(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 5

    .prologue
    .line 699
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getSaveDest()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/download/utils/PackageHelper;->installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/ui/b;)V
    .registers 1

    .prologue
    .line 1132
    invoke-direct {p0}, Lcom/duoku/platform/ui/b;->f()V

    return-void
.end method

.method static synthetic f(Lcom/duoku/platform/ui/b;)Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->n:Landroid/widget/ListView;

    return-object v0
.end method

.method private f()V
    .registers 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->p:Landroid/app/Dialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/duoku/platform/ui/b;->p:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1136
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->p:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->p:Landroid/app/Dialog;

    .line 1139
    :cond_14
    return-void
.end method

.method private f(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 7

    .prologue
    const/4 v4, -0x2

    .line 1075
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v3, "dk_dialog_style_zoom"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->o:Landroid/app/Dialog;

    .line 1076
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->o:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1077
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v2, "dk_custom_delete_confirm_dialog_layout"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1078
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v1, "dialog_button_left"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1079
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1080
    iget-object v1, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v3, "dialog_button_right"

    invoke-static {v1, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1081
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1082
    new-instance v3, Lcom/duoku/platform/ui/b$b;

    invoke-direct {v3, p0}, Lcom/duoku/platform/ui/b$b;-><init>(Lcom/duoku/platform/ui/b;)V

    .line 1083
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1084
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->o:Landroid/app/Dialog;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1088
    return-void
.end method

.method private g()V
    .registers 9

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 1171
    if-nez v0, :cond_9

    .line 1219
    :cond_8
    return-void

    .line 1175
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1188
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1189
    if-eqz v3, :cond_8

    .line 1196
    new-array v4, v3, [J

    .line 1197
    const/4 v0, 0x0

    move v1, v0

    :goto_22
    if-ge v1, v3, :cond_8

    .line 1199
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v6

    aput-wide v6, v4, v1

    .line 1197
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 1176
    :cond_34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1178
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getApkStatus()I

    move-result v3

    .line 1183
    const/16 v4, 0x8

    if-eq v3, v4, :cond_4d

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4d

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4d

    const/16 v4, 0x20

    if-ne v3, v4, :cond_12

    .line 1185
    :cond_4d
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method

.method private g(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V
    .registers 6

    .prologue
    .line 1149
    invoke-virtual {p1}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 1154
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/duoku/platform/ui/b$4;

    invoke-direct {v1, p0, p1}, Lcom/duoku/platform/ui/b$4;-><init>(Lcom/duoku/platform/ui/b;Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1163
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1166
    :cond_17
    return-void
.end method

.method private h()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 1494
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 1495
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_28

    .line 1497
    :cond_10
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->q:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1498
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->r:Landroid/widget/TextView;

    const-string v1, "\u6ca1\u6709\u6b63\u5728\u4e0b\u8f7d\u7684\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1499
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1500
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1509
    :cond_27
    :goto_27
    return-void

    .line 1504
    :cond_28
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1505
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getCount()I

    move-result v1

    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    check-cast v0, Lcom/duoku/platform/download/apapter/DownloadAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/DownloadAdapter;->getSuccessfulCount()I

    move-result v0

    if-eq v1, v0, :cond_27

    .line 1507
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_27
.end method

.method private i()V
    .registers 1

    .prologue
    .line 1547
    return-void
.end method

.method private j()V
    .registers 3

    .prologue
    .line 1565
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1566
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1567
    iget-object v1, p0, Lcom/duoku/platform/ui/b;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1568
    return-void
.end method

.method private k()V
    .registers 2

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->t:Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;

    if-nez v0, :cond_10

    .line 2080
    new-instance v0, Lcom/duoku/platform/ui/b$e;

    invoke-direct {v0, p0}, Lcom/duoku/platform/ui/b$e;-><init>(Lcom/duoku/platform/ui/b;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->t:Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;

    .line 2081
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->t:Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->registerPackageStatusChangeObserver(Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;)V

    .line 2084
    :cond_10
    return-void
.end method

.method private l()V
    .registers 3

    .prologue
    .line 2093
    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->t:Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;

    if-nez v0, :cond_9

    .line 2095
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->t:Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;

    invoke-static {v0}, Lcom/duoku/platform/download/utils/PackageHelper;->unregisterPackageStatusChangeObserver(Lcom/duoku/platform/download/utils/PackageHelper$PackageCallback;)V

    .line 2098
    :cond_9
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 2104
    :goto_12
    return-void

    .line 2100
    :catch_13
    move-exception v0

    .line 2102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1515
    invoke-direct {p0}, Lcom/duoku/platform/ui/b;->i()V

    .line 1516
    if-eqz p2, :cond_25

    .line 1518
    invoke-direct {p0, p2}, Lcom/duoku/platform/ui/b;->b(Ljava/util/List;)Ljava/util/List;

    .line 1519
    invoke-super {p0, p1, p2}, Lcom/duoku/platform/ui/a;->a(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    .line 1525
    :goto_b
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1526
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1527
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1528
    invoke-direct {p0}, Lcom/duoku/platform/ui/b;->h()V

    .line 1530
    invoke-direct {p0}, Lcom/duoku/platform/ui/b;->j()V

    .line 1532
    return-void

    .line 1523
    :cond_25
    invoke-super {p0, p1, p2}, Lcom/duoku/platform/ui/a;->a(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    goto :goto_b
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/duoku/platform/ui/b;->b()V

    .line 184
    invoke-super {p0, p1}, Lcom/duoku/platform/ui/a;->onActivityCreated(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "duoku.platform.download.intent.action.DOWNLOAD_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 187
    sget-object v1, Lcom/duoku/platform/download/DownloadManager;->ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/ui/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 790
    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    .line 814
    :cond_3
    :goto_3
    return-void

    .line 796
    :cond_4
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_11

    .line 798
    :try_start_8
    invoke-direct {p0, p3}, Lcom/duoku/platform/ui/b;->c(Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_3

    .line 809
    :catch_c
    move-exception v0

    .line 811
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 800
    :cond_11
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_19

    .line 802
    :try_start_15
    invoke-direct {p0, p3}, Lcom/duoku/platform/ui/b;->b(Landroid/content/Intent;)V

    goto :goto_3

    .line 804
    :cond_19
    const/16 v0, 0xca

    if-ne p1, v0, :cond_3

    .line 806
    invoke-direct {p0, p3}, Lcom/duoku/platform/ui/b;->a(Landroid/content/Intent;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_20} :catch_c

    goto :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 1791
    if-nez v0, :cond_9

    .line 1825
    :cond_8
    :goto_8
    return-void

    .line 1795
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1796
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v4, "manager_download_downloadall"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_20

    .line 1798
    invoke-direct {p0}, Lcom/duoku/platform/ui/b;->c()V

    goto :goto_8

    .line 1800
    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v4, "manager_download_pauseall"

    invoke-static {v3, v4}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 1803
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_42

    .line 1816
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1822
    invoke-direct {p0}, Lcom/duoku/platform/ui/b;->d()V

    goto :goto_8

    .line 1803
    :cond_42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 1805
    invoke-static {}, Lcom/duoku/platform/download/utils/DownloadTasks;->instance()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/duoku/platform/download/DownloadUtil;->getDownloadInfo(Landroid/content/Context;J)Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;

    move-result-object v3

    .line 1806
    if-eqz v3, :cond_32

    .line 1808
    invoke-virtual {v3}, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;->getStatus()Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    move-result-object v3

    .line 1810
    sget-object v4, Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;->STATUS_SUCCESSFUL:Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput$DownloadStatus;

    if-eq v3, v4, :cond_32

    .line 1812
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getDownloadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/duoku/platform/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    .line 164
    invoke-direct {p0}, Lcom/duoku/platform/ui/b;->k()V

    .line 165
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Lcom/duoku/platform/download/worker/DowloadAppsLoader;

    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/duoku/platform/download/worker/DowloadAppsLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/ui/b;->e:Lcom/duoku/platform/download/worker/DowloadAppsLoader;

    .line 171
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->e:Lcom/duoku/platform/download/worker/DowloadAppsLoader;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 177
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v1, "dk_manager_activity_download_fragment"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 234
    invoke-super {p0}, Lcom/duoku/platform/ui/a;->onDestroy()V

    .line 235
    invoke-direct {p0}, Lcom/duoku/platform/ui/b;->l()V

    .line 236
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->f:Landroid/os/Handler;

    if-eqz v0, :cond_10

    .line 237
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 238
    :cond_10
    return-void
.end method

.method public onDownloadProcessing(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/DownloadConfiguration$DownloadItemOutput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1599
    sget-boolean v0, Lcom/duoku/platform/util/Constants;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 1600
    invoke-direct {p0, p1}, Lcom/duoku/platform/ui/b;->c(Ljava/util/List;)V

    .line 1601
    :cond_7
    invoke-direct {p0, p1}, Lcom/duoku/platform/ui/b;->a(Ljava/util/List;)V

    .line 1602
    return-void
.end method

.method public onItemButtonClick(Landroid/view/View;I)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 573
    invoke-super {p0, p1, p2}, Lcom/duoku/platform/ui/a;->onItemButtonClick(Landroid/view/View;I)V

    .line 574
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    if-nez v0, :cond_a

    .line 665
    :cond_9
    :goto_9
    :sswitch_9
    return-void

    .line 578
    :cond_a
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0, p2}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 579
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getApkStatus()I

    move-result v1

    .line 580
    sparse-switch v1, :sswitch_data_118

    goto :goto_9

    .line 586
    :sswitch_1a
    invoke-direct {p0, v0}, Lcom/duoku/platform/ui/b;->a(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    goto :goto_9

    .line 589
    :sswitch_1e
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 590
    invoke-direct {p0, p2, v0}, Lcom/duoku/platform/ui/b;->b(ILcom/duoku/platform/download/mode/DownloadAppInfo;)V

    goto :goto_9

    .line 593
    :sswitch_28
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 594
    invoke-direct {p0, p2, v0}, Lcom/duoku/platform/ui/b;->a(ILcom/duoku/platform/download/mode/DownloadAppInfo;)V

    goto :goto_9

    .line 608
    :sswitch_32
    invoke-direct {p0, v0}, Lcom/duoku/platform/ui/b;->e(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    goto :goto_9

    .line 616
    :sswitch_36
    const-string v1, "DownloadAppListFragment"

    const-string v2, "%s is merging,but user is clicked!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 619
    :sswitch_4a
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->isDiffUpdate()Z

    move-result v1

    if-nez v1, :cond_63

    .line 621
    const-string v1, "DownloadAppListFragment"

    const-string v2, "%s is merged,but is not diff update"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_63
    invoke-direct {p0, v0}, Lcom/duoku/platform/ui/b;->e(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    .line 624
    iget-boolean v1, p0, Lcom/duoku/platform/ui/b;->h:Z

    if-eqz v1, :cond_9

    .line 626
    const-string v1, "DownloadAppListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is merged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 630
    :sswitch_8c
    invoke-direct {p0, v0}, Lcom/duoku/platform/ui/b;->e(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    .line 632
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v1

    const-string v2, "38"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 633
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v3, "cp_download_downloaded"

    invoke-virtual {v1, v2, v3}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 634
    iget-boolean v1, p0, Lcom/duoku/platform/ui/b;->h:Z

    if-eqz v1, :cond_9

    .line 636
    const-string v1, "DownloadAppListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is CHECKING_FINISHED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 640
    :sswitch_c9
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 641
    invoke-direct {p0, v0}, Lcom/duoku/platform/ui/b;->b(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    goto/16 :goto_9

    .line 644
    :sswitch_d4
    const-string v1, "DownloadAppListFragment"

    const-string v2, "%s is installing,but user can clicked"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 647
    :sswitch_e9
    invoke-direct {p0, v0}, Lcom/duoku/platform/ui/b;->e(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    goto/16 :goto_9

    .line 650
    :sswitch_ee
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duoku/platform/download/utils/AppUtil;->getLauncherIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/duoku/platform/ui/b;->a(ZLandroid/content/Intent;)Z

    .line 652
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    const-string v1, "39"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/i/a;->a(Ljava/lang/String;)V

    .line 653
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v2, "cp_download_open"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 580
    nop

    :sswitch_data_118
    .sparse-switch
        0x0 -> :sswitch_9
        0x4 -> :sswitch_1a
        0x8 -> :sswitch_1a
        0x10 -> :sswitch_1e
        0x20 -> :sswitch_28
        0x40 -> :sswitch_32
        0x80 -> :sswitch_36
        0x100 -> :sswitch_c9
        0x200 -> :sswitch_4a
        0x400 -> :sswitch_d4
        0x800 -> :sswitch_e9
        0x1000 -> :sswitch_ee
        0x2000 -> :sswitch_9
        0x4000 -> :sswitch_9
        0x8000 -> :sswitch_9
        0x10000 -> :sswitch_9
        0x80000 -> :sswitch_8c
    .end sparse-switch
.end method

.method public onItemCancelDownloadClick(Landroid/view/View;I)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 940
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->b:Lcom/duoku/platform/download/apapter/AbstractListAdapter;

    invoke-virtual {v0, p2}, Lcom/duoku/platform/download/apapter/AbstractListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/download/mode/DownloadAppInfo;

    .line 941
    invoke-virtual {v0}, Lcom/duoku/platform/download/mode/DownloadAppInfo;->getApkStatus()I

    move-result v1

    .line 942
    const/16 v2, 0x200

    if-eq v1, v2, :cond_2e

    const/16 v2, 0x100

    if-eq v1, v2, :cond_2e

    const/16 v2, 0x80

    if-eq v1, v2, :cond_2e

    const/16 v2, 0x400

    if-eq v1, v2, :cond_2e

    .line 943
    const/16 v2, 0x800

    if-eq v1, v2, :cond_2e

    const/16 v2, 0x40

    if-eq v1, v2, :cond_2e

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_2e

    const/high16 v2, 0x80000

    if-ne v1, v2, :cond_39

    .line 945
    :cond_2e
    invoke-direct {p0, v0}, Lcom/duoku/platform/ui/b;->f(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    .line 947
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 954
    :goto_38
    return-void

    .line 951
    :cond_39
    invoke-direct {p0, v0}, Lcom/duoku/platform/ui/b;->f(Lcom/duoku/platform/download/mode/DownloadAppInfo;)V

    .line 952
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3, v4, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_38
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 928
    invoke-super/range {p0 .. p5}, Lcom/duoku/platform/ui/a;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 929
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v1, "download_item_action_cancel"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 930
    iget-object v0, p0, Lcom/duoku/platform/ui/b;->l:Landroid/content/Context;

    const-string v2, "download_item_action_cancel_textview"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 931
    invoke-direct {p0, v1, v0, p3}, Lcom/duoku/platform/ui/b;->a(Landroid/view/View;Landroid/widget/TextView;I)V

    .line 935
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/download/mode/DownloadAppInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1573
    invoke-super {p0, p1}, Lcom/duoku/platform/ui/a;->onLoaderReset(Landroid/support/v4/content/Loader;)V

    .line 1574
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 205
    invoke-super {p0}, Lcom/duoku/platform/ui/a;->onPause()V

    .line 206
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 213
    :try_start_0
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 215
    invoke-virtual {p0}, Lcom/duoku/platform/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_34

    .line 217
    iput-object v0, p0, Lcom/duoku/platform/ui/b;->d:Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_45

    .line 225
    :cond_34
    :goto_34
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 226
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 227
    iget-object v1, p0, Lcom/duoku/platform/ui/b;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    invoke-super {p0}, Lcom/duoku/platform/ui/a;->onResume()V

    .line 229
    return-void

    .line 220
    :catch_45
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    .prologue
    .line 1580
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    .prologue
    .line 1594
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 1459
    invoke-super {p0}, Lcom/duoku/platform/ui/a;->onStop()V

    .line 1462
    return-void
.end method
