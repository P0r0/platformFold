.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$3;
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

.field private final synthetic val$downloadResultCb:Lcom/gionee/gsp/GnCallbackListener;

.field private final synthetic val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

.field private final synthetic val$hasDownload:Ljava/util/List;

.field private final synthetic val$listenCancelList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;Ljava/util/List;Lcom/gionee/gsp/GnCallbackListener;Ljava/util/List;Lcom/gionee/gsp/dialog/GnDownloadDialog;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$3;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$3;->val$hasDownload:Ljava/util/List;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$3;->val$downloadResultCb:Lcom/gionee/gsp/GnCallbackListener;

    iput-object p4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$3;->val$listenCancelList:Ljava/util/List;

    iput-object p5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$3;->val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    .line 1595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1600
    :try_start_0
    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$3;->val$hasDownload:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    .line 1601
    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$3;->val$downloadResultCb:Lcom/gionee/gsp/GnCallbackListener;

    sget v2, Lcom/gionee/gsp/result/GnResultCode;->CANCEL:I

    const-string v3, "cancel download"

    invoke-virtual {v1, v2, v3}, Lcom/gionee/gsp/GnCallbackListener;->callback(ILjava/lang/Object;)V

    .line 1605
    :cond_11
    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$3;->val$listenCancelList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    if-eqz p1, :cond_22

    .line 1607
    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$3;->val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    invoke-virtual {v1}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->cancel()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 1612
    :cond_22
    :goto_22
    return-void

    .line 1609
    :catch_23
    move-exception v0

    .line 1610
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method
