.class Lmobisocial/omlib/client/ClientIdentityUtils$1;
.super Ljava/lang/Object;
.source "ClientIdentityUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/client/ClientIdentityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientIdentityUtils;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientIdentityUtils;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientIdentityUtils;

    .prologue
    .line 46
    iput-object p1, p0, Lmobisocial/omlib/client/ClientIdentityUtils$1;->this$0:Lmobisocial/omlib/client/ClientIdentityUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lmobisocial/omlib/client/ClientIdentityUtils$1;->this$0:Lmobisocial/omlib/client/ClientIdentityUtils;

    # getter for: Lmobisocial/omlib/client/ClientIdentityUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v0}, Lmobisocial/omlib/client/ClientIdentityUtils;->access$000(Lmobisocial/omlib/client/ClientIdentityUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v0

    invoke-static {v0}, Lmobisocial/omlib/jobs/ContactProfileRefreshJobHandler;->ensureJobScheduled(Lmobisocial/omlib/client/LongdanClient;)V

    .line 51
    iget-object v0, p0, Lmobisocial/omlib/client/ClientIdentityUtils$1;->this$0:Lmobisocial/omlib/client/ClientIdentityUtils;

    const/4 v1, 0x0

    # setter for: Lmobisocial/omlib/client/ClientIdentityUtils;->mScheduledRefreshThisTransaction:Z
    invoke-static {v0, v1}, Lmobisocial/omlib/client/ClientIdentityUtils;->access$102(Lmobisocial/omlib/client/ClientIdentityUtils;Z)Z

    .line 52
    return-void
.end method
