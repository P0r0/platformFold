.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;
.super Lcom/gionee/gsp/service/GnBaseInstallListener;
.source "GnCommplatformImplForBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase;->download(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase;Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;Landroid/app/Activity;)V
    .registers 7
    .param p2, "$anonymous0"    # Landroid/app/Activity;
    .param p3, "$anonymous1"    # Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;
    .param p4, "$anonymous2"    # Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    iput-object p5, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    iput-object p6, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;->val$activity:Landroid/app/Activity;

    .line 2317
    invoke-direct {p0, p2, p3, p4}, Lcom/gionee/gsp/service/GnBaseInstallListener;-><init>(Landroid/app/Activity;Lcom/gionee/gsp/service/account/sdk/listener/GioneeAccountBaseListener;Lcom/gionee/gsp/service/GnCommplatformImplForBase;)V

    return-void
.end method

.method static synthetic access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    .registers 2

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    return-object v0
.end method


# virtual methods
.method public onComplete()V
    .registers 6

    .prologue
    .line 2321
    const-string v1, "download"

    .line 2323
    .local v1, "taskTag":Ljava/lang/String;
    invoke-static {}, Lcom/gionee/gsp/service/GnSendMessageService;->getInStance()Lcom/gionee/gsp/service/GnSendMessageService;

    move-result-object v0

    .line 2324
    .local v0, "gnBaseService":Lcom/gionee/gsp/service/GnBaseService;
    new-instance v2, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;

    iget-object v3, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;->val$gnDownloadListener:Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;

    iget-object v4, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3, v4}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$18$1;-><init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$18;Lcom/gionee/gsp/service/account/sdk/listener/IGnDownloadListener;Landroid/app/Activity;)V

    .line 2403
    const-string v3, "download"

    .line 2324
    invoke-virtual {v0, v2, v3}, Lcom/gionee/gsp/service/GnBaseService;->add(Lcom/gionee/gsp/service/GnCommand;Ljava/lang/String;)V

    .line 2404
    return-void
.end method
