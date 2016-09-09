.class Lcom/gionee/gsp/dialog/GnDownloadDialog$2;
.super Ljava/lang/Object;
.source "GnDownloadDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/dialog/GnDownloadDialog;->updateDialog(Landroid/app/Activity;Lcom/gionee/gsp/dialog/GnDownloadDialog;Ljava/lang/String;IILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$downloadText:Ljava/lang/String;

.field private final synthetic val$enabled:Z

.field private final synthetic val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

.field private final synthetic val$progress:I

.field private final synthetic val$secondaryProgress:I


# direct methods
.method constructor <init>(Lcom/gionee/gsp/dialog/GnDownloadDialog;IILjava/lang/String;Z)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/dialog/GnDownloadDialog$2;->val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    iput p2, p0, Lcom/gionee/gsp/dialog/GnDownloadDialog$2;->val$progress:I

    iput p3, p0, Lcom/gionee/gsp/dialog/GnDownloadDialog$2;->val$secondaryProgress:I

    iput-object p4, p0, Lcom/gionee/gsp/dialog/GnDownloadDialog$2;->val$downloadText:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/gionee/gsp/dialog/GnDownloadDialog$2;->val$enabled:Z

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 82
    iget-object v2, p0, Lcom/gionee/gsp/dialog/GnDownloadDialog$2;->val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    sget v3, Lcom/gionee/gsp/ui/values/GnPublic$id;->download_progress_bar:I

    invoke-virtual {v2, v3}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 83
    .local v0, "downloadProgressBar":Landroid/widget/ProgressBar;
    iget v2, p0, Lcom/gionee/gsp/dialog/GnDownloadDialog$2;->val$progress:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 84
    iget v2, p0, Lcom/gionee/gsp/dialog/GnDownloadDialog$2;->val$secondaryProgress:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 85
    iget-object v2, p0, Lcom/gionee/gsp/dialog/GnDownloadDialog$2;->val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    sget v3, Lcom/gionee/gsp/ui/values/GnPublic$id;->download_text_view:I

    invoke-virtual {v2, v3}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 86
    .local v1, "downloadTextView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/gionee/gsp/dialog/GnDownloadDialog$2;->val$downloadText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-boolean v2, p0, Lcom/gionee/gsp/dialog/GnDownloadDialog$2;->val$enabled:Z

    if-eqz v2, :cond_49

    .line 89
    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    :goto_2c
    iget-object v2, p0, Lcom/gionee/gsp/dialog/GnDownloadDialog$2;->val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    sget v3, Lcom/gionee/gsp/ui/values/GnPublic$id;->re_download_button:I

    invoke-virtual {v2, v3}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/gionee/gsp/dialog/GnDownloadDialog$2;->val$enabled:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 98
    iget-object v2, p0, Lcom/gionee/gsp/dialog/GnDownloadDialog$2;->val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    sget v3, Lcom/gionee/gsp/ui/values/GnPublic$id;->re_download_button:I

    invoke-virtual {v2, v3}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const-string v3, "\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void

    .line 93
    :cond_49
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2c
.end method
