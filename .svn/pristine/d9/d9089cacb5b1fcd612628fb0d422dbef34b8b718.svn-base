.class Lcom/gionee/gsp/util/GnCommonUtil$2;
.super Ljava/lang/Object;
.source "GnCommonUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/util/GnCommonUtil;->getInstallAPKDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/gionee/gsp/GnCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$alertDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

.field private final synthetic val$cb:Lcom/gionee/gsp/GnCallbackListener;

.field private final synthetic val$sb:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/dialog/GnDownloadDialog;Lcom/gionee/gsp/GnCallbackListener;Ljava/lang/StringBuffer;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/util/GnCommonUtil$2;->val$alertDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    iput-object p2, p0, Lcom/gionee/gsp/util/GnCommonUtil$2;->val$cb:Lcom/gionee/gsp/GnCallbackListener;

    iput-object p3, p0, Lcom/gionee/gsp/util/GnCommonUtil$2;->val$sb:Ljava/lang/StringBuffer;

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 632
    iget-object v0, p0, Lcom/gionee/gsp/util/GnCommonUtil$2;->val$alertDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    invoke-virtual {v0}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->dismiss()V

    .line 633
    iget-object v0, p0, Lcom/gionee/gsp/util/GnCommonUtil$2;->val$cb:Lcom/gionee/gsp/GnCallbackListener;

    sget v1, Lcom/gionee/gsp/result/GnResultCode;->COM_PLATFORM_SUCCESS:I

    iget-object v2, p0, Lcom/gionee/gsp/util/GnCommonUtil$2;->val$sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/gionee/gsp/GnCallbackListener;->callback(ILjava/lang/Object;)V

    .line 634
    return-void
.end method
