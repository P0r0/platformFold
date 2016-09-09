.class Lcom/gionee/gsp/service/GnCommplatformImplForBase$14$1;
.super Ljava/lang/Thread;
.source "GnCommplatformImplForBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;->onComplete(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14$1;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;

    iput-object p2, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14$1;->val$activity:Landroid/app/Activity;

    .line 1967
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14$1;->this$1:Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;

    # getter for: Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;->this$0:Lcom/gionee/gsp/service/GnCommplatformImplForBase;
    invoke-static {v0}, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;->access$0(Lcom/gionee/gsp/service/GnCommplatformImplForBase$14;)Lcom/gionee/gsp/service/GnCommplatformImplForBase;

    move-result-object v0

    iget-object v0, v0, Lcom/gionee/gsp/service/GnCommplatformImplForBase;->mAccount:Lcom/gionee/gsp/service/account/IAccount;

    check-cast v0, Lcom/gionee/gsp/service/account/AccountImpl;

    iget-object v1, p0, Lcom/gionee/gsp/service/GnCommplatformImplForBase$14$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/gionee/gsp/service/account/AccountImpl;->getPresentEvent(Landroid/app/Activity;)Z

    .line 1970
    return-void
.end method
