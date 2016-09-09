.class Lmobisocial/omlib/client/ClientFeedUtils$3;
.super Ljava/lang/Object;
.source "ClientFeedUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobisocial/omlib/client/ClientFeedUtils;->removeMemberFromFeed(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/client/ClientFeedUtils;


# direct methods
.method constructor <init>(Lmobisocial/omlib/client/ClientFeedUtils;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/client/ClientFeedUtils;

    .prologue
    .line 318
    iput-object p1, p0, Lmobisocial/omlib/client/ClientFeedUtils$3;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 322
    iget-object v1, p0, Lmobisocial/omlib/client/ClientFeedUtils$3;->this$0:Lmobisocial/omlib/client/ClientFeedUtils;

    # getter for: Lmobisocial/omlib/client/ClientFeedUtils;->mClient:Lmobisocial/omlib/client/LongdanClient;
    invoke-static {v1}, Lmobisocial/omlib/client/ClientFeedUtils;->access$100(Lmobisocial/omlib/client/ClientFeedUtils;)Lmobisocial/omlib/client/LongdanClient;

    move-result-object v1

    invoke-virtual {v1}, Lmobisocial/omlib/client/LongdanClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 323
    .local v0, "c":Landroid/content/Context;
    const-string v1, "oml_feed_remove_error"

    invoke-static {v0, v1}, Lmobisocial/util/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 324
    return-void
.end method
