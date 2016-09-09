.class Lcom/gionee/gsp/service/account/AccountImpl$2;
.super Ljava/lang/Thread;
.source "AccountImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gionee/gsp/service/account/AccountImpl;->asyncCheckIsBind(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gionee/gsp/service/account/AccountImpl;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gionee/gsp/service/account/AccountImpl$2;->this$0:Lcom/gionee/gsp/service/account/AccountImpl;

    iput-object p2, p0, Lcom/gionee/gsp/service/account/AccountImpl$2;->val$activity:Landroid/app/Activity;

    .line 248
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/gionee/gsp/service/account/AccountImpl$2;->this$0:Lcom/gionee/gsp/service/account/AccountImpl;

    iget-object v2, p0, Lcom/gionee/gsp/service/account/AccountImpl$2;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/gionee/gsp/service/account/AccountImpl;->checkIsBind(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/gionee/gsp/service/account/AccountImpl;->access$1(Lcom/gionee/gsp/service/account/AccountImpl;Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 255
    :goto_7
    return-void

    .line 252
    :catch_8
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method
