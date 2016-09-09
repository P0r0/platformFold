.class Lcom/duoku/platform/ui/DKDownloadManagerActivity$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/ui/DKDownloadManagerActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "[",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/ui/DKDownloadManagerActivity;


# direct methods
.method constructor <init>(Lcom/duoku/platform/ui/DKDownloadManagerActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity$2;->a:Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    .line 264
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Integer;)V
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity$2;->a:Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    invoke-static {v0, p1}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->a(Lcom/duoku/platform/ui/DKDownloadManagerActivity;[Ljava/lang/Integer;)V

    .line 309
    return-void
.end method

.method protected varargs a([Ljava/lang/Void;)[Ljava/lang/Integer;
    .registers 9

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 269
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    .line 270
    iget-object v1, p0, Lcom/duoku/platform/ui/DKDownloadManagerActivity$2;->a:Lcom/duoku/platform/ui/DKDownloadManagerActivity;

    invoke-virtual {v1}, Lcom/duoku/platform/ui/DKDownloadManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/duoku/platform/download/utils/AppManager;->getInstance(Landroid/content/Context;)Lcom/duoku/platform/download/utils/AppManager;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Lcom/duoku/platform/download/utils/AppManager;->getAndCheckDownloadGames()Ljava/util/List;

    move-result-object v2

    .line 273
    if-eqz v2, :cond_53

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_53

    .line 275
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    .line 282
    :goto_26
    invoke-virtual {v1, v5}, Lcom/duoku/platform/download/utils/AppManager;->getUpdatableGames(Z)Ljava/util/List;

    move-result-object v2

    .line 283
    if-eqz v2, :cond_5a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5a

    .line 285
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    .line 292
    :goto_3c
    invoke-virtual {v1}, Lcom/duoku/platform/download/utils/AppManager;->getInstalledGames()Ljava/util/List;

    move-result-object v1

    .line 294
    if-eqz v1, :cond_61

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_61

    .line 296
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 302
    :goto_52
    return-object v0

    .line 279
    :cond_53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    goto :goto_26

    .line 289
    :cond_5a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    goto :goto_3c

    .line 300
    :cond_61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_52
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/ui/DKDownloadManagerActivity$2;->a([Ljava/lang/Void;)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/ui/DKDownloadManagerActivity$2;->a([Ljava/lang/Integer;)V

    return-void
.end method
