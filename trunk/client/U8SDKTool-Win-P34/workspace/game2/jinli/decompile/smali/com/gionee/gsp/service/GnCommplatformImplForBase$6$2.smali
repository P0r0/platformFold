.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;
.super Ljava/lang/Object;
.source "GnCommplatformImplForBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$downloadResultCb:Lcom/gionee/gsp/GnCallbackListener;

.field private final synthetic val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

.field private final synthetic val$hasDownload:Ljava/util/List;

.field private final synthetic val$listenCancelList:Ljava/util/List;

.field private final synthetic val$needToDownload:Ljava/util/List;

.field private final synthetic val$needToInstallList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;Ljava/util/List;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcom/gionee/gsp/dialog/GnDownloadDialog;Lcom/gionee/gsp/GnCallbackListener;Ljava/util/List;)V
    .registers 9

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;->val$hasDownload:Ljava/util/List;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;->val$needToDownload:Ljava/util/List;

    iput-object p5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;->val$needToInstallList:Ljava/util/List;

    iput-object p6, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;->val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    iput-object p7, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;->val$downloadResultCb:Lcom/gionee/gsp/GnCallbackListener;

    iput-object p8, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;->val$listenCancelList:Ljava/util/List;

    .line 1583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;->val$hasDownload:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1589
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;

    # getter for: Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    invoke-static {v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    move-result-object v0

    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;->val$needToDownload:Ljava/util/List;

    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;->val$needToInstallList:Ljava/util/List;

    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;->val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    .line 1590
    iget-object v5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;->val$downloadResultCb:Lcom/gionee/gsp/GnCallbackListener;

    iget-object v6, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$2;->val$listenCancelList:Ljava/util/List;

    .line 1589
    # invokes: Lcom/gionee/gsp/service/GnCommplatformImplForBase;->downloadApp(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcom/gionee/gsp/dialog/GnDownloadDialog;Lcom/gionee/gsp/GnCallbackListener;Ljava/util/List;)V
    invoke-static/range {v0 .. v6}, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->access$6(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcom/gionee/gsp/dialog/GnDownloadDialog;Lcom/gionee/gsp/GnCallbackListener;Ljava/util/List;)V

    .line 1591
    return-void
.end method
