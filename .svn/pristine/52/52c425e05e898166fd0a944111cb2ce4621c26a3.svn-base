.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;
.super Ljava/lang/Object;
.source "GnCommplatformImplForBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;

.field private final synthetic val$callbackException:Ljava/lang/Exception;

.field private final synthetic val$callbackNeedToInstallList:Ljava/util/List;

.field private final synthetic val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;Ljava/lang/Exception;Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;Ljava/util/List;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;->this$2:Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;->val$callbackException:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    iput-object p4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;->val$callbackNeedToInstallList:Ljava/util/List;

    .line 2388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;->val$callbackException:Ljava/lang/Exception;

    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2393
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;->val$callbackException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->onError(Ljava/lang/Exception;)V

    .line 2398
    :goto_f
    return-void

    .line 2396
    :cond_10
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1$1;->val$callbackNeedToInstallList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;->onComplete(Ljava/util/List;)V

    goto :goto_f
.end method
