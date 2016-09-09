.class Lcom/duoku/platform/floatview/DKFloatWebView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/floatview/DKFloatWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/floatview/DKFloatWebView;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/floatview/DKFloatWebView;)V
    .registers 2

    .prologue
    .line 826
    iput-object p1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$a;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/floatview/DKFloatWebView;Lcom/duoku/platform/floatview/DKFloatWebView$a;)V
    .registers 3

    .prologue
    .line 826
    invoke-direct {p0, p1}, Lcom/duoku/platform/floatview/DKFloatWebView$a;-><init>(Lcom/duoku/platform/floatview/DKFloatWebView;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 831
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$a;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_b7

    if-eqz p1, :cond_b7

    .line 835
    :try_start_c
    iget-object v0, p0, Lcom/duoku/platform/floatview/DKFloatWebView$a;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v0}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "download"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 836
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 837
    new-instance v3, Landroid/app/DownloadManager$Request;

    invoke-direct {v3, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 838
    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 839
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v2, v4, :cond_35

    .line 842
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 843
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 845
    :cond_35
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 846
    invoke-virtual {v3}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 847
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 848
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/duoku/platform/util/q;->b:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_57

    .line 851
    :cond_54
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 855
    :cond_57
    const/4 v2, 0x0

    .line 857
    const-string v4, "apk"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 858
    if-eq v4, v5, :cond_6d

    .line 860
    const/4 v1, 0x0

    add-int/lit8 v2, v4, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 861
    const/16 v1, 0x2f

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 865
    :cond_6d
    if-eq v1, v5, :cond_e5

    .line 867
    if-eq v4, v5, :cond_b8

    if-le v4, v1, :cond_b8

    .line 869
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 875
    :goto_7b
    if-eqz v1, :cond_c4

    .line 877
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/duoku/platform/util/q;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 878
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 880
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 881
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 882
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 883
    iget-object v1, p0, Lcom/duoku/platform/floatview/DKFloatWebView$a;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v1}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 906
    :cond_b7
    :goto_b7
    return-void

    .line 873
    :cond_b8
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7b

    .line 886
    :cond_bf
    sget-object v2, Lcom/duoku/platform/util/q;->c:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 893
    :cond_c4
    :goto_c4
    invoke-virtual {v0, v3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 895
    iget-object v2, p0, Lcom/duoku/platform/floatview/DKFloatWebView$a;->a:Lcom/duoku/platform/floatview/DKFloatWebView;

    invoke-static {v2}, Lcom/duoku/platform/floatview/DKFloatWebView;->a(Lcom/duoku/platform/floatview/DKFloatWebView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "download_id_list"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 896
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "download_id"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_b7

    .line 902
    :catch_e3
    move-exception v0

    goto :goto_b7

    .line 891
    :cond_e5
    sget-object v1, Lcom/duoku/platform/util/q;->c:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_ea} :catch_e3

    goto :goto_c4
.end method
