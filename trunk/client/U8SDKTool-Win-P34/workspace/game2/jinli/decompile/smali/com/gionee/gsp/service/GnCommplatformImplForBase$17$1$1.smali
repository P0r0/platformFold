.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;
.super Ljava/lang/Object;
.source "GnCommplatformImplForBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;

.field private final synthetic val$callbackException:Ljava/lang/Exception;

.field private final synthetic val$callbackUpdateInfo:Ljava/lang/String;

.field private final synthetic val$gnCheckUpdateListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;Ljava/lang/Exception;Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;->this$2:Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;->val$callbackException:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;->val$gnCheckUpdateListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;

    iput-object p4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;->val$callbackUpdateInfo:Ljava/lang/String;

    .line 2282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;->val$callbackException:Ljava/lang/Exception;

    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2287
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;->val$gnCheckUpdateListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;

    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;->val$callbackException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;->onError(Ljava/lang/Exception;)V

    .line 2296
    :goto_f
    return-void

    .line 2290
    :cond_10
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;->val$callbackUpdateInfo:Ljava/lang/String;

    invoke-static {v0}, Lcom/gionee/gsp/util/GnCommonUtil;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2291
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;->val$gnCheckUpdateListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;

    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;->val$callbackUpdateInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;->onNewVesion(Ljava/lang/String;)V

    goto :goto_f

    .line 2294
    :cond_20
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$17$1$1;->val$gnCheckUpdateListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;

    invoke-virtual {v0}, Lcom/gionee/gsp/service/account/sdk/listener/IGnCheckUpdateListener;->onNoNewVesion()V

    goto :goto_f
.end method
