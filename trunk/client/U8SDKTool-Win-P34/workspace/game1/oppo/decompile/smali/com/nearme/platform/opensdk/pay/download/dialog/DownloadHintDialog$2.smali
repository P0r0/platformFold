.class Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$2;
.super Ljava/lang/Object;
.source "DownloadHintDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;


# direct methods
.method constructor <init>(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->access$0(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 120
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog$2;->this$0:Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;

    # getter for: Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->mBottomBtnClickListener:Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;
    invoke-static {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;->access$0(Lcom/nearme/platform/opensdk/pay/download/dialog/DownloadHintDialog;)Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nearme/platform/opensdk/pay/download/dialog/OnBottomBtnClickListener;->leftBtnClicked()V

    .line 122
    :cond_11
    return-void
.end method
