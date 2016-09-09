.class public Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader;
.super Ljava/lang/Object;
.source "VideoDownloader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoDownloader"

.field private static final TIMEOUT_CONNECTION:I = 0x1388

.field private static final TIMEOUT_SOCKET:I = 0x7530


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fileLink"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v1, "omp_videoDownloader_downloading_video"

    invoke-static {p0, v1}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "omp_videoDownloader_please_wait"

    invoke-static {p0, v2}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 35
    .local v0, "downloadDialog":Landroid/app/ProgressDialog;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;

    invoke-direct {v2, p2, p1, v0, p0}, Lmobisocial/omlet/overlaybar/ui/helper/VideoDownloader$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;Landroid/app/Activity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 96
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 97
    return-void
.end method
