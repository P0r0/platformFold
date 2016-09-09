.class public Lcom/gionee/gsp/dialog/GnDownloadDialog;
.super Lcom/gionee/gsp/dialog/GnDialogBase;
.source "GnDownloadDialog.java"


# instance fields
.field public mdownloadCb:Lcom/gionee/gsp/GnCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gionee/gsp/GnCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/gionee/gsp/dialog/GnDialogBase;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public static updateDialog(Landroid/app/Activity;Lcom/gionee/gsp/dialog/GnDownloadDialog;Ljava/lang/String;IILandroid/text/SpannableStringBuilder;Z)V
    .registers 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gnDownloadDialog"    # Lcom/gionee/gsp/dialog/GnDownloadDialog;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "progress"    # I
    .param p4, "secondaryProgress"    # I
    .param p5, "style"    # Landroid/text/SpannableStringBuilder;
    .param p6, "enabled"    # Z

    .prologue
    .line 42
    new-instance v0, Lcom/gionee/gsp/dialog/GnDownloadDialog$1;

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/gionee/gsp/dialog/GnDownloadDialog$1;-><init>(Lcom/gionee/gsp/dialog/GnDownloadDialog;IILandroid/text/SpannableStringBuilder;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method public static updateDialog(Landroid/app/Activity;Lcom/gionee/gsp/dialog/GnDownloadDialog;Ljava/lang/String;IILjava/lang/String;Z)V
    .registers 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gnDownloadDialog"    # Lcom/gionee/gsp/dialog/GnDownloadDialog;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "progress"    # I
    .param p4, "secondaryProgress"    # I
    .param p5, "downloadText"    # Ljava/lang/String;
    .param p6, "enabled"    # Z

    .prologue
    .line 73
    new-instance v0, Lcom/gionee/gsp/dialog/GnDownloadDialog$2;

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/gionee/gsp/dialog/GnDownloadDialog$2;-><init>(Lcom/gionee/gsp/dialog/GnDownloadDialog;IILjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method
