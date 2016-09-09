.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;
.super Ljava/lang/Object;
.source "GnCommplatformImplForBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase;->downLoadAPK(Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

.field private final synthetic val$needToDownload:Ljava/util/List;

.field private final synthetic val$needToInstallList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;Ljava/util/List;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    iput-object p4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->val$needToInstallList:Ljava/util/List;

    iput-object p5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->val$needToDownload:Ljava/util/List;

    .line 1533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    .registers 2

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 1537
    new-instance v2, Lcom/gionee/gsp/dialog/GnDownloadDialog;

    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v1}, Lcom/gionee/gsp/dialog/GnDownloadDialog;-><init>(Landroid/content/Context;)V

    .line 1539
    .local v2, "gnDownloadDialog":Lcom/gionee/gsp/dialog/GnDownloadDialog;
    new-instance v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;

    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    iget-object v5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->val$needToInstallList:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;Lcom/gionee/gsp/dialog/GnDownloadDialog;Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V

    .line 1579
    .local v0, "downloadResultCb":Lcom/gionee/gsp/GnCallbackListener;, "Lcom/gionee/gsp/GnCallbackListener<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1580
    .local v11, "listenCancelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1582
    .local v5, "hasDownload":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget v1, Lcom/gionee/gsp/ui/values/GnPublic$id;->re_download_button:I

    invoke-virtual {v2, v1}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1583
    new-instance v3, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;

    iget-object v6, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->val$needToDownload:Ljava/util/List;

    iget-object v8, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->val$needToInstallList:Ljava/util/List;

    move-object v4, p0

    move-object v9, v2

    move-object v10, v0

    invoke-direct/range {v3 .. v11}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;Ljava/util/List;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcom/gionee/gsp/dialog/GnDownloadDialog;Lcom/gionee/gsp/GnCallbackListener;Ljava/util/List;)V

    .line 1582
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1594
    sget v1, Lcom/gionee/gsp/ui/values/GnPublic$id;->cancel_button:I

    invoke-virtual {v2, v1}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1595
    new-instance v3, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$3;

    move-object v4, p0

    move-object v6, v0

    move-object v7, v11

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$3;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;Ljava/util/List;Lcom/gionee/gsp/GnCallbackListener;Ljava/util/List;Lcom/gionee/gsp/dialog/GnDownloadDialog;)V

    .line 1594
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1614
    invoke-virtual {v2}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->show()V

    .line 1616
    return-void
.end method
