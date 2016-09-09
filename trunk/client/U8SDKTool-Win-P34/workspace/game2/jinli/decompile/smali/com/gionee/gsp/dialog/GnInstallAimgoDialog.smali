.class public Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;
.super Lcom/gionee/gsp/dialog/GnDialogBase;
.source "GnInstallAimgoDialog.java"


# static fields
.field public static sGnInstallAimgoDialog:Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;


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
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/gionee/gsp/dialog/GnDialogBase;-><init>(Landroid/content/Context;)V

    .line 33
    sget v0, Lcom/gionee/gsp/ui/values/GnPublic$id;->desc_info:I

    invoke-virtual {p0, v0}, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u60a8\u5c1a\u672a\u5b89\u88c5AmigoPlay\u5b89\u5168\u63d2\u4ef6\uff0c\u5b89\u88c5\u8fc7\u7a0b\u65e0\u9700\u4efb\u4f55\u6d41\u91cf\uff0c\u662f\u5426\u7acb\u5373\u5b89\u88c5\uff1f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    sget v0, Lcom/gionee/gsp/ui/values/GnPublic$id;->re_download_button:I

    invoke-virtual {p0, v0}, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-class v1, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->sGnInstallAimgoDialog:Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;

    if-nez v0, :cond_e

    .line 25
    new-instance v0, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;

    invoke-direct {v0, p0}, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->sGnInstallAimgoDialog:Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;

    .line 27
    :cond_e
    sget-object v0, Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;->sGnInstallAimgoDialog:Lcom/gionee/gsp/dialog/GnInstallAimgoDialog;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method
