.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;
.super Lcom/gionee/gsp/GnCallbackListener;
.source "GnCommplatformImplForBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gionee/gsp/GnCallbackListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

.field private final synthetic val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

.field private final synthetic val$needToInstallList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;Lcom/gionee/gsp/dialog/GnDownloadDialog;Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;->val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    iput-object p5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;->val$needToInstallList:Ljava/util/List;

    .line 1539
    invoke-direct {p0}, Lcom/gionee/gsp/GnCallbackListener;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;)Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;
    .registers 2

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$6;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic callback(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;->callback(ILjava/lang/String;)V

    return-void
.end method

.method public callback(ILjava/lang/String;)V
    .registers 9
    .param p1, "responseCode"    # I
    .param p2, "responseValue"    # Ljava/lang/String;

    .prologue
    .line 1543
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6536\u5230apk\u7684\u4e0b\u8f7d\u5904\u7406\u7ed3\u679c\u8fd4\u56de\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\u8fd4\u56de\u503c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gionee/gsp/util/GnLogUtil;->i(Ljava/lang/String;)V

    .line 1545
    sget v1, Lcom/gionee/gsp/result/GnResultCode;->COM_PLATFORM_SUCCESS:I

    if-ne p1, v1, :cond_40

    .line 1547
    :try_start_20
    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;->val$gnDownloadDialog:Lcom/gionee/gsp/dialog/GnDownloadDialog;

    invoke-virtual {v1}, Lcom/gionee/gsp/dialog/GnDownloadDialog;->cancel()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_36

    .line 1554
    :goto_25
    :try_start_25
    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1$1;

    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    iget-object v5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;->val$needToInstallList:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1$1;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;Landroid/app/Activity;Lcom/gionee/gsp/service/GnBaseInstallListener;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_35} :catch_3b

    .line 1576
    :goto_35
    return-void

    .line 1548
    :catch_36
    move-exception v0

    .line 1551
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25

    .line 1569
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3b
    move-exception v0

    .line 1570
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35

    .line 1574
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_40
    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$6$1;->val$installCallback:Lcom/gionee/gsp/service/GnBaseInstallListener;

    invoke-virtual {v1}, Lcom/gionee/gsp/service/GnBaseInstallListener;->onReCheck()V

    goto :goto_35
.end method
