.class Lmobisocial/omlib/service/OmlibService$2;
.super Ljava/lang/Object;
.source "OmlibService.java"

# interfaces
.implements Lmobisocial/longdan/net/WsRpcConnection$OnClosestClusterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobisocial/omlib/service/OmlibService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobisocial/omlib/service/OmlibService;


# direct methods
.method constructor <init>(Lmobisocial/omlib/service/OmlibService;)V
    .registers 2
    .param p1, "this$0"    # Lmobisocial/omlib/service/OmlibService;

    .prologue
    .line 147
    iput-object p1, p0, Lmobisocial/omlib/service/OmlibService$2;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosestCluster(Ljava/lang/String;)V
    .registers 8
    .param p1, "cluster"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 151
    iget-object v4, p0, Lmobisocial/omlib/service/OmlibService$2;->this$0:Lmobisocial/omlib/service/OmlibService;

    monitor-enter v4

    .line 152
    if-eqz p1, :cond_41

    :try_start_6
    iget-object v3, p0, Lmobisocial/omlib/service/OmlibService$2;->this$0:Lmobisocial/omlib/service/OmlibService;

    # getter for: Lmobisocial/omlib/service/OmlibService;->mClosestCluster:Ljava/lang/String;
    invoke-static {v3}, Lmobisocial/omlib/service/OmlibService;->access$100(Lmobisocial/omlib/service/OmlibService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 153
    .local v0, "clusterChanged":Z
    :goto_12
    iget-object v3, p0, Lmobisocial/omlib/service/OmlibService$2;->this$0:Lmobisocial/omlib/service/OmlibService;

    # setter for: Lmobisocial/omlib/service/OmlibService;->mClosestCluster:Ljava/lang/String;
    invoke-static {v3, p1}, Lmobisocial/omlib/service/OmlibService;->access$102(Lmobisocial/omlib/service/OmlibService;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    const-string v3, "THREE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 155
    .local v1, "currentlyInChina":Z
    const-string v3, "THREE"

    iget-object v5, p0, Lmobisocial/omlib/service/OmlibService$2;->this$0:Lmobisocial/omlib/service/OmlibService;

    invoke-virtual {v5}, Lmobisocial/omlib/service/OmlibService;->getLdClient()Lmobisocial/omlib/client/LongdanClient;

    move-result-object v5

    invoke-virtual {v5}, Lmobisocial/omlib/client/LongdanClient;->getClusterId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 156
    .local v2, "generallyInChina":Z
    if-eqz v0, :cond_3f

    iget-object v3, p0, Lmobisocial/omlib/service/OmlibService$2;->this$0:Lmobisocial/omlib/service/OmlibService;

    # getter for: Lmobisocial/omlib/service/OmlibService;->mPushEnabled:Z
    invoke-static {v3}, Lmobisocial/omlib/service/OmlibService;->access$200(Lmobisocial/omlib/service/OmlibService;)Z

    move-result v3

    if-eqz v3, :cond_3f

    if-eq v1, v2, :cond_3f

    .line 157
    iget-object v3, p0, Lmobisocial/omlib/service/OmlibService$2;->this$0:Lmobisocial/omlib/service/OmlibService;

    const/4 v5, 0x1

    # invokes: Lmobisocial/omlib/service/OmlibService;->enablePushNotifications(Z)V
    invoke-static {v3, v5}, Lmobisocial/omlib/service/OmlibService;->access$000(Lmobisocial/omlib/service/OmlibService;Z)V

    .line 159
    :cond_3f
    monitor-exit v4

    .line 160
    return-void

    .line 152
    .end local v0    # "clusterChanged":Z
    .end local v1    # "currentlyInChina":Z
    .end local v2    # "generallyInChina":Z
    :cond_41
    const/4 v0, 0x0

    goto :goto_12

    .line 159
    :catchall_43
    move-exception v3

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_6 .. :try_end_45} :catchall_43

    throw v3
.end method
